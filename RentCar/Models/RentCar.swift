//
//  RentCar.swift
//  RentCar
//
//

import Foundation

struct RentCar: Identifiable {
    let id = UUID()
    let car: Car
    let price: String
    var isFavorite: Bool
    
    init(car: Car, price: String, isFavorite: Bool = false) {
        self.car = car
        self.price = price
        self.isFavorite = isFavorite
    }
}

extension RentCar {
    static let availableOffers: [RentCar] = [
        RentCar(car: Car(name: "Toyota Camry",
                         type: "Легковой",
                         image: "toyota_camry",
                         specifications: CarSpecification(gas: "60 л", drive: "Автомат", capacity: "5")),
                 price: "3000 руб/день"),
        
        RentCar(car: Car(name: "Nissan Qashqai",
                         type: "Кроссовер",
                         image: "nissan_qashqai",
                         specifications: CarSpecification(gas: "55 л", drive: "Механика", capacity: "5")),
                 price: "3500 руб/день"),
        
        RentCar(car: Car(name: "Volkswagen Tiguan",
                         type: "Кроссовер",
                         image: "volkswagen_tiguan",
                         specifications: CarSpecification(gas: "60 л", drive: "Автомат", capacity: "5")),
                 price: "4000 руб/день"),
        
        RentCar(car: Car(name: "Skoda Octavia",
                         type: "Легковой",
                         image: "skoda_octavia",
                         specifications: CarSpecification(gas: "50 л", drive: "Механика", capacity: "5")),
                 price: "2800 руб/день"),
        
        RentCar(car: Car(name: "Hyundai Santa Fe",
                         type: "Внедорожник",
                         image: "hyundai_santa_fe",
                         specifications: CarSpecification(gas: "70 л", drive: "Автомат", capacity: "5")),
                 price: "4500 руб/день"),
        
        RentCar(car: Car(name: "Kia Sportage",
                         type: "Кроссовер",
                         image: "kia_sportage",
                         specifications: CarSpecification(gas: "62 л", drive: "Механика", capacity: "5")),
                 price: "3200 руб/день"),
        
        RentCar(car: Car(name: "Ford Mustang",
                         type: "Спорткар",
                         image: "ford_mustang",
                         specifications: CarSpecification(gas: "60 л", drive: "Автомат", capacity: "4")),
                 price: "7000 руб/день"),
        
        RentCar(car: Car(name: "Renault Duster",
                         type: "Внедорожник",
                         image: "renault_duster",
                         specifications: CarSpecification(gas: "50 л", drive: "Механика", capacity: "5")),
                 price: "2500 руб/день")
    ]
}
