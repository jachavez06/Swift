//
//  AppDelegate.swift
//  FoodTracker
//
//  Created by Jesus Chavez on 7/2/17.
//  Copyright © 2017 Testing. All rights reserved.
//

import UIKit

// Using this attribute is equivalent to calling the UIApplicationMain function and passing your AppDelegate class's name as the name of the delegate class. In response, the system creates an application object. The system also creates an instance of your AppDelegate class, and assigs it to the application object. Finally, the system launches your app.
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
// The AppDelegate class adops the UIApplicationDelegate protocol. This protocol defines a number of methods you use to set up your app, to respond to the app's state changes, and to handle other app-level events.
    
    // Properties of AppDelegate
    var window: UIWindow?
    // The window property stores a reference to the app's window. This window represents the root of your app's view hierarchy. It is where all of your app content is drawn. Note that this is an optional (bcuz of question mark) property, so can be nil at some point

    // The following stub methods allow the application object to communicate with the app delegate. During an app state transition the application object calls the corresponding delegate method, giving your app an opportunity to respond. Each of the delegate methods has a default behavior. If you leave the template implementation empty or delete it from your AppDelegate class, you get the default behavior whenever that method is called.  
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

