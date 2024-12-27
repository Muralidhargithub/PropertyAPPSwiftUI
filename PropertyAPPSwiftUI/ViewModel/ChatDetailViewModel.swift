//
//  ChatDetailViewModel.swift
//  PropertyAPPSwiftUI
//
//  Created by Muralidhar reddy Kakanuru on 12/26/24.
//


import Foundation

class ChatDetailViewModel: ObservableObject {
    @Published var messages: [String] = ["Hello, how are you?", "I'm doing great! What about you?"]
    
    func sendMessage(_ message: String) {
        guard !message.isEmpty else { return }
        messages.append("You: \(message)")
    }
}
