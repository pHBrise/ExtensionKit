//
//  RoundViewExtension.swift
//  RSMallShopping
//
//  Created by Mix on 9/12/2563 BE.
//  Copyright © 2563 BE RS. All rights reserved.
//

import UIKit

@IBDesignable class RoundedImage: UIImageView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        applyCornerRadius()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        applyCornerRadius()
    }
    
    @IBInspectable var circular: Bool = false {
        didSet {
            rounded = true
            applyCornerRadius()
        }
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            applyCornerRadius()
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.1 {
        didSet {
            applyCornerRadius()
        }
    }
    
    @IBInspectable var borderColor : UIColor = UIColor.clear {
        didSet {
            applyCornerRadius()
        }
    }
    
    @IBInspectable var borderWidth : Double = 0 {
        didSet {
            applyCornerRadius()
        }
    }
    
    func applyCornerRadius() {
        if(self.circular) {
            layer.cornerRadius = bounds.size.height/2
            layer.masksToBounds = true
            layer.borderColor = borderColor.cgColor
            layer.borderWidth = CGFloat(borderWidth)
        } else {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = true
            layer.borderColor = self.borderColor.cgColor
            layer.borderWidth = CGFloat(borderWidth)
        }
    }
    
    override class func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
}

@IBDesignable class RoundedView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if shadow {
            applyShadow()
            return
        }
        applyCornerRadius()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if shadow {
            applyShadow()
            return
        }
        applyCornerRadius()
        
    }
    
    @IBInspectable var circular: Bool = false {
        didSet {
            rounded = true
            applyCornerRadius()
        }
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            applyCornerRadius()
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.1 {
        didSet {
            applyCornerRadius()
        }
    }
    
    @IBInspectable var borderColor : UIColor = UIColor.clear {
        didSet {
            applyCornerRadius()
        }
    }
    
    @IBInspectable var borderWidth : Double = 0 {
        didSet {
            applyCornerRadius()
        }
    }
    
    @IBInspectable var shadow : Bool = false {
        didSet {
            if shadow {
                applyShadow()
            }
        }
    }
    
    func applyShadow() {
        addShadow()
    }
    
    func applyCornerRadius() {
        if(self.circular) {
            layer.cornerRadius = bounds.size.height/2
            layer.masksToBounds = true
            layer.borderColor = borderColor.cgColor
            layer.borderWidth = CGFloat(borderWidth)
        } else {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = true
            layer.borderColor = self.borderColor.cgColor
            layer.borderWidth = CGFloat(borderWidth)
        }
    }
    override class func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
}

@IBDesignable class RoundedButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        applyCornerRadius()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        applyCornerRadius()
    }
    
    @IBInspectable var circular: Bool = false {
        didSet {
            rounded = true
            applyCornerRadius()
        }
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            applyCornerRadius()
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.1 {
        didSet {
            applyCornerRadius()
        }
    }
    
    @IBInspectable var borderColor : UIColor = UIColor.clear {
        didSet {
            applyCornerRadius()
        }
    }
    
    @IBInspectable var borderWidth : Double = 0 {
        didSet {
            applyCornerRadius()
        }
    }
    
    @IBInspectable var tintImage: UIColor = .white {
        didSet {
            setImage(imageView?.image?.withTintColor(tintImage), for: .normal)
        }
    }
    func applyCornerRadius() {
        if(self.circular) {
            layer.cornerRadius = bounds.size.height/2
            layer.masksToBounds = true
            layer.borderColor = borderColor.cgColor
            layer.borderWidth = CGFloat(borderWidth)
        } else {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = true
            layer.borderColor = self.borderColor.cgColor
            layer.borderWidth = CGFloat(borderWidth)
        }
    }
    override var isEnabled: Bool {
        didSet {
            backgroundColor = isEnabled ? .defaultBackgroundColor:.lightGray
        }
    }
    override class func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
}

@IBDesignable class RoundedLabel: UILabel {
    @IBInspectable
    public var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set (radius) {
            layer.cornerRadius = radius
            layer.masksToBounds = radius > 0
        }
    }
    
    @IBInspectable
    public var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }
        
        set (borderWidth) {
            layer.masksToBounds = true
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    public var borderColor: UIColor? {
        get {
            if let color = self.layer.borderColor {
                return UIColor(cgColor: color)
            } else {
                return nil
            }
        }
        set (color) {
            layer.borderColor = color?.cgColor
        }
    }
    
    override class func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
}