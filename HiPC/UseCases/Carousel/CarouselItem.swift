//
//  CarouselItem.swift
//  HiPC
//
//  Created by daniel.a.charry on 8/03/24.
//

import SwiftUI

struct CarouselItem: View {
    @State private var description: String
    init(description: String) {
        _description = State(initialValue: description)
    }

    var body: some View {
        VStack {
            Text(description.capitalized)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.yellow)
    }
}

#Preview {
    CarouselItem(description: "some description")
}
