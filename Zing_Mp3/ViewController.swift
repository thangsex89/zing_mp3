//
//  ViewController.swift
//  Zing_Mp3
//
//  Created by Thang on 11/11/16.
//  Copyright © 2016 Thang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var text: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logo!.alpha = 0;
        text!.alpha = 0;
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 4, animations: {
            
            self.logo!.alpha = 1
            
        }) { (finished) in
            
            UIView.animate(withDuration: 3, animations: {
                
                self.text!.center = CGPoint(x: self.logo!.center.x, y: 100)
                
                
                self.text!.alpha = 1
                
            })
            
        }
        
    }


}

