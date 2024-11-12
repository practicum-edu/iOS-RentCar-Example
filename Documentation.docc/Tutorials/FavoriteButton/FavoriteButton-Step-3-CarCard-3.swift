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
                        // Изображение сердца: заполненное или пустое
                    }
                )
            }
        }
    }
}
