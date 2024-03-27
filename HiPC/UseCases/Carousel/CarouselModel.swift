//
//  CarouselModel.swift
//  HiPC
//
//  Created by daniel.a.charry on 12/03/24.
//

import SwiftUI

typealias CarouselModel = CarouselDataModel<AnyView>

struct CarouselDataModel<Content>: Identifiable where Content: View {
    var id = UUID()
    let title: String
    let description: String
    let background: Color
    let view: Content

    init(title: String, description: String, background: Color = .gray, view: Content) {
        self.title = title
        self.description = description
        self.background = background
        self.view = view
    }
}
