import SwiftUI

struct CarCard {
    @Binding var offer: RentCar
    let onRent: (RentCar) ->  ()
    
    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 4) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(offer.car.name).font(.system(size: 20, weight: .bold))
                        .foregroundStyle(Color.primary)
                    Text(offer.car.type).font(.system(size: 14))
                        .foregroundStyle(Color.secondary)
                }
                
                Spacer()
            }
            
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 20) {
                    Image(offer.car.image)
                    Text(offer.price).font(.system(size: 16, weight: .bold))
                }
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 16) {
                    SpecificationView(specification: offer.car.specifications, isVertical: true)
                    
                    Button(action: { onRent(offer) }, label: { Text("Арендовать") })
                }
            }
        }
        .padding(16)
        .background(RoundedRectangle(cornerRadius: 20).fill(.ultraThinMaterial))
    }
}
