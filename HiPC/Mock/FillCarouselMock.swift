//
//  FillCarouselMock.swift
//  HiPC
//
//  Created by daniel.a.charry on 12/03/24.
//

import SwiftUI

struct FillCarouselMock {
    let mock: [CarouselModel]

    init() {
        mock = [
            .init(title: "SwiftUI",
                  description: String(describing: Dummy.self), background: Color.blue,
                  view: AnyView(Dummy())),
            .init(title: "React-Native",
                  description: String(describing: DummyReactNativeView.self),
                  background: Color.cyan,
                  view: AnyView(DummyReactNativeView())),
            .init(title: "Flutter",
                  description: "Flutter",
                  background: Color.indigo,
                  view: AnyView(Dummy()))
        ]
    }
}
