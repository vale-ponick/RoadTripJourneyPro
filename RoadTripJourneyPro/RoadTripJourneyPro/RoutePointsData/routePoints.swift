//
//  routePoints.swift
//  RoadTripJourneyPro
//
//  Created by Валерия Пономарева on 17.10.2025.
//

import Foundation

struct RoutePoint {
    let name: String
    let km: Double
    let coordinates: (lat: Double, lon: Double) // кортеж с координатами
    let description: String // описание/коммент
}

var routePoints = [
    RoutePoint(name: "Памяти 13 борцов", km: 49.0, coordinates: (lat: 56.0153, lon: 92.8932), description: ""),
    RoutePoint(name: "Ачинск", km: 166.0, coordinates: (lat: 56.2810, lon: 90.5007), description: "⛽ Первая обязательная заправка"),
    RoutePoint(name: "Боготол", km: 237.0, coordinates: (lat: 56.2073, lon: 89.5300), description: ""),
    RoutePoint(name: "Акимо-Анненка", km: 292.0, coordinates: (lat: 56.2139, lon: 87.7473), description: "📍 Смена региона: Красноярский край → Кемеровская область"),
    RoutePoint(name: "Мариинск", km: 360.0, coordinates: (lat: 56.2139, lon: 87.7473), description: "⛽ ЗАПРАВКА ДО ПОЛНОГО! Дальше пустая трасса"),
    RoutePoint(name: "Ишим", km: 489.0, coordinates: (lat: 56.1139, lon: 85.0473), description: "📍 Смена региона: Кемеровская область → Томская область"),
    RoutePoint(name: "Томск", km: 583.0, coordinates: (lat: 56.4846, lon: 84.9476)ы, description: "🏁 Финиш")

]

func printInfo(arrayPoints: [RoutePoint]) -> String {
    var result = ""
    for point in arrayPoints {
        result += "\n 🏘️ \(point.name) \(point.km) \(point.coordinates) \(point.description)"
    }
    return result
}
let result = printInfo(arrayPoints: routePoints)
// print(result)



