//
//  AppDelegate.swift
//  TestProj
//
//  Created by 김성태 on 2021/04/23.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        FirebaseApp.configure()
//        print("firebase init")
//        Messaging.messaging().delegate = self
//            UNUserNotificationCenter.current().delegate = self
//            let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
//            UNUserNotificationCenter.current().requestAuthorization(options: authOptions,completionHandler: {_, _ in })
//            application.registerForRemoteNotifications()
        return true
    }

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
      
    }
    
}

extension AppDelegate: UNUserNotificationCenterDelegate {
  func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
    print("\(#function)")
  }
}
