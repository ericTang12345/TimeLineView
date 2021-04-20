//
//  TimeLineTableViewCell.swift
//  TimeLineView
//
//  Created by 唐紹桓 on 2021/4/20.
//

import UIKit

class TimeLineTableViewCell: UITableViewCell {
    
    @IBOutlet weak var highlightView: UIView! {
        
        didSet {
            
            highlightView.layer.cornerRadius = highlightView.frame.height / 2
        }
    }
    
    @IBOutlet weak var markView: UIView! {
        
        didSet {
            
            markView.layer.cornerRadius = markView.frame.height / 2
        }
    }
    
    @IBOutlet weak var spaceView: UIView! {
        
        didSet {
            
            spaceView.cornerRadius = spaceView.frame.height / 2
        }
    }
    
    @IBOutlet weak var timeLineView: UIView!
    
    @IBOutlet weak var eventView: UIView! {
        
        didSet {
            
            eventView.layer.cornerRadius = 5
        
            eventView.setupBorder(width: 1, color: .separator)
            
            eventView.setupShadow()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
    }
}

extension TimeLineTableViewCell {
    
    func setupHighlight(color: UIColor) {
        
        highlightView.backgroundColor = color
    }
    
    func setupMarkSize(height: CGFloat, width: CGFloat) {
        
        markView.frame.size.height = height
        
        markView.frame.size.width = width
    }
}
