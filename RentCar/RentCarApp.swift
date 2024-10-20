//
//  RentCarApp.swift
//  RentCar
//
//

import SwiftUI

@main
struct RentCarApp: App {
    @State var offers: [RentCar] = RentCar.availableOffers
    
    var body: some Scene {
        WindowGroup {
            TabView {
                OffersView(rentCars: $offers)
                    .tabItem {
                        Label("Машины", systemImage: "car")
                    }

                FavoritesView(favoriteCars: $offers)
                    .tabItem {
                        Label("Избранное", systemImage: "heart")
                    }
            }
        }
    }
}
