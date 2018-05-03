//
//  ViewController.swift
//  app-swoosh
//
//  Created by thanhbh on 5/2/18.
//  Copyright © 2018 thanhbh. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var lblSwoosh: UIImageView!
    @IBOutlet weak var imgBG: UIImageView!
    @IBOutlet weak var btnStart: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        swoosh.frame = CGRect(x: (view.frame.size.width - swoosh.frame.size.width) / 2, y: (view.frame.size.height - swoosh.frame.size.height) / 25, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
//        bgImg.frame = view.frame
    }
    
    @IBAction func unwindFromSkillViewController(_ unwindSegue: UIStoryboardSegue) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

