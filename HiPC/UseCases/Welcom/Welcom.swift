//
//  Welcom.swift
//  HiPC
//
//  Created by daniel.a.charry on 8/03/24.
//

import SwiftUI

struct Welcom: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("HiPC")
                .font(.largeTitle)
                .bold()
            Text("Project Components")
                .font(.subheadline)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct ContainerWelcom: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                ContainerCarousel()
            } label: {
                Welcom()
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    ContainerWelcom()
}
