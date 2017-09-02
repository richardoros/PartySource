//
//  UserTableViewCell.swift
//  PartySource
//
//  Created by Richard Oros on 18/08/2017.
//  Copyright © 2017 CRN Development. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseStorage
import FirebaseAuth


class UserTableViewCell: UITableViewCell {
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var userImageView: UIImageView!
    
    var dataBaseRef: DatabaseReference! {
        return Database.database().reference()
    }
    
    var storageRef: Storage {
        
        return Storage.storage()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        userImageView.layer.cornerRadius = 54
        
    }
    
    func configureCell(user: User){
        
        self.emailLabel.text = user.firstLastName
        self.usernameLabel.text = "@" + user.username
        
        
        _ = user.photoURL!
//        
//        self.storageRef.reference(forURL: imageURL).storage(withMaxSize: 1 * 1024 * 1024, completion: { (imgData, error) in
            
//            if error == nil {
//                DispatchQueue.main.async {
//                    if let data = imgData {
//                        self.userImageView.image = UIImage(data: data)
//                    }
//                }
//                
//            }else {
//                print(error!.localizedDescription)
//                
//            }
//            
//            
        }
    }
    

