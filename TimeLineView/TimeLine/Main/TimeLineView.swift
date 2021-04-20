//
//  TimeLineView.swift
//  TimeLineView
//
//  Created by 唐紹桓 on 2021/4/20.
//

import UIKit

class TimeLineView: UIView {
    
    @IBOutlet weak var tableView: UITableView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        initView()
    }
    
    func initView() {
        
        loadNibContent()
        
        tableView.delegate = self
        
        tableView.dataSource = self
        
        tableView.registerNib(cell: TimeLineTableViewCell.self)
    }
}

extension TimeLineView: UITableViewDelegate {
    
}

extension TimeLineView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return tableView.reuse(cell: TimeLineTableViewCell.self, for: indexPath)
    }
}
