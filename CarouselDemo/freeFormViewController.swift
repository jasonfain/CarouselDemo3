//
//  freeFormViewController.swift
//  CarouselDemo
//
//  Created by Jason Fain on 9/24/15.
//  Copyright © 2015 Jason Fain. All rights reserved.
//

import UIKit

class freeFormViewController: UIViewController {
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var welcomeImageView: UIImageView!
    
    @IBOutlet weak var takeSpinButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        
        // extra from tim - welcomeImageView.frame.size.height
        
        func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
            // Get the current page based on the scroll offset
            var page : Int = Int(round(scrollView.contentOffset.x / 320))
            
            // Set the current page, so the dots will update
            pageControl.currentPage = page
            
           if page == 1 {
                
                UIView.animateWithDuration(0.4, animations: {
                    
                    self.takeSpinButton.alpha = 1
                    
                    
                })
                
            } else {
                
                UIView.animateWithDuration(0.1, animations: {
                    
                    self.takeSpinButton.alpha = 0
                    
                    
                })
            
        
    }

    func didReceiveMemoryWarning() {
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

}
};

