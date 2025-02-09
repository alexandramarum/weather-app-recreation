//
//  WeekView.swift
//  Weatherapp
//
//  Created by Alexandra Marum on 2/8/25.
//

import SwiftUI

struct WeekView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack(spacing: 5) {
                    Image(systemName: "calendar")
                    Text("10-DAY FORECAST")
                }
                .bold()
                .foregroundStyle(.white.opacity(0.8))
                .font(.subheadline)
                
                ForEach(WeekRowModel.example) { row in
                    WeekRowView(week: row)
                }
            }
            .padding()
            .background(.blue.opacity(0.2), in: RoundedRectangle(cornerRadius: 20.0))
            .foregroundStyle(.white)
            
        }
    }
}

struct WeekRowView: View {
    var week: WeekRowModel

    var body: some View {
        HStack {
            Text(week.day)
                .frame(width: 80, alignment: .leading)
                .bold()
            if let secondaryColor = week.secondaryColor {
                Image(systemName: week.icon)
                    .foregroundStyle(week.color, secondaryColor)
                    .frame(width: 50)
            } else {
                Image(systemName: week.icon)
                    .foregroundStyle(week.color)
                    .frame(width: 50)
            }
            TemparatureBar(low: week.low, high: week.high)
        }
        .font(.title3)
        .frame(width: 350)
    }
}

struct TemparatureBar: View {
    var low: String
    var high: String

    var body: some View {
        HStack(spacing: 5) {
            Text("\(low)°")
                .frame(width: 50, alignment: .trailing)
                .opacity(0.7)
            ZStack {
                RoundedRectangle(cornerRadius: 20.0)
                    .foregroundStyle(.blue.opacity(0.3))
                    .frame(width: 80, height: 5)
                HStack {
                    RoundedRectangle(cornerRadius: 20.0)
                        .foregroundStyle(.tempBar.opacity(0.5))
                        .frame(width: CGFloat(Int.random(in: 10..<50)), height: 5)
                        .offset(x: CGFloat(Int.random(in: -15..<15)))
                }
            }
            .bold()
            Text("\(high)°")
                .frame(width: 50, alignment: .leading)
        }
    }
}

#Preview {
    WeekView()
}
