//
//  ChatUser.swift
//  FamLink_Chat_App
//
//  Created by SHIVANSH PANDE on 13/07/24.
//

import FirebaseFirestoreSwift

struct ChatUser: Codable, Identifiable {
    @DocumentID var id: String?
    let uid, email, profileImageUrl: String
}

