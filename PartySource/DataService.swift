//
//  DataService.swift
//  PartySource
//
//  Created by Richard Oros on 29/08/2017.
//  Copyright © 2017 CRN Development. All rights reserved.
//

import Foundation
import FirebaseDatabase
import Firebase

let DB_BASE = Database.database().reference()
let geofireRef = Database.database().reference()

class DataService {
    
    let geoFire = GeoFire(firebaseRef: geofireRef)
    
    
    static let ds = DataService()
    
    private var _REF_BASE = DB_BASE
    
    private var _REF_POSTS = DB_BASE.child("posts")
    private var _REF_USER = DB_BASE.child("user")
    
    
    var REF_BASE: DatabaseReference {
        return self.REF_BASE
    }
    
    var REF_POST:
        DatabaseReference {
        return self.REF_POST
    }
    
    var REF_USER: DatabaseReference {
        return self.REF_USER
    }
    
    func createFirebaseDBUser(uid: String, userData: Dictionary<String, String>) {
        _REF_USER.child(uid).updateChildValues(userData)
        
        
    }
    
    
    
    
}
