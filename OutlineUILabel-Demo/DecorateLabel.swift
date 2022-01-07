//
//  DecorateLabel.swift
//  OutlineUILabel-Demo
//
//  Created by Alan Liu on 2022/01/07.
//

import UIKit

class DecorateLabel: UILabel {
    // Character spacing
    @IBInspectable var characterSpacing: CGFloat = 1 {
        didSet {
            let attributedString = NSMutableAttributedString(string: text!)
            attributedString.addAttribute(NSAttributedString.Key.kern, value: characterSpacing, range: NSRange(location: 0, length: attributedString.length))
            attributedText = attributedString
        }
    }
    
    // From: https://qiita.com/bu-ka/items/afda427e8dbe03e8e3a2
    var lineJoin = CGLineJoin.miter
    var strokeColor = UIColor.white
    var strokeWidth = CGFloat(10.0)
    
    override func drawText(in rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            let textColor = self.textColor
            
            context.setLineJoin(lineJoin)
            context.setLineWidth(strokeWidth)
            context.setTextDrawingMode(.stroke)
            self.textColor = strokeColor
            super.drawText(in: rect)
            
            context.setTextDrawingMode(.fill)
            self.textColor = textColor
        }
        super.drawText(in: rect)
    }
}
