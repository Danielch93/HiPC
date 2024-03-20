//
//  CarouselModel.swift
//  HiPC
//
//  Created by daniel.a.charry on 12/03/24.
//

import Foundation
import SwiftUI

struct CarouselModel: Identifiable {
    var id = UUID()
    let title: String
    let description: String
    let view: any View

    init(title: String, description: String, view: any View) {
        self.title = title
        self.description = description
        self.view = view
    }

    init() {
        self.title = "React-Native"
        self.description = "some description RN View"
        self.view = Dummy()
    }
}
