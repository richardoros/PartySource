////
////  Reminder.swift
////  Calendar
////
////  Created by Niraj Sigdel on 05/08/2017.
////  Copyright © 2017 Niraj Sigdel. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//class Reminder: NSObject, NSCoding {
//    //properties
//    
//    var notification: UILocalNotification
//    var name: String
//    var time: NSDate
//
//    // paths for date
//    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
//    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("reminders")
//    
//    // enum for prop keys
//    struct PropertyKey {
//        static let nameKey = "name"
//        static let timeKey = "time"
//        static let notificationKey = "notification"
//        
//    }
//    
//    // initializer
//    init(name: String, time: NSDate, notification: UILocalNotification) {
//        self.name = name
//        self.time = time
//        self.notification = notification
//        
//        super.init()
//        
//    
//    }
//    
//    //Destruct
//    deinit {
//        // cancel notification
//    UIApplication.shared.cancelLocalNotification(self.notification)
//    
//    }
//   
//    // NSCoding
//    func encode(with aCoder: NSCoder) {
//        aCoder.encode(name, forKey: PropertyKey.nameKey)
//        aCoder.encode(time, forKey: PropertyKey.timeKey)
//        
//        aCoder.encode(notification, forKey: PropertyKey.notificationKey)
//    }
//    
//    required convenience init?(coder aDecoder: NSCoder) {
//        let name = aDecoder.decodeObject(forKey: PropertyKey.nameKey) as! String
//        let time = aDecoder.decodeObject(forKey: PropertyKey.timeKey) as! NSDate
//        let notification = aDecoder.decodeObject(forKey: PropertyKey.notificationKey) as! UILocalNotification
//        
//        self.init(name: name, time: time, notification: notification)
//        
//    }
//   
//    
//    
//    
//    
//    
//    
//    
//    
//}
