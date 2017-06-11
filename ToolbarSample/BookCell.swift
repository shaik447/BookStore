//
//  BookCell.swift
//  ToolbarSample
//
//  Created by shaik mulla syed on 6/10/17.
//  Copyright © 2017 shaik mulla syed. All rights reserved.
//

import UIKit

class BookCell: UICollectionViewCell {
    
   @IBOutlet weak var coverImage:UIImageView!

    func updateUI(book:Book?) {
       coverImage.image = book?.CoverImage ?? #imageLiteral(resourceName: "bill_gates")
       
    }
    
}
