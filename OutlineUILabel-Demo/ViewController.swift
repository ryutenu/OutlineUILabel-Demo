//
//  ViewController.swift
//  OutlineUILabel-Demo
//
//  Created by Alan Liu on 2022/01/06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attrString = NSAttributedString(
            string: "Outline UILabel",
            attributes: [
                NSAttributedString.Key.strokeColor: UIColor.white,
                NSAttributedString.Key.strokeWidth: -5.0,
                NSAttributedString.Key.foregroundColor: UIColor.purple,
                NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 50)
            ])
        
        titleLabel.attributedText = attrString
    }
}

