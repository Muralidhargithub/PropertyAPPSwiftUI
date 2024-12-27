//
//  VerifiedUserCard.swift
//  PropertyAPPSwiftUI
//
//  Created by Muralidhar reddy Kakanuru on 12/26/24.
//


import SwiftUI

struct VerifiedUserCard: View {
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: "checkmark.seal.fill")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .background(Color(.systemBlue).opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Become a verified user")
                    .font(.headline)
                Text("Build trust\nGet increased visibility\nUnlock Exclusive rewards")
                    .font(.caption)
                    .foregroundColor(.gray)
                Button("Get started.") {
                }
                .font(.caption)
                .foregroundColor(.blue)
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "arrow.right")
                    .foregroundColor(.black)
            }
        }
        .padding()
        .frame(width: 330, height: 140)
        .background(Color.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.1), lineWidth: 3)
        )
    }
}
