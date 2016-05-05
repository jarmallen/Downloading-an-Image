//
//  ViewController.swift
//  Downloading an Image
//
//  Created by Jared Allen on 4/13/16.
//  Copyright © 2016 Jared Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var documentsDirectory: String?
        
        var paths: [AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        
        if paths.count > 0 {
            
            documentsDirectory = paths[0] as? String
            
            let savePath = documentsDirectory! + "/grumpyCat.jpg"
            
            self.imageView.image = UIImage(named: savePath)
            
        }
        

        
        
      
       /* let imageUrl = NSURL(string: "https://pbs.twimg.com/profile_images/616542814319415296/McCTpH_E.jpg")
        
        // let request = NSURLRequest(imageUrl)
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(imageUrl!) { (data, response, error) in
            
            if error != nil {
                
                print(error)
                
            } else {
                
                var documentsDirectory: String?
                
                var paths: [AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
                
                if paths.count > 0 {
                    
                    documentsDirectory = paths[0] as? String
                    
                    let savePath = documentsDirectory! + "/grumpyCat.jpg"
                    
                    NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
                    
                    dispatch_async(dispatch_get_main_queue(), {
                    
                        self.imageView.image = UIImage(named: savePath)
                        
                    })
                    
                }
                
                /* dispatch_async(dispatch_get_main_queue(), {
                    
                    if let grumpyCat = UIImage(data: data!) {
                        
                        self.imageView.image = grumpyCat
                        
                    }
                    
                }) */
                
               
            }
            
        }
        
        task.resume() */
        
    }

}

