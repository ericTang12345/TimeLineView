//
//  UITableView+Extension.swift
//  Puff
//
//  Created by Max Kai on 2021/1/25.
//

import UIKit

extension UITableView {
    
    func registerNib(cell: UITableViewCell.Type) {
        
        let nib = UINib(nibName: cell.nibName, bundle: nil)
        
        register(nib, forCellReuseIdentifier: cell.identifier)
    }
    
    func reuse<T: UITableViewCell>(cell: T.Type, for indexPath: IndexPath) -> T {
        
        return self.dequeueReusableCell(withIdentifier: cell.identifier, for: indexPath) as! T
    }
    
    func registerNib(view: UIView.Type) {
        
        let nib = UINib(nibName: view.identifier, bundle: nil)
        
        register(nib, forHeaderFooterViewReuseIdentifier: view.identifier)
    }
}
