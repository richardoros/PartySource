//
//  SignUpViewController.swift
//  PartySource
//
//  Created by Richard Oros on 21/05/2017.
//  Copyright © 2017 Richard, Niraz and Casian. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth
//import SwiftKeychainWrapper

class SignUpView: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
//        if let _ = KeychainWrapper.defaultKeychainWrapper.string(forKey: KEY_UID){
//            print(" ID found in keychain")
//            performSegue(withIdentifier: "AccountType", sender: nil)
//        }
        
    }
    
    @IBOutlet weak var Login: UIBarButtonItem!
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passField: UITextField!
    
    @IBAction func createAccount(_ sender: UIButton) {
        if emailField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter your email and password", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
        } else {
            Auth.auth().createUser(withEmail: emailField.text!, password: passField.text!) { (user, error) in
                
                if error == nil {
                    print("You have successfully signed up")
                    //Goes to the Setup page which lets the user take a photo for their profile picture and also chose a username
                    if let user = user {
                        let userData = ["provider": user.providerID]
                        self.completeSingIn(id: user.uid, userData: userData)
                        print("USER ID SAVED TO DB! CONGRATS")
                    }
                    
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "AccountType")
                    self.present(vc!, animated: true, completion: nil)
                    
                    
                } else {
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SignUpView.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    func completeSingIn(id: String, userData: Dictionary<String, String>) {
        
        DataService.ds.createFirebaseDBUser(uid: id, userData: userData)
        
        
        
        
    }







}
