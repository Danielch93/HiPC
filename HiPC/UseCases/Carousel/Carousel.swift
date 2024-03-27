//
//  Carousel.swift
//  HiPC
//
//  Created by daniel.a.charry on 8/03/24.
//

import SwiftUI

struct Carousel: View {
    @State private var components: [CarouselModel]

    init(model: [CarouselModel]) {
        _components = State(initialValue: model)
    }

    var body: some View {
        ForEach(components, id: \.title) { item in
            VStack {
                Text(item.title)
                    .font(.title)
                    .bold()
                NavigationLink {
                    item.view
                } label: {
                    CarouselItem(description: item.description)
                        .background(item.background)
                        .frame(width: 350, height: 620)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .padding(.horizontal, 20)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct ContainerCarousel: View {
    let dataModel = FillCarouselMock()
    var body: some View {
        VStack {
            NavigationStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 0) {
                        Carousel(model: dataModel.mock)
                    }
                    .scrollTargetLayout()
                }
                .scrollTargetBehavior(.viewAligned)
                
                
            }
        }
    }
}

#Preview {
    ContainerCarousel()
}
