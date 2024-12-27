//
//  CategoriesGrid.swift
//  PropertyAPPSwiftUI
//
//  Created by Muralidhar reddy Kakanuru on 12/26/24.
//


import SwiftUI

struct CategoriesGrid: View {
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 20) {
            ForEach(Category.allCases, id: \.self) { category in
                VStack {
                    Image(systemName: category.icon)
                        .font(.largeTitle)
                        .foregroundColor(.red)
                    Text(category.rawValue)
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                .frame(width: 110, height: 100)
                .background(Color.white)
                .cornerRadius(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.1), lineWidth: 3)
                )
            }
        }
        .padding(.horizontal)
    }
}

enum Category: String, CaseIterable {
    case propertyForRent = "Property \nfor Rent"
    case propertyForSale = "Property \nfor Sale"
    case offPlanProperties = "Off-Plan \nProperties"
    case roomsForRent = "Rooms for Rent"
    case motors = "Motors"
    case jobs = "Jobs"
    case classifieds = "Classifieds"
    case furnitureAndGarden = "Furniture \n& Garden"
    case community = "Community"
    
    var icon: String {
        switch self {
        case .propertyForRent: return "building.2.fill"
        case .propertyForSale: return "house.fill"
        case .offPlanProperties: return "house.circle.fill"
        case .roomsForRent: return "door.right.hand.open"
        case .motors: return "car.fill"
        case .jobs: return "briefcase.fill"
        case .classifieds: return "rectangle.stack.fill"
        case .furnitureAndGarden: return "leaf.fill"
        case .community: return "person.2.fill"
        }
    }
}
