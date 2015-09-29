//
//  SignInViewController.swift
//  CarouselDemo
//
//  Created by Jason Fain on 9/23/15.
//  Copyright © 2015 Jason Fain. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var formView: UIView!
    
    @IBAction func tapOutGesture(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBOutlet weak var buttonView: UIView!
    
    @IBOutlet weak var emailField: UITextField!
    
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEmailTouch(sender: AnyObject) {
        
        
        
        UIView.animateWithDuration(0.2, animations: {
            // This causes first view to fade in and second view to fade out
            
            self.formView.center.y = -62 +
                self.formView.frame.size.height/2
            
        })
        
        UIView.animateWithDuration(0.4, animations: {
            // This causes first view to fade in and second view to fade out
            
            self.buttonView.center.y = 170 +
                self.buttonView.frame.size.height/2
            
            
        })
        
    }
    
    
    @IBAction func onBackButton(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func onSignInButton(sender: AnyObject) {
        
        view.endEditing(true)
        
        UIView.animateWithDuration(0.2, animations: {
            // This causes first view to fade in and second view to fade out
            
            self.formView.center.y = 65 +
                self.formView.frame.size.height/2
            
        })
        
        UIView.animateWithDuration(0.4, animations: {
            // This causes first view to fade in and second view to fade out
            
            self.buttonView.center.y = 360 +
                self.buttonView.frame.size.height/2
            
        })
        
        if emailField.text!.isEmpty {
            
        } else {
            
            let alertController = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: .Alert)
            
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            
            
        } //end if
        
        // Delay for 2 seconds, then run the code between the braces.
        
        delay(2) {
            
            if self.emailField.text == "e" && self.passwordField.text == "p" {
                
                self.performSegueWithIdentifier("loginSegue", sender: self)
                
                
                
            } else {
                
                let alertController = UIAlertController(title: "Sign In Failed", message: "Please enter this again", preferredStyle: .Alert)
                
                
                // create an OK action
                let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                    // handle response here.
                }
                // add the OK action to the alert controller
                alertController.addAction(OKAction)
                
                self.presentViewController(alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                }
                
                
                
            }
            
        } //end delay
        
        
    } //end onSignInButton
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
