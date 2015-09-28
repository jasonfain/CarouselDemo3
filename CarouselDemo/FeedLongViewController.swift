//
//  FeedLongViewController.swift
//  CarouselDemo
//
//  Created by Jason Fain on 9/26/15.
//  Copyright © 2015 Jason Fain. All rights reserved.
//

import UIKit

class FeedLongViewController: UIViewController {
    
    
    @IBOutlet weak var feedScrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
         feedScrollView.contentSize = CGSize(width: 320, height: 1604)
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
