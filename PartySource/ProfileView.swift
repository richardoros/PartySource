//
//  ProfileView.swift
//  PartySource
//
//  Created by Richard Oros on 17/08/2017.
//  Copyright © 2017 CRN Development. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseStorage
import FirebaseDatabase
import UIKit




//reference for Firebase storage
let storage = Storage.storage()



class ProfileView: UIViewController {
    
        let user = Auth.auth().currentUser?.uid
    
    var storageRef = Storage.storage().reference()
    
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    @IBAction func submitBtn(_ sender: UIButton) {
        var ref: DatabaseReference
        let name = nameField.text
        let country = countryField.text
        let city = cityField.text
        
        let userId = Auth.auth().currentUser?.uid
        
        print(name!, country!, city!)
        
        ref = Database.database().reference()
        let key = userId
        //let key = ref.child("users").childByAutoId().key
        let post = [
            "city": city,
            "country": country,
            "name": name
        ]
        let childUpdates = ["/user/\(key!)":post]
        ref.updateChildValues(childUpdates)
        //performSegue(withIdentifier: "backToApp", sender: self)
    }
    
    
        @IBOutlet weak var profileLabel: UILabel!
        
        @IBAction func buttonPopup(_ sender: UIButton) {
            showInputDialog()
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    

    func showInputDialog() {
        //Creating UIAlertController and
        //Setting title and message for the alert dialog
        let alertController = UIAlertController(title: "Enter details?", message: "Enter your name and email", preferredStyle: .alert)
        
        //the confirm action taking the inputs
        let confirmAction = UIAlertAction(title: "Enter", style: .default) { (_) in
            
            //getting the input values from user
            let name = alertController.textFields?[0].text
            let email = alertController.textFields?[1].text
            
           // self.labelMessage.text = "Name: " + name! + "Email: " + email!
            
        }
        
        //the cancel action doing nothing
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        
        //adding textfields to our dialog box
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Name"
        }
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Email"
        }
        
        //adding the action to dialogbox
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        //finally presenting the dialog box
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    
    
    }
    
    
    

    
    

