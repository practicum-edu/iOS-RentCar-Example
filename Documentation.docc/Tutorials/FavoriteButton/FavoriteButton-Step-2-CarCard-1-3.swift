import SwiftUI

struct CarCard: View {
    @Binding var offer: RentCar
    let onRent: (RentCar) ->  ()
    
    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 4) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(offer.car.name)
                    ...
                }
                
                Spacer()
            }
            
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 20) {
                    Image(offer.car.image)
                    ...
                }
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 16) {
                    Button(action: { onRent(offer) }, label: { Text("Арендовать") })
                }
            }
        }
    }
}
