//
//  Models.swift
//  Weatherapp
//
//  Created by Alexandra Marum on 2/9/25.
//

import Foundation
import SwiftUI

struct WeekRowModel: Identifiable {
    var id = UUID()
    var day: String
    var icon: String
    var color: Color
    var secondaryColor: Color?
    var low: String
    var high: String
}

extension WeekRowModel {
    static var example: [WeekRowModel] = [
        WeekRowModel(day: "Today", icon: "cloud.fill", color: .white, low: "45", high: "57"),
        WeekRowModel(day: "Mon", icon: "sun.max.fill", color: .yellow, low: "54", high: "70"),
        WeekRowModel(day: "Tue", icon: "cloud.drizzle.fill", color: .white, secondaryColor: .blue, low: "43", high: "52"),
        WeekRowModel(day: "Wed", icon: "cloud.heavyrain.fill", color: .white, secondaryColor: .blue, low: "33", high: "45"),
        WeekRowModel(day: "Thu", icon: "sun.max.fill", color: .yellow, low: "28", high: "32"),
        WeekRowModel(day: "Fri", icon: "cloud.fill", color: .white, low: "25", high: "33"),
        WeekRowModel(day: "Sat", icon: "snowflake", color: .white, low: "23", high: "30"),
        WeekRowModel(day: "Sun", icon: "snowflake", color: .white, low: "21", high: "29"),
        WeekRowModel(day: "Mon", icon: "sun.max.fill", color: .yellow, low: "30", high: "43"),
        WeekRowModel(day: "Tue", icon: "cloud.sun.fill", color: .white, secondaryColor: .yellow, low: "40", high: "53")
    ]
}

struct DayRowModel: Identifiable {
    var id = UUID()
    var time: String
    var icon: String
    var color: Color
    var secondaryColor: Color?
    var temp: String
}

extension DayRowModel {
    static var example: [DayRowModel] = [
        DayRowModel(time: "Now", icon: "sun.max.fill", color: .yellow, temp: "54"),
        DayRowModel(time: "1PM", icon: "sun.max.fill", color: .yellow, temp: "55"),
        DayRowModel(time: "2PM", icon: "sun.max.fill", color: .yellow, temp: "57"),
        DayRowModel(time: "3PM", icon: "cloud.sun.fill", color: .white, secondaryColor: .yellow, temp: "53"),
        DayRowModel(time: "4PM", icon: "sun.max.fill", color: .yellow, temp: "51"),
        DayRowModel(time: "4:49PM", icon: "sunset", color: .white, secondaryColor: .yellow, temp: "50"),
        DayRowModel(time: "5PM", icon: "moon.fill", color: .white, temp: "47"),
        DayRowModel(time: "6PM", icon: "moon.fill", color: .white, temp: "45"),
    ]
}
