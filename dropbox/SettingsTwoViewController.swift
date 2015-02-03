//
//  SettingsTwoViewController.swift
//  dropbox
//
//  Created by Jason Demetillo on 2/2/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class SettingsTwoViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet var settingsIMage: UIImageView!
    
    override func viewDidLoad
        () {
        super.viewDidLoad()
            
        self.scrollView.contentSize = CGSizeMake(320, 2200);
        self.scrollView.frame = CGRectMake(0, 0, 320, 2000);

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
