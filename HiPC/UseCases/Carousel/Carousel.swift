//
//  Carousel.swift
//  HiPC
//
//  Created by daniel.a.charry on 8/03/24.
//

import SwiftUI

struct Carousel: View {
    private let sampleTrips = [ "paris",
                                "florence",
                                "amsterdam",
                                "ghent",
                                "santorini",
                                "budapest"]
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHStack(spacing: 0) {
                    ForEach(sampleTrips, id: \.self) { trip in
                        VStack {
                            Text(trip.capitalized)
                                .font(.title)
                                .bold()
                            CarouselItem()
                                .frame(width: 350, height: 620)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                .padding(.horizontal, 20)
                            
                        }
                    }
                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.viewAligned)
        }
    }
}

#Preview {
    Carousel()
}
