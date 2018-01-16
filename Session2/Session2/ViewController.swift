//
//  ViewController.swift
//  AppBasic
//
//  Created by Jose Diaz on 1/13/18.
//  Copyright © 2018 Anonymous. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        
        imageView.image = UIImage(named: "mark")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }

    @IBAction func changeImages(_ sender: Any) {
        let position = segmentControl.selectedSegmentIndex
        var imageName: String = ""
        
        switch position {
            case 0:
                imageName = "mark"
            case 1:
                imageName = "jobs"
            case 2:
                imageName = "woz"
            default:
                break
        }
        
        imageView.image = UIImage(named: imageName)
    }
}

