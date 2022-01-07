//
//  ViewController.swift
//  OutlineUILabel-Demo
//
//  Created by Alan Liu on 2022/01/06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subtitleLabel: DecorateLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTitleLabel()
        
        setupSubtitleLabel()
    }
    
    private func setupTitleLabel() {
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
    
    private func setupSubtitleLabel() {
        let lineJoin = CGLineJoin.round
        let strokeColor = UIColor.white
        let strokeWidth = CGFloat(10.0)
        
        subtitleLabel.lineJoin = lineJoin
        subtitleLabel.strokeColor = strokeColor
        subtitleLabel.strokeWidth = strokeWidth
        
        subtitleLabel.textColor = .purple
        subtitleLabel.text = "label"
    }
}
