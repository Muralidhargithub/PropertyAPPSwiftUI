//
//  ChatsViewModel.swift
//  PropertyAPPSwiftUI
//
//  Created by Muralidhar reddy Kakanuru on 12/26/24.
//


import Foundation

class ChatsViewModel: ObservableObject {
    @Published var chatNames: [Chat] = [
        Chat(name: "Shailesh"),
        Chat(name: "Dharma"),
        Chat(name: "Anusha"),
        Chat(name: "Chandra")
    ]
}