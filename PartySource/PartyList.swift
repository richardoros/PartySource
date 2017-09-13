//
//  PartyList.swift
//  PartySource
//
//  Created by Richard Oros on 04/09/2017.
//  Copyright © 2017 CRN Development. All rights reserved.
//

import Foundation
import FirebaseDatabase

struct PartyList {
    
    let key: String
    let name: String
    
    //let addedByUser: String
    let ref: DatabaseReference?
    var completed: Bool
    
    init(name: String, completed: Bool, key: String = "") {
        self.key = key
        self.name = name
       
       // self.addedByUser = addedByUser
        self.completed = completed
        self.ref = nil
    }
    
    init(snapshot: DataSnapshot) {
        key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        
        name = snapshotValue["name"] as! String
       // addedByUser = snapshotValue["addedByUser"] as! String
        completed = snapshotValue["completed"] as! Bool
        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "name": name,
           
            //"addedByUser": addedByUser,
            "completed": completed
        ]
    }
    
}
