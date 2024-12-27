//
//  ContentView.swift
//  PropertyAPPSwiftUI
//
//  Created by Muralidhar reddy Kakanuru on 12/26/24.
//




//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        TabView {
//            HomeView()
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//
//            FavoritesView()
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Favorites")
//                }
//
//            PlaceAdView()
//                .tabItem {
//                    Image(systemName: "plus.circle.fill")
//                    Text("Place Ad")
//                }
//
//            ChatsView()
//                .tabItem {
//                    Image(systemName: "bubble.left.and.bubble.right.fill")
//                    Text("Chats")
//                }
//
//            MenuView()
//                .tabItem {
//                    Image(systemName: "line.3.horizontal")
//                    Text("Menu")
//                }
//        }
//    }
//}
//
//struct HomeView: View {
//    var body: some View {
//        NavigationView {
//            ScrollView {
//                VStack(spacing: 20) {
//                    SearchBar()
//                    CategoriesGrid()
//                    VerifiedUserCard()
//                    PopularSection()
//                }
//                .navigationTitle("Home")
//                .padding(.bottom)
//            }
//        }
//    }
//}
//
//struct FavoritesView: View {
//    var body: some View {
//        ScrollView {
//            VStack {
//                Text("Favorites")
//                    .font(.largeTitle)
//                Spacer()
//            }
//        }
//    }
//}
//
//struct PlaceAdView: View {
//    var body: some View {
//        ScrollView {
//            VStack {
//                Text("Place an Ad")
//                    .font(.largeTitle)
//                Spacer()
//            }
//        }
//    }
//}
//
//// Chat tab with navigation to individual chat views
//struct ChatsView: View {
//    let chatNames = ["Shailesh", "Dharma", "Anusha", "Chandra"]
//    
//    var body: some View {
//        NavigationView {
//            List(chatNames, id: \.self) { name in
//                NavigationLink(destination: ChatDetailView(name: name)) {
//                    HStack {
//                        Circle()
//                            .fill(Color.blue)
//                            .frame(width: 40, height: 40)
//                            .overlay(Text(String(name.prefix(1))) // First letter of name
//                                .font(.headline)
//                                .foregroundColor(.white))
//                        
//                        Text(name)
//                            .font(.body)
//                            .padding(.leading, 10)
//                    }
//                    .padding(.vertical, 5)
//                }
//            }
//            .navigationTitle("Chats")
//        }
//    }
//}
//
//// Detailed chat view for an individual user
//struct ChatDetailView: View {
//    let name: String
//    @State private var message: String = ""
//    @State private var messages: [String] = ["Hello , how are you?", "I'm doing great! What about you?"]
//
//    var body: some View {
//        VStack {
//            // Messages Area
//            ScrollView {
//                VStack(alignment: .leading, spacing: 15) {
//                    ForEach(messages, id: \.self) { message in
//                        HStack {
//                            if message.contains("You:") {
//                                Spacer()
//                                Text(message.replacingOccurrences(of: "You: ", with: ""))
//                                    .padding()
//                                    .background(Color.blue.opacity(0.2))
//                                    .cornerRadius(10)
//                                    .foregroundColor(.black)
//                                    .frame(maxWidth: 250, alignment: .trailing)
//                            } else {
//                                Text(message)
//                                    .padding()
//                                    .background(Color.gray.opacity(0.2))
//                                    .cornerRadius(10)
//                                    .foregroundColor(.black)
//                                    .frame(maxWidth: 250, alignment: .leading)
//                                Spacer()
//                            }
//                        }
//                    }
//                }
//                .padding()
//            }
//            
//            Divider()
//            
//            // Input Box
//            HStack {
//                TextField("Type a message...", text: $message)
//                    .padding()
//                    .background(Color(.systemGray6))
//                    .cornerRadius(20)
//                
//                Button(action: {
//                    if !message.isEmpty {
//                        messages.append("You: \(message)")
//                        message = ""
//                    }
//                }) {
//                    Image(systemName: "paperplane.fill")
//                        .font(.system(size: 24))
//                        .foregroundColor(.blue)
//                        .padding()
//                }
//            }
//            .padding()
//        }
//        .navigationTitle(name)
//        .navigationBarTitleDisplayMode(.inline)
//    }
//}
//
//struct MenuView: View {
//    var body: some View {
//        ScrollView {
//            VStack {
//                Text("Menu")
//                    .font(.largeTitle)
//                Spacer()
//            }
//        }
//    }
//}
//
//struct SearchBar: View {
//    var body: some View {
//        HStack {
//            HStack {
//                Image(systemName: "building.2.fill")
//                    .foregroundColor(.red)
//                TextField("Search for property for rent", text: .constant(""))
//            }
//            .padding()
//            .background(Color(.white))
//            .cornerRadius(30)
//            .overlay(
//                RoundedRectangle(cornerRadius: 30)
//                    .stroke(Color.gray, lineWidth: 1)
//            )
//            
//            Image(systemName: "bell")
//                .foregroundColor(.gray)
//                .font(.system(size: 25, weight: .bold))
//        }
//        .padding(.horizontal)
//        .padding(.top, 40)
//    }
//}
//
//struct CategoriesGrid: View {
//    var body: some View {
//        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 20) {
//            ForEach(Category.allCases, id: \.self) { category in
//                VStack {
//                    Image(systemName: category.icon)
//                        .font(.largeTitle)
//                        .foregroundColor(.red)
//                    Text(category.rawValue)
//                        .font(.caption)
//                        .multilineTextAlignment(.center)
//                }
//                .frame(width: 110, height: 100)
//                .background(Color.white)
//                .cornerRadius(5)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 10)
//                        .stroke(Color.gray.opacity(0.1), lineWidth: 3)
//                )
//            }
//        }
//        .padding(.horizontal)
//    }
//}
//
//struct VerifiedUserCard: View {
//    var body: some View {
//        HStack(spacing: 10) {
//            Image(systemName: "checkmark.seal.fill")
//                .font(.largeTitle)
//                .foregroundColor(.blue)
//                .frame(width: 100, height: 100)
//                .background(Color(.systemBlue).opacity(0.1))
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//            
//            VStack(alignment: .leading, spacing: 10) {
//                Text("Become a verified user")
//                    .font(.headline)
//                Text("Build trust\nGet increased visibility\nUnlock Exclusive rewards")
//                    .font(.caption)
//                    .foregroundColor(.gray)
//                Button("Get started.") {
//                    // Button action
//                }
//                .font(.caption)
//                .foregroundColor(.blue)
//            }
//            
//            Spacer()
//            
//            Button(action: {}) {
//                Image(systemName: "arrow.right")
//                    .foregroundColor(.black)
//            }
//        }
//        .padding()
//        .frame(width: 330, height: 140)
//        .background(Color.white)
//        .cornerRadius(10)
//        .overlay(
//            RoundedRectangle(cornerRadius: 10)
//                .stroke(Color.gray.opacity(0.1), lineWidth: 3)
//        )
//    }
//}
//
//struct PopularSection: View {
//    var body: some View {
//        VStack(alignment: .leading) {
//            HStack {
//                Text("Popular in Residential for Rent")
//                    .font(.headline)
//                Spacer()
//                Button(action: {}) {
//                    Image(systemName: "arrow.right")
//                        .foregroundColor(.black)
//                }
//            }
//            .padding(.horizontal)
//            
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack(spacing: 10) {
//                    ForEach(0..<5, id: \.self) { i in
//                        RoundedRectangle(cornerRadius: 10)
//                            .fill(Color(.systemGray6))
//                            .frame(width: 170, height: 100)
//                            .overlay(
//                                Image("house\(i)")
//                                    .resizable()
//                                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                            )
//                    }
//                }
//                .padding(.horizontal)
//            }
//        }
//    }
//}
//
//enum Category: String, CaseIterable {
//    case propertyForRent = "Property \nfor Rent"
//    case propertyForSale = "Property \nfor Sale"
//    case offPlanProperties = "Off-Plan \nProperties"
//    case roomsForRent = "Rooms for Rent"
//    case motors = "Motors"
//    case jobs = "Jobs"
//    case classifieds = "Classifieds"
//    case furnitureAndGarden = "Furniture \n& Garden"
//    case community = "Community"
//    
//    var icon: String {
//        switch self {
//        case .propertyForRent: return "building.2.fill"
//        case .propertyForSale: return "house.fill"
//        case .offPlanProperties: return "house.circle.fill"
//        case .roomsForRent: return "door.right.hand.open"
//        case .motors: return "car.fill"
//        case .jobs: return "briefcase.fill"
//        case .classifieds: return "rectangle.stack.fill"
//        case .furnitureAndGarden: return "leaf.fill"
//        case .community: return "person.2.fill"
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            FavoritesView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                }

            PlaceAdView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("Place Ad")
                }

            ChatsView() 
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                    Text("Chats")
                }

            MenuView()
                .tabItem {
                    Image(systemName: "line.3.horizontal")
                    Text("Menu")
                }
        }
    }
}
