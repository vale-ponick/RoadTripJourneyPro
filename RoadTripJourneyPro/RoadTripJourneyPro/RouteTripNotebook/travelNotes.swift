//
//  travelNotes.swift
//  RoadTripJourneyPro
//
//  Created by Валерия Пономарева on 17.10.2025.
//

import Foundation

enum RoadEvent {
    case speedCamera(maxSpeed: Int) // камера с ограничением скорости
    case roadWorks //дорожные работы
    case badRoad // плохая дорога
    case heavyTrucks // много фур
}
struct RoadNote {
    let nameTrack: String // трасса
    let km: Double // километр трассы
    let event: RoadEvent // тип события
    let comment: String // комментарии, сообщения
}

var roadTripNotes: [RoadNote] = []

roadTripNotes.append(RoadNote(
    nameTrack: "Красноярск-Томск",
    km: 166.0,
    event: .speedCamera(maxSpeed: 60),
    comment: "📹 Камера перед Ачинскм на 164 км"
))

roadTripNotes.append(RoadNote(
    nameTrack: "Красноярск-Томск",
    km: 360.0,
    event: .heavyTrucks,
    comment: "🚛🚛🚛 Много фур до Мариинска!"
))

func printRoadNotes() {
    print("\n📝 ДОРОЖНЫЕ ЗАМЕТКИ:")
    for note in roadTripNotes {
        print("📍 Км \(note.km): \(note.comment)")
    }
}
printRoadNotes()

/* 📝 ДОРОЖНЫЕ ЗАМЕТКИ:
📍 Км 166.0: Камера перед Ачинскм на 164 км
📍 Км 360.0: Много фур до Мариинска! */
