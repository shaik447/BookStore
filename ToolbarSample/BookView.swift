//
//  BookView.swift
//  ToolbarSample
//
//  Created by shaik mulla syed on 9/16/1438 AH.
//  Copyright © 1438 shaik mulla syed. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class BookView: UICollectionViewController,UICollectionViewDelegateFlowLayout {

    var author:Author?
    
    
    @IBOutlet weak var addBarBtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title=author?.Name
        let flowlayout=collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        flowlayout?.minimumInteritemSpacing = 0
        
        

        
    }
    
    func doneclicked(){
        navigationItem.rightBarButtonItems?.removeAll()
        addBarBtn.isEnabled=true
        for visibleitem in (collectionView?.visibleCells as? [BookCell])!{
            visibleitem.showclose(bookcell: visibleitem,hide:true)
        }
    }
   

    
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
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? BookCell
        {
            cell.updateUI(book: (author?.Books[indexPath.item]))
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 20, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
    
    @IBAction func unwindAddbookVC(sender:UIStoryboardSegue){
        if let sourceVC=sender.source as? AddBookVC{

            let newindexpath=IndexPath(item: (author?.Books.count)!, section: 0)
            author?.addBook(book: sourceVC.newbook)
            
            //collectionView?.reloadData()
            collectionView?.insertItems(at: [newindexpath])
          

            
        }
    }
    
    
    @IBAction func TrashClicked(_ sender: UIBarButtonItem) {
        let visbleitems=collectionView?.visibleCells as? [BookCell]
        for visibleitem in visbleitems!{
            visibleitem.showclose(bookcell: visibleitem,hide:false)
        }
        let doneitem=UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(doneclicked))
        
        navigationItem.setRightBarButton(doneitem, animated: true)
        addBarBtn.isEnabled=false
        
    }
    
    
    
    @IBAction func deleteBookClicked(_ sender: UIButton){
        print(sender.superview!.superview!)
        if let parentcell = sender.superview!.superview, let bookcell = parentcell as? BookCell {
            print(bookcell.book.Title)
            let indexpath=collectionView?.indexPath(for: bookcell)
            author?.removeBook(book: bookcell.book)
            collectionView?.deleteItems(at: [indexpath!])
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
