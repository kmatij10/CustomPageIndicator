//
//  ContentView.swift
//  CustomPageIndicator
//
//  Created by Kristina Matijasic on 11.02.2024..
//

import SwiftUI

struct ContentView: View {
    @State var currentPage = 0
    var views = [
        PageView(title: "Screen 1", color: .purple),
        PageView(title: "Screen 2", color: .red),
        PageView(title: "Screen 3", color: .orange),
        PageView(title: "Screen 4", color: .yellow)
    ]

    var body: some View {
        ZStack {
            TabView(selection: $currentPage) {
                ForEach(views.indices, id: \.self) { index in
                    views[index]
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

            PageIndicatorView(currentPage: $currentPage, views: views)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
