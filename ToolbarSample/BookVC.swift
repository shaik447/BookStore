//
//  BookVC.swift
//  ToolbarSample
//
//  Created by shaik mulla syed on 6/10/17.
//  Copyright © 2017 shaik mulla syed. All rights reserved.
//

import UIKit

private let reuseIdentifier = "bookcellid"

class BookVC: UICollectionViewController {
    
    var author:Author?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.register(BookCell.self, forCellWithReuseIdentifier: "bookcellid")
        // Do any additional setup after loading the view.
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return author?.Books.count ?? 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bookcellid", for: indexPath) as? BookCell
        {
            print("got cell")
//            let tmpbook=author?.Books[indexPath.item]
//            print(tmpbook?.Title ?? "shaik")
//            cell.updateUI(book: (author?.Books[indexPath.item])!)
            return cell
        }
        
        return UICollectionViewCell()
    }

    // MARK: UICollectionViewDelegate

    
}
