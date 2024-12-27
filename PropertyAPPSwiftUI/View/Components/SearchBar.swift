//
//  SearchBar.swift
//  PropertyAPPSwiftUI
//
//  Created by Muralidhar reddy Kakanuru on 12/26/24.
//


import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "building.2.fill")
                    .foregroundColor(.red)
                TextField("Search for property for rent", text: .constant(""))
            }
            .padding()
            .background(Color(.white))
            .cornerRadius(30)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.gray, lineWidth: 1)
            )
            
            Image(systemName: "bell")
                .foregroundColor(.gray)
                .font(.system(size: 25, weight: .bold))
        }
        .padding(.horizontal)
        .padding(.top, 40)
    }
}

