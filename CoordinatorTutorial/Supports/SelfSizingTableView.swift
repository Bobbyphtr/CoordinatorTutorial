//
//  SelfSizingTableVIew.swift
//
//  Created by BobbyPhtr on 05/11/20.
//

import UIKit

/// This table view resize itself to the size of its content size.
class SelfSizingTableView: UITableView {

    override var contentSize: CGSize {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
    }
    
    override func reloadData() {
        super.reloadData()
        self.invalidateIntrinsicContentSize()
         layoutIfNeeded()
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        self.isScrollEnabled = false
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.isScrollEnabled = false
    }
}
