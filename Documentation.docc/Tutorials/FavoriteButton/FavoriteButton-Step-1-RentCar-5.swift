struct RentCar: Identifiable {
    let id = UUID()
    let car: Car
    let price: String
    var isFavorite: Bool
}
