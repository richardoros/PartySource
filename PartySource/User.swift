//
//  User.swift
//  PartySource
//
//  Created by Richard Oros on 17/08/2017.
//  Copyright © 2017 CRN Development. All rights reserved.
//

import Foundation
import UIKit
import FirebaseStorage
import FirebaseDatabase
import Firebase


struct User {
    
    var username: String!
    var email: String?
    
    var country: String?
    var photoURL: String!
    var bio: String?
    var uid: String!
    var ref: DatabaseReference?
    var key: String?
    var group: String?
    var firstLastName: String!
    
    init(snapshot: DataSnapshot){
        
        
        key = snapshot.key
        ref = snapshot.ref
        
        username = (snapshot.value! as! NSDictionary)["username"] as! String
        email = (snapshot.value! as! NSDictionary)["email"] as? String
        uid = (snapshot.value! as! NSDictionary)["uid"] as! String
        bio = (snapshot.value! as! NSDictionary)["bio"] as? String
        photoURL = (snapshot.value! as! NSDictionary)["photoURL"] as! String
        firstLastName = (snapshot.value! as! NSDictionary)["firstLastName"] as! String
        group = (snapshot.value! as! NSDictionary) ["group"] as? String
        
}
}
