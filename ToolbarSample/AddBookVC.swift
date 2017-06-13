//
//  AddBookVC.swift
//  ToolbarSample
//
//  Created by shaik mulla syed on 9/18/1438 AH.
//  Copyright © 1438 shaik mulla syed. All rights reserved.
//

import UIKit
import os.log

class AddBookVC: UIViewController {
    
    var newbook:Book!
    
    @IBOutlet weak var closeBtn:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func bookAdded(_ sender: UIButton) {
        newbook=Book(title: "New Book", coverimage: #imageLiteral(resourceName: "bill_gates"), pages: [
            Page(pageno: 1, pagetext: "This is page one"),
            Page(pageno: 2, pagetext: "This is page two")
            ])

    }
    

    @IBAction func closeBtnClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("seguing")
    }
    
}
