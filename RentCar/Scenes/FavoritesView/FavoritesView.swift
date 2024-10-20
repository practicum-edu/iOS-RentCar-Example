//
//  FavoritesView.swift
//  RentCar
//
//

import SwiftUI

struct FavoritesView: View {
    @Binding var favoriteCars: [RentCar]
    @State private var showingAlert = false
    @State private var selectedCar: RentCar? = nil
    
    var body: some View {
        VStack {
            Text("Избранные автомобили")
                .font(.title)
                .padding()
            
            if (favoriteCars.filter { $0.isFavorite }).isEmpty {
                Text("Ваш список избранного пуст")
                    .foregroundColor(.gray)
                
                Spacer()
            }
            else {
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach($favoriteCars.filter({ $0.wrappedValue.isFavorite })) { offer in
                            VerticalCarCard(
                                offer: offer,
                                onRent: { offerToRent in
                                    selectedCar = offerToRent
                                    showingAlert = true
                                }
                            )
                        }
                    }
                }
            }
        }
        .padding()
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
