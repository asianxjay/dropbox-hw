//
//  CreateAccountViewController.swift
//  dropbox
//
//  Created by Jason Demetillo on 2/2/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController,
UIActionSheetDelegate {

    @IBOutlet var firstField: UITextField!
    
    @IBOutlet var lastField: UITextField!
    
    @IBOutlet var emailField: UITextField!
    
    @IBOutlet var passwordField: UITextField!
    
    @IBOutlet var createButton: UIButton!
    
    @IBOutlet var meterImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        firstField.becomeFirstResponder();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBack(sender: AnyObject) {
        
            navigationController!.popViewControllerAnimated(true);
    }

    @IBAction func createButton(sender: AnyObject) {
        var actionSheet = UIActionSheet(title: "Before you complete your registration, you must accept the Dropbox Terms of Service", delegate: self, cancelButtonTitle:nil, destructiveButtonTitle: nil, otherButtonTitles: "I Agree", "View Terms");
        actionSheet.showInView(view)
        
    }
    
    @IBAction func fieldChange(sender: AnyObject) {
        var firstNameLength = countElements(firstField.text);
        var lastNameLength = countElements(lastField.text);
        var emailAddressLength = countElements(emailField.text);
        var passwordLength = countElements(passwordField.text);
        if (firstNameLength > 0 && lastNameLength > 0 && emailAddressLength > 0 && passwordLength > 0) {
            createButton.enabled = true;
        } else {
            createButton.enabled = false;
        }
    }

    @IBAction func passwordCHange(sender: AnyObject) {
        
        var passwordLength = countElements(passwordField.text);
        if (passwordLength == 0) {
            meterImage.image = nil;
        } else if (passwordLength < 4) {
            meterImage.image = UIImage(named: "create_account_1");
        } else if (passwordLength < 8) {
           meterImage.image = UIImage(named: "create_account_2");
        } else if (passwordLength < 12) {
            meterImage.image = UIImage(named: "create_account_3");
        } else {
            meterImage.image = UIImage(named: "create_account_4");
        }
        
    }
    
    
    
    func actionSheet(actionSheet: UIActionSheet!, clickedButtonAtIndex buttonIndex: Int) {
        // buttonIndex is 0 for Cancel
        // buttonIndex ranges from 1-n for the other buttons.
        if (buttonIndex == 0) {
            firstField.resignFirstResponder();
            lastField.resignFirstResponder();
            emailField.resignFirstResponder();
            passwordField.resignFirstResponder();
            performSegueWithIdentifier("showNewUserScreen", sender: self);
            navigationController!.popToRootViewControllerAnimated(true);
        } else if (buttonIndex == 1) {
            performSegueWithIdentifier("showTermsScreen", sender: self);
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
