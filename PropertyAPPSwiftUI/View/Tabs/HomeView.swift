//
//  HomeView.swift
//  PropertyAPPSwiftUI
//
//  Created by Muralidhar reddy Kakanuru on 12/26/24.
//


import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    SearchBar()
                    CategoriesGrid()
                    VerifiedUserCard()
                    PopularSection()
                }
                .navigationTitle("Home")
                .padding(.bottom)
            }
        }
    }
}

