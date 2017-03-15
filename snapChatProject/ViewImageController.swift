//
//  ViewImageController.swift
//  snapChatProject
//
//  Created by ZhangJianglai on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit

class ViewImageController: UIViewController {
    
    var toView: UIImage?
    
    @IBOutlet weak var browser: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        browser.image = toView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
