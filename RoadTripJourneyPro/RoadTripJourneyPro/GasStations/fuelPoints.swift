//
//  fuelPoints.swift
//  RoadTripJourneyPro
//
//  Created by Валерия Пономарева on 17.10.2025.
//

import Foundation

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

func printGasStations() {
    print("\n⛽ ЗАПРАВКИ НА МАРШРУТЕ (АИ-95):")
    for station in gasStations {
        // Ищем только АИ-95 в массиве топлив
        for fuel in station.fuels {
            if case .ai95(let price) = fuel {
                print("\n\(station.name) - \(station.city)")
                print("📍 Адрес: \(station.address)")
                print("🎯 Км: \(station.km)")
                print("🛢️ АИ-95: \(price) руб/л 🟢")
                print("☕ Кофе/туалет: \(station.isCoffeeAndWarmToilet ? "✅" : "❌")")
                print("📶 Wi-Fi: \(station.isWiFi ? "✅" : "❌")")
            }
        }
    }
}
