//
//  HeaderView.swift
//  Weatherapp
//
//  Created by Alexandra Marum on 2/8/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                Text("Chapel Hill")
                    .font(.largeTitle)
                Text("55°")
                    .font(.system(size: 100))
                    .padding(.leading, 30)
                    .fontWeight(.thin)
                VStack {
                    Text("Sunny")
                        .opacity(0.8)
                    HStack{
                        Text("H:57°")
                        Text("L:45°")
                    }
                }
                .font(.title2)
            }
            .padding(.bottom, 40)
        }
    }
}

#Preview {
    HeaderView()
}
