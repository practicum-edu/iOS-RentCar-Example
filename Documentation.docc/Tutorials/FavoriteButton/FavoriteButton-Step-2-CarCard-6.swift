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
                    ...
                }
                VStack(alignment: .leading, spacing: 16) {
                    ...
                }
            }
        }
    }
}
