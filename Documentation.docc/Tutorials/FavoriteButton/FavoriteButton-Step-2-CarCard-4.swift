import SwiftUI

struct CarCard: View {
    @Binding var offer: RentCar
    let onRent: (RentCar) ->  ()
    
    var body: some View {
        VStack(spacing: 16) {
            ...
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 20) {
                    Image(offer.car.image)
                    Text(offer.price)
                }
                
                VStack(alignment: .leading, spacing: 16) {
                    SpecificationView(specification: offer.car.specifications, isVertical: true)
                    
                    Button(action: { onRent(offer) }, label: { Text("Арендовать") })
                }
            }
        }
    }
}
