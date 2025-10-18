//
//  routePoint.swift
//  RoadTripJourneyPro
//
//  Created by Валерия Пономарева on 17.10.2025.
//

import Foundation

print("🚕 RoadTripJourneyPro") // 🚕 RoadTripJourneyPro
print("🧭 RoadTripJourneyPro - Your smart travel assistant for road trips") // 🧭 RoadTripJourneyPro - Your smart travel assistant for road trips


enum FuelType {
    case ai92(price: Double)
    case ai95(price: Double)
    case ai98(price: Double)
    case diesel(price: Double)
}

struct GasStation {
    let name: String
    let isOnPath: Bool
    let city: String
    let adress: String
    let km: Double
    let coordinates: (lat: Double, lon: Double)
    let fuels: [FuelType]
    let isCoffeeAndWarmToilet: Bool
    let isWiFi: Bool
}

var gasStations = [
    GasStation(
        name: "Лукойл",
        isOnPath: true,
        city: "Ачинск",
        adress: "ул. Ленина, 123",
        km: 166.0,
        coordinates: (lat: 56.2810, lon: 90.5007),
        fuels: [.ai95(price: 61.5), .ai92(price: 58.0), .diesel(price: 65.2)],
        isCoffeeAndWarmToilet: true,
        isWiFi: true
    ),
    GasStation(
        name: "Роснефть",
        isOnPath: true,
        city: "Мариинск",
        adress: "пр. Мира, 45",
        km: 360.0,
        coordinates: (lat: 56.2139, lon: 87.7473),
        fuels: [.ai95(price: 61.3), .ai92(price: 57.8), .diesel(price: 65.0)],
        isCoffeeAndWarmToilet: true,
        isWiFi: false
    )
]
func printGasStations() {
    print("\n⛽ ЗАПРАВКИ НА МАРШРУТЕ (АИ-95):")
    for station in gasStations {
        // Ищем только АИ-95 в массиве топлив
        for fuel in station.fuels {
            if case .ai95(let price) = fuel {
                print("\n\(station.name) - \(station.city)")
                print("📍 Адрес: \(station.adress)")
                print("🎯 Км: \(station.km)")
                print("🛢️ АИ-95: \(price) руб/л 🟢")
                print("☕ Кофе/туалет: \(station.isCoffeeAndWarmToilet ? "✅" : "❌")")
                print("📶 Wi-Fi: \(station.isWiFi ? "✅" : "❌")")
            }
        }
    }
}
printGasStations()
/* ⛽ ЗАПРАВКИ НА МАРШРУТЕ (АИ-95):
 
 Лукойл - Ачинск
 📍 Адрес: ул. Ленина, 123
 🎯 Км: 166.0
 🛢️ АИ-95: 61.5 руб/л 🟢
 ☕ Кофе/туалет: ✅
 📶 Wi-Fi: ✅

 Роснефть - Мариинск
 📍 Адрес: пр. Мира, 45
 🎯 Км: 360.0
 🛢️ АИ-95: 61.3 руб/л 🟢
 ☕ Кофе/туалет: ✅
 📶 Wi-Fi: ❌    */
