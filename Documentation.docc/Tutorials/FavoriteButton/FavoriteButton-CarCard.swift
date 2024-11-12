import SwiftUI

struct CarCard: View {
    @Binding var offer: RentCar
    let onRent: (RentCar) ->  ()
    
    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 4) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(offer.car.name)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundStyle(Color.primary)
                    
                    Text(offer.car.type)
                        .font(.system(size: 14))
                        .foregroundStyle(Color.secondary)
                }
                
                Spacer()
                
                Button(
                    action: {
                        offer.isFavorite.toggle()
                    },
                    label: {
                        if offer.isFavorite {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(.red)
                                .padding(8)
                        }
                        else {
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(.secondary)
                                .padding(8)
                        }
                    }
                )
            }
            
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 20) {
                    Image(offer.car.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 200)
                        .padding(16)
                    
                    Text(offer.price)
                        .font(.system(size: 16, weight: .bold))
                        .foregroundStyle(Color.primary)
                }
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 16) {
                    SpecificationView(specification: offer.car.specifications, isVertical: true)
                    
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
