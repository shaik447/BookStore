//
//  KindleVC.swift
//  ToolbarSample
//
//  Created by shaik mulla syed on 6/10/17.
//  Copyright © 2017 shaik mulla syed. All rights reserved.
//

import UIKit

class KindleVC: UITableViewController {
    
    var authors:[Author]?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellid")
        let tmpview=UIView()
        tmpview.backgroundColor = .red
        tmpview.frame=CGRect(x: 0, y: 0, width: 100.0, height: 40.0)
        tableView.tableFooterView=tmpview
        setupData()
        
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let tmpview=UIView()
        tmpview.backgroundColor = .green
        return tmpview
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 40
    }
    
    
    func setupData(){
        let book1=Book(title: "Book1", coverimage: #imageLiteral(resourceName: "stevejobs"),pages:[
            Page(pageno: 1, pagetext: "Some Text from page1"),
            Page(pageno: 2, pagetext: "Some Text from page2"),
            Page(pageno: 3, pagetext: "Some Text from page3"),
            Page(pageno: 4, pagetext: "Some Text from page4")
            ])
        
        let book2=Book(title: "Book2", coverimage: #imageLiteral(resourceName: "stevejobs"),pages:[
            Page(pageno: 1, pagetext: "Some Text from page1"),
            Page(pageno: 2, pagetext: "Some Text from page2"),
            Page(pageno: 3, pagetext: "Some Text from page3"),
            Page(pageno: 4, pagetext: "Some Text from page4")
            ])
        
        let book3=Book(title: "Book3", coverimage: #imageLiteral(resourceName: "stevejobs"),pages:[
            Page(pageno: 1, pagetext: "Some Text from page1"),
            Page(pageno: 2, pagetext: "Some Text from page2"),
            Page(pageno: 3, pagetext: "Some Text from page3"),
            Page(pageno: 4, pagetext: "Some Text from page4")
            ])
        
        
        let author1=Author(name: "Author1", books: [book1,book2])
        let author2=Author(name: "Author2", books: [book1,book3])
        let author3=Author(name: "Author3", books: [book1,book2,book3])
        let author4=Author(name: "Author4", books: [book1])
        
        authors=[author1,author2,author3,author4]
    }

    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       print(authors?.count ?? 456)
        return authors?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)

        cell.textLabel?.text = authors?[indexPath.row].Name

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let selectedauthor = authors?[indexPath.row] else {return}
        print(selectedauthor.Name )
        performSegue(withIdentifier: "BookSegue", sender: selectedauthor)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let bookvc=segue.destination as? BookVC, let auth=sender as? Author{
            bookvc.author=auth
        }
    }
 

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
