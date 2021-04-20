//
//  UIView+Extension.swift
//  TimeLineView
//
//  Created by 唐紹桓 on 2021/4/20.
//

import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        
        get {
            
            return self.layer.cornerRadius
        }
        
        set {
            
            
            self.layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable var enableCutRound: Bool {
        
        get {
            
            return self.enableCutRound
        }
        
        set {
            
            if newValue {
                
                self.layer.cornerRadius = self.height / 2
                
            } else {
                
                self.layer.cornerRadius = 0
            }
        }
    }
    
    func cutRound() {
        
        self.clipsToBounds = true
        
        self.layer.cornerRadius = self.height / 2
    }
    
    // object identifier
    
    static var identifier: String {
        
        return String(describing: self)
    }
    
    static var nibName: String {
        
        return String(describing: self)
    }
    
    // size and position
    
    var x: CGFloat {
        
        get {
            
            return self.frame.origin.x
        }
        
        set {
            
            self.frame.origin.x = newValue
        }
    }
    
    var y: CGFloat {
        
        get {
            
            return self.frame.origin.y
        }
        
        set {
            
            self.frame.origin.y = newValue
        }
    }
    
    var height: CGFloat {
        
        get {
            
            return self.frame.size.height
        }
        
        set {
            
            self.frame.size.height = newValue
        }
    }
    
    var width: CGFloat {
    
        get {
            
            return self.frame.size.width
        }
        
        set {
            
            self.frame.size.width = newValue
        }
    }
    
    func setupShadow() {
        
        self.layer.shadowOffset = CGSize(width: 1, height: 1)

        self.layer.shadowOpacity = 0.5

        self.layer.shadowRadius = 1

        self.layer.shadowColor = UIColor.darkGray.cgColor
    }
    
    func setupBorder(width: CGFloat, color: UIColor) {
        
        self.layer.borderWidth = width
        
        self.layer.borderColor = color.cgColor
    }
}
