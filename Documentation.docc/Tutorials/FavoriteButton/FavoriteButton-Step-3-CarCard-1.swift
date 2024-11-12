import SwiftUI

struct CarCard: View {
    @Binding var offer: RentCar
    let onRent: (RentCar) ->  ()
    
    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 4) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(offer.car.name)
                    Text(offer.car.type)
                }
                
                Spacer()
                
                // Здесь добавим кнопку
            }
            
            HStack(alignment: .bottom) { ... }
        }
    }
}
