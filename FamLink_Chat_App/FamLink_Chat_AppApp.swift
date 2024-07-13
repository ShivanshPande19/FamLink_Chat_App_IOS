import SwiftUI
import Firebase

@main
struct Famlink_Chat_App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    @State var isUserCurrentlyLoggedOut = FirebaseManager.shared.auth.currentUser?.uid == nil

    var body: some Scene {
        WindowGroup {
            if isUserCurrentlyLoggedOut {
                LoginView(didCompleteLoginProcess: {
                    self.isUserCurrentlyLoggedOut = false
                })
            } else {
                MainMessagesView()
            }
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        if FirebaseApp.app() == nil {
            FirebaseApp.configure()
        }
        return true
    }
}
