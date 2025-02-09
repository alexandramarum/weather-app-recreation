//
//  ContentView.swift
//  Weatherapp
//
//  Created by Alexandra Marum on 2/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .cyan, .white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            ScrollView(showsIndicators: false) {
                HeaderView()
                DayView()
                WeekView()
            }
            .foregroundStyle(.white)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
