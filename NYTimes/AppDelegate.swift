//
//  AppDelegate.swift
//  NYTimes
//
//  Created by Hassan Mostafa on 12/7/20.
//  Copyright © 2020 Hassan Mostafa. All rights reserved.
//

import UIKit

@UIApplicationMain

//MARK: - App Cycle
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        //hgfytf
        
        //Start monithghgjghjoring for network status
        SSASwiftReachability.sharedManager?.startMonitoring()
        
        return true
    }
}
