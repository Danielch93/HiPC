//
//  DummyReactNativeView.swift
//  HiPC
//
//  Created by daniel.a.charry on 16/03/24.
//

import SwiftUI
import React

struct DummyReactNativeView: UIViewRepresentable {
    let RNCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
    //let RNBundleLocation = Bundle.main.path(forResource: "index", ofType: "jsbundle")

    func makeUIView(context: Context) -> UIView {
        var rootView: RCTRootView?
            rootView = RCTRootView(
                        bundleURL: RNCodeLocation,
                        moduleName: "HiPCRN",
                        initialProperties: nil,
                        launchOptions: nil)
        return rootView ?? UIView()
    }

    func updateUIView(_ uiView: UIView, context: Context) { }
}

struct DummyContentView: View {
    var body: some View {
        DummyReactNativeView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DummyContentView()
    }
}
