//
//  ChatsView.swift
//  PropertyAPPSwiftUI
//
//  Created by Muralidhar reddy Kakanuru on 12/26/24.
//


import SwiftUI

struct ChatsView: View {
    @StateObject private var viewModel = ChatsViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.chatNames) { chat in
                NavigationLink(destination: ChatDetailView(name: chat.name)) {
                    HStack {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 40, height: 40)
                            .overlay(Text(String(chat.name.prefix(1))) 
                                .font(.headline)
                                .foregroundColor(.white))
                        
                        Text(chat.name)
                            .font(.body)
                            .padding(.leading, 10)
                    }
                    .padding(.vertical, 5)
                }
            }
            .navigationTitle("Chats")
        }
    }
}
