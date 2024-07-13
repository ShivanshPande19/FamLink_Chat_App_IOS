//
//  ChatMessage.swift
//  FamLink_Chat_App
//
//  Created by SHIVANSH PANDE on 13/07/24.
//

import Foundation
import FirebaseFirestoreSwift

struct ChatMessage: Codable, Identifiable {
    @DocumentID var id: String?
    let fromId, toId, text: String
    let timestamp: Date
}

