//
//  DayView.swift
//  Weatherapp
//
//  Created by Alexandra Marum on 2/8/25.
//

import SwiftUI

struct DayView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 5) {
                Image(systemName: "clock")
                Text("HOURLY FORECAST")
            }
            .bold()
            .foregroundStyle(.white.opacity(0.8))
            .font(.subheadline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 28) {
                    ForEach(DayRowModel.example) { row in
                        DayRowView(day: row)
                    }
                }
            }
        }
        .padding()
        .background(.blue.opacity(0.2), in: RoundedRectangle(cornerRadius: 20.0))
        .foregroundStyle(.white)
    }
}

struct DayRowView: View {
    var day: DayRowModel
    
    var body: some View {
        VStack(spacing: 10) {
            Text(day.time)
            if let secondaryColor = day.secondaryColor {
                Image(systemName: day.icon)
                    .foregroundStyle(day.color, secondaryColor)
                    .font(.title2)
            } else {
                Image(systemName: day.icon)
                    .foregroundStyle(day.color)
                    .font(.title2)
            }
            Text("\(day.temp)°")
                .font(.title3)
        }
        .bold()
    }
}

#Preview {
    DayView()
}
