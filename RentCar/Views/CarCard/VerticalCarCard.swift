//
//  VerticalCarCard.swift
//  RentCar
//
//

import Foundation
import SwiftUI

struct VerticalCarCard: View {
    @Binding var offer: RentCar
    let onRent: (RentCar) ->  ()
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            HStack(alignment: .top, spacing: 4) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(offer.car.name)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundStyle(Color.primary)
                    
                    Text(offer.car.type)
                        .font(.system(size: 14))
                        .foregroundStyle(Color.secondary)
                    
                    
                    SpecificationView(specification: offer.car.specifications, isVertical: true)
                }
                
                Spacer()
              
                VStack {
                    Image(offer.car.image)
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(x: -1, y: 1)
                        .frame(maxWidth: 200)
                        .padding(16)
                    
                    Button(
                        action: { onRent(offer) },
                        label: {
                            Text("Арендовать")
                                .foregroundStyle(.white)
                                .padding(8)
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.blue)
                                )
                        }
                    )
                    
                    Text(offer.price)
                        .font(.system(size: 13, weight: .bold))
                        .foregroundStyle(Color.primary)
                }
                
            }
        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.ultraThinMaterial)
        )
    }
}

#Preview {
    VerticalCarCard(
        offer: Binding.constant(
            RentCar(
                car: Car(
                    name: "CR - V",
                    type: "SUV",
                    image: "ford_mustang",
                    specifications: CarSpecification(
                        gas: "80L",
                        drive: "Manual",
                        capacity: "6 People"
                    )
                ),
                price: "$80.00/ day",
                isFavorite: true
            )
        ),
        onRent: { _ in }
    )
}
