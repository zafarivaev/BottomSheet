//
//  AppDelegate.swift
//  BottomSheet
//
//  Created by Zafar on 8/13/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.rootViewController = WelcomeContainerViewController(
            contentViewController: HelloViewController(),
            bottomSheetViewController: MyCustomViewController(),
            bottomSheetConfiguration: .init(
                height: UIScreen.main.bounds.height * 0.8,
                initialOffset: 60 + window!.safeAreaInsets.bottom
            )
        )
        window?.makeKeyAndVisible()
        
        return true
    }
}

