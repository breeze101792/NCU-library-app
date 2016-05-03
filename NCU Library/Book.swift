//
//  Book.swift
//  tester
//
//  Created by nculib on 2016/4/15.
//  Copyright © 2016年 NCU. All rights reserved.
//

import Foundation

class Book {
    var title: String{
        get{
        return self.title
        }
        set(str){
            self.title = str
        }
    }
    var isbn10: UInt64{
        get{
            return self.isbn10
        }
        set(num){
//            TODO need to check if it is fit 13 digits or throw an exception
            self.isbn10 = num
        }
    }
    var isbn13: UInt64{
        get{
            return self.isbn13
        }
        set(num){
//            TODO need to check if it is fit 13 digits or throw an exception
//            if (num < pow(10,12)){
//                return -1
//            }
            self.isbn13 = num
        }
    }
    var author: String{
        get{
            return self.author
        }
        set(str){
            self.author = str
        }
    }
    var publisher: String?{
        get{
            return self.publisher
        }
        set(str){
            self.publisher = str
        }
    }
    
    
    init(title: String, isbn:UInt64){
        self.title = title
        if (isbn < 1000000000000){
            self.isbn10 = isbn
            self.isbn13 = 0
        }
        else{
            self.isbn10 = 0
            self.isbn13 = isbn
        }
        
    }
}

class NCUBook: Book{
    var location: String?{
        get{
            return self.location
        }
        set(str){
            self.location = str
        }
    }
    var barcode: Int?{
        get{
            return self.barcode
        }
        set(num){
            self.barcode = num
        }
    }
    override init(title: String, isbn:UInt64){
        super.init(title: title, isbn: isbn)
    }
}

