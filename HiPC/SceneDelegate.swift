//
//  SceneDelegate.swift
//  HiPC
//
//  Created by daniel.a.charry on 19/03/24.
//

import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate, UIApplicationDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {

            guard let windowScene = (scene as? UIWindowScene) else { return }
            window = UIWindow(windowScene: windowScene)
            window?.rootViewController = UIHostingController(rootView: ContainerWelcom())
            window?.makeKeyAndVisible()
        }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("hola")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        print("hola")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        print("hola")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        print("hola")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        print("hola")
    }

    func application(_ application: UIApplication,
                     configurationForConnecting connectingSceneSession: UISceneSession,
                     options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        let sceneConfig = UISceneConfiguration(name: "Default Configuration HIPC", sessionRole: connectingSceneSession.role)
        sceneConfig.delegateClass = SceneDelegate.self
        return sceneConfig
    }
}
