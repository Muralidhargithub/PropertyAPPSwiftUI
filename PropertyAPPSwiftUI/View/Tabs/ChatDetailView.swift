//
//  ChatDetailView.swift
//  PropertyAPPSwiftUI
//
//  Created by Muralidhar reddy Kakanuru on 12/26/24.
//


import SwiftUI

struct ChatDetailView: View {
    let name: String
    @State private var message: String = ""
    @StateObject private var viewModel = ChatDetailViewModel()

    var body: some View {
        VStack {
            // Messages Area
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    ForEach(viewModel.messages, id: \.self) { message in
                        HStack {
                            if message.contains("You:") {
                                Spacer()
                                Text(message.replacingOccurrences(of: "You: ", with: ""))
                                    .padding()
                                    .background(Color.blue.opacity(0.2))
                                    .cornerRadius(10)
                                    .foregroundColor(.black)
                                    .frame(maxWidth: 250, alignment: .trailing)
                            } else {
                                Text(message)
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(10)
                                    .foregroundColor(.black)
                                    .frame(maxWidth: 250, alignment: .leading)
                                Spacer()
                            }
                        }
                    }
                }
                .padding()
            }
            
            Divider()
            
            // Input Box
            HStack {
                TextField("Type a message...", text: $message)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
                
                Button(action: {
                    viewModel.sendMessage(message)
                    message = ""
                }) {
                    Image(systemName: "paperplane.fill")
                        .font(.system(size: 24))
                        .foregroundColor(.blue)
                        .padding()
                }
            }
            .padding()
        }
        .navigationTitle(name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
