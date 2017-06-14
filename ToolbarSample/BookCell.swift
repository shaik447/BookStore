//
//  BookCell.swift
//  ToolbarSample
//
//  Created by shaik mulla syed on 6/10/17.
//  Copyright © 2017 shaik mulla syed. All rights reserved.
//

import UIKit

class BookCell: UICollectionViewCell {
    
    var book:Book!
    
    
    @IBOutlet weak var coverImage:UIImageView!
    @IBOutlet weak var closeBtn:UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func updateUI(book:Book?) {
        self.book=book
        coverImage.image = book?.CoverImage ?? #imageLiteral(resourceName: "bill_gates")
        closeBtn.isHidden = true
       
    }
    
    func showclose(bookcell:BookCell,hide:Bool){
        bookcell.closeBtn.isHidden = hide
    }
    
    
    
}
