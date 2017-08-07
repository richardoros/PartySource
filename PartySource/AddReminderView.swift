////
////  AddReminderViewController.swift
////  Calendar
////
////  Created by Niraj Sigdel on 06/08/2017.
////  Copyright © 2017 Niraj Sigdel. All rights reserved.
////
//
//import UIKit
//
//class AddReminderView: UIViewController, UITextFieldDelegate {
//    var reminder: Reminder?
//
//    @IBOutlet weak var timePicker: UIDatePicker!
//    @IBOutlet weak var reminderTextField: UITextField!
//    @IBOutlet weak var saveButton: UIBarButtonItem!
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//        self.reminderTextField.delegate = self
//        
//        timePicker.minimumDate = NSDate() as Date
//        timePicker.locale = NSLocale.current
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    func checkName() {
//        let text = reminderTextField.text ?? ""
//        saveButton.isEnabled = !text.isEmpty
//        
//    }
//    
//    func checkDate(){
//        if NSDate().earlierDate(timePicker.date) == timePicker.date {
//        saveButton.isEnabled = false
//        }
//    }
//    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }
//    
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        checkName()
//        navigationItem.title = textField.text
//    }
//    
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        saveButton.isEnabled = false
//    }
//    
//    
//    @IBAction func timeChanged(_ sender: UIDatePicker) {
//        checkDate()
//    }
//
//    @IBAction func cancel(_ sender: AnyObject) {
//        dismiss(animated: true, completion: nil)
//    }
//    
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//        
//     //   if saveButton === sender {
//        if sender as AnyObject? === saveButton {
//            let name  = reminderTextField.text
//            var time = timePicker.date
//            let timeInterval = floor(time.timeIntervalSinceReferenceDate/60) * 60
//            
//            time = NSDate(timeIntervalSinceReferenceDate: timeInterval) as Date
//            
//            //build notification
//            let notification = UILocalNotification()
//            notification.alertTitle = "Reminder"
//            notification.alertBody = "Don't forget to \(name!)!"
//            notification.fireDate = time
//            notification.soundName = UILocalNotificationDefaultSoundName
//            
//            UIApplication.shared.scheduleLocalNotification(notification)
//            
//            reminder = Reminder(name: name!, time: time as NSDate, notification: notification)
//            
//        }
//    }
//    
//
//}
