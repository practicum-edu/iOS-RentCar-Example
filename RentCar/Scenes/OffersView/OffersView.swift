//
//  OffersView.swift
//  RentCar
//
//

import SwiftUI

struct OffersView: View {
    @Binding var rentCars: [RentCar]
    @State private var showingAlert = false
    @State private var selectedCar: RentCar? = nil
    @State private var searchText: String = ""
    @State private var searchIsActive = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach($rentCars) { offer in
                        CarCard(
                            offer: offer,
                            onRent: { offerToRent in
                                selectedCar = offerToRent
                                showingAlert = true
                            }
                        )
                    }
                }
            }
            .padding()
            .scrollClipDisabled()
            .scrollIndicators(.hidden)
        }
        .alert(isPresented: $showingAlert) {
            if let selectedCar {
                Alert(
                    title: Text("Успех!"),
                    message: Text("Вы успешно арендовали автомобиль \(selectedCar.car.name)!"),
                    dismissButton: .default(Text("Отлично!"))
                )
            }
            else {
                Alert(title: Text("Произошла ошибка. Машина уже недоступна для аренды"))
            }
        }
    }
}
