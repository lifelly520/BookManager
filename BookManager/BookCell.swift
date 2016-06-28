//
//  BookCell.swift
//  BookManager
//
//  Created by bxdd05 on 16/6/27.
//  Copyright © 2016年 LLY. All rights reserved.
//

import UIKit
import SDWebImage

class BookCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var rating: UIView!
    
    @IBOutlet weak var detail: UILabel!
    
    
    func configureBook(book:BookModel) {
        
        icon.sd_setImageWithURL(NSURL(string:book.image))
        
        
        title.text = book.title
        detail.text = book.title
        
        var detailStr = ""
        
        for str in book.author {
            
            detailStr += (str + "/")
        }
        
        detail.text = detailStr + book.publisher
        
    }
    
    
    
    
    
    
    
    
}
