//
//  PageView.swift
//  CustomPageIndicator
//
//  Created by Kristina Matijasic on 11.02.2024..
//

import SwiftUI

struct PageView: View {
    let title: String
    let color: Color

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text(title)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(color)
    }
}
