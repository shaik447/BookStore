//
//  Models.swift
//  ToolbarSample
//
//  Created by shaik mulla syed on 6/10/17.
//  Copyright © 2017 shaik mulla syed. All rights reserved.
//

import UIKit

class Author{
    private var _name:String!
    private var _books:[Book]!
    
    var Name:String{
        return _name ?? "SAMPLE NAME"
        
    }
    
    var Books:[Book]{
        get{
            return _books ?? [Book]()
        }
    }
    
    func addBook(book:Book){
        _books.append(book)
    }
    
    func removeBook(book:Book){
        let index=_books.index { (rbook) -> Bool in
            rbook.Title == book.Title
        }
        if let ind=index{
            _books.remove(at: ind)
        }
    }
    
    init(name:String, books:[Book]) {
        self._name=name
        self._books=books
    }
    
}

class Book{
    private var _title:String!
    private var _coverImage:UIImage!
    private var _pages:[Page]!
    
    var CoverImage:UIImage{
        return _coverImage
    }
    
    var Title:String{
        return _title ?? "SAMPLE TITLE"
    }
    
    var Pages:[Page]{
        return _pages ?? [Page]()
    }
    
    init(title:String,coverimage:UIImage,pages:[Page]) {
        self._title=title
        self._coverImage=coverimage
        self._pages=pages
    }
}

class Page{
    private var _pageNo:Int!
    private var _pageText:String!
    
    var PageNo:Int{
        return _pageNo ?? 0
    }
    
    var PageText:String{
        return _pageText ?? "SAMPLE TEXT FOR SAMPLE PAGE"
    }
    
    
    init(pageno:Int,pagetext:String) {
        self._pageNo=pageno
        self._pageText=pagetext
    }
}
