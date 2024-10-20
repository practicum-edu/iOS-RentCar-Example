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
                
                // Здесь добавим кнопку
            }
            
            HStack(alignment: .bottom) { ... }
        }
    }
}
