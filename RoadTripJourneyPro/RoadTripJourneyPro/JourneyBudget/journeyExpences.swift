//
//  journeyExpences.swift
//  RoadTripJourneyPro
//
//  Created by Валерия Пономарева on 19.10.2025.
//

import Foundation

struct Expense {
    let category: String        // 🆕 "Топливо", "Отель", "Еда"
    let amount: Double         // 🆕 Сумма расхода
    let description: String    // 🆕 "Заправка в Ачинске", "Ужин в кафе"
    let date: Date             // 🆕 Дата расхода
}

// БАЗА РАСХОДОВ (примерные данные)
var expenses: [Expense] = [
    Expense(
        category: "⛽ Топливо",
        amount: 2500.0,
        description: "Заправка в Ачинске",
        date: Date()
    ),
    Expense(
        category: "⛽ Топливо",
        amount: 1800.0,
        description: "Заправка в Мариинске",
        date: Date()
    ),
    Expense(
        category: "🏨 Отель",
        amount: 3500.0,
        description: "Ночлег в Ачинске",
        date: Date()
    )
]

// Функция подсчета общей суммы
func calculateTotal() -> Double {
    return expenses.reduce(0) { $0 + $1.amount }
}

// Функция вывода отчета
func printExpenses() {
    print("\n💰 РАСХОДЫ НА ПОЕЗДКУ:")
    for expense in expenses {
        print("\(expense.category): \(expense.amount) руб - \(expense.description)")
    }
    print("📊 ИТОГО: \(calculateTotal()) руб")
}
