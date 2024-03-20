//
//  FillCarouselMock.swift
//  HiPC
//
//  Created by daniel.a.charry on 12/03/24.
//

import Foundation

struct FillCarouselMock {
    let mock: [CarouselModel]
    init() {
        mock = [.init(title: "Test1", description: "some", view: Dummy())]
    }
}
