import SwiftUI

struct CarCard: View {
    @Binding var offer: RentCar
    let onRent: (RentCar) ->  ()
    
    var body: some View {
        VStack(spacing: 16) {
            ...
            
            HStack(alignment: .bottom) {
                ...
                VStack(alignment: .leading, spacing: 16) {
                    ...
                    
                    Button(action: { onRent(offer) }, label: { Text("Арендовать") })
                }
            }
        }
    }
}
