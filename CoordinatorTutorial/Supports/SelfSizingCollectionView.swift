//
//  SelfSizingTableVIew.swift
//
//  Created by BobbyPhtr on 05/11/20.
//

import UIKit

/// This collection view resize itself to the size of its content size. 
class SelfSizingCollectionView: UICollectionView {

    override var contentSize: CGSize {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        layoutIfNeeded()
        return contentSize
    }
    
    override func reloadData() {
        super.reloadData()
        self.invalidateIntrinsicContentSize()
        layoutIfNeeded()
    }
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        self.isScrollEnabled = false
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.isScrollEnabled = false
    }
}
