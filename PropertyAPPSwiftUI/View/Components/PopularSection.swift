//
//  PopularSection.swift
//  PropertyAPPSwiftUI
//
//  Created by Muralidhar reddy Kakanuru on 12/26/24.
//


import SwiftUI

struct PopularSection: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Popular in Residential for Rent")
                    .font(.headline)
                Spacer()
                Button(action: {}) {
                    Image(systemName: "arrow.right")
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(0..<5, id: \.self) { i in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(.systemGray6))
                            .frame(width: 170, height: 100)
                            .overlay(
                                Image("house\(i)")
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            )
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
