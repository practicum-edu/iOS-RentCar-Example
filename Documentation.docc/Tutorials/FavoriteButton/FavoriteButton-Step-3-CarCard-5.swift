import SwiftUI

struct CarCard: View {
    @Binding var offer: RentCar
    let onRent: (RentCar) ->  ()
    
    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 4) {
                ...
                
                Button(
                    action: { offer.isFavorite.toggle() },
                    label: {
                        if offer.isFavorite {
                            Image(systemName: "heart.fill").resizable().scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(.red)
                                .padding(8)
                        }
                        else {
                            Image(systemName: "heart").resizable().scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(.secondary)
                                .padding(8)
                        }
                    }
                )
            }
        }
    }
}
