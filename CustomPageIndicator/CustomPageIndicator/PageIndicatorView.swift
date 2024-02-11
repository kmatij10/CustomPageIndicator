//
//  PageIndicatorView.swift
//  CustomPageIndicator
//
//  Created by Kristina Matijasic on 11.02.2024..
//

import SwiftUI

struct PageIndicatorView: View {
    @Binding var currentPage: Int
    let views: [PageView]

    private let pageIndicatorDefaultSize: CGFloat = 7
    private let pageIndicatorSelectedWidth: CGFloat = 20

    var body: some View {
        VStack {
            Spacer()
            HStack(spacing: 15) {
                ForEach(views.indices, id: \.self) { index in
                    Capsule()
                        .fill(Color.white)
                        .frame(width: getWidthForIndicator(index), height: pageIndicatorDefaultSize)
                        .animation(.easeInOut, value: currentPage)
                }
            }
            .padding(.bottom, 44)
        }
    }

    private func getWidthForIndicator(_ index: Int) -> CGFloat {
        return currentPage == index ? pageIndicatorSelectedWidth : pageIndicatorDefaultSize
    }
}
