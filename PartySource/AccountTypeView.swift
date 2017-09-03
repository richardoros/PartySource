//
//  AccountTypeView.swift
//  PartySource
//
//  Created by Richard Oros on 17/08/2017.
//  Copyright © 2017 CRN Development. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage
import UIKit

class AccountTypeView: UIViewController {
    
//    @IBAction func basicUserPush(_ sender: UIButton) {
//        if let user = user {
//            let userData = ["admin": user.admin]
//            self.addAccountTypeValue(id: user.uid, userData: userData)
//    }
//    }
//    
//    @IBAction func hostUserPush(_ sender: UIButton) {
//        if let user = user {
//            let userData = ["admin": user.admin]
//            self.completeSingIn(id: user.uid, userData: userData)
//    }
//        }
    
    
    func addAccountTypeValue(id: String, userData: Dictionary<String, String>) {
        
        DataService.ds.createFirebaseDBUser(uid: id, userData: userData)
        
        
        
        
    }

    
    
    
}
  
