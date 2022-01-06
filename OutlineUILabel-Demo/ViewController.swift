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
            string: "label",
            attributes: [
                NSAttributedString.Key.font: UIFont(name: "OtomanopeeOne-Regular", size: 60) ?? UIFont.boldSystemFont(ofSize: 60),
                NSAttributedString.Key.foregroundColor: UIColor.purple,
                NSAttributedString.Key.strokeColor: UIColor.white,
                NSAttributedString.Key.strokeWidth: -5.0
            ])
        
        titleLabel.attributedText = attrString
    }
}
