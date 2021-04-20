//
//  NibHelper.swift
//  Real
//
//  Created by 唐紹桓 on 2021/4/11.
//

import UIKit

protocol NibOwnerLoadable: AnyObject {
    
    static var nib: UINib { get }
}

extension NibOwnerLoadable {
    
    static var nib: UINib {
        
        return UINib(nibName: String(describing: self), bundle: Bundle(for: self))
    }
}

extension UIView: NibOwnerLoadable {
    
    func loadNibContent() {
        
        guard let views = Self.nib.instantiate(withOwner: self, options: nil) as? [UIView],
              let contentView = views.first
        else {
            
            fatalError("Fail to load \(self) nib content")
        }
        
        self.addSubview(contentView)
    }
}

