//
//  BookCell.swift
//  ToolbarSample
//
//  Created by shaik mulla syed on 6/10/17.
//  Copyright © 2017 shaik mulla syed. All rights reserved.
//

import UIKit

class BookCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
   
//    func updateUI(book:Book) {
//        if bookImage == nil{
//            print("true")
//        
//        }
//        
//        //bookImage.image = UIImage(contentsOfFile: "bill_gates")
//    }
    
}
