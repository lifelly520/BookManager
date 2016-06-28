//
//  BookModel.swift
//  BookManager
//
//  Created by bxdd05 on 16/6/27.
//  Copyright © 2016年 LLY. All rights reserved.
//

import UIKit

struct BookModel {
    
     let KeyID = "id"
     let KeyIsbn10 = "isbn10"
     let KeyIsbn13 = "isbn13"
     let KeyTitle = "title"
     let KeyOrigin_title = "origin_title"
     let KeyAlt_title = "alt_title"
     let KeySubtitle = "subtitle"
     let KeyUrl = "url"
     let KeyAlt = "alt"
     let KeyImage = "image"
     let KeyImages = "images"
     let KeyAuthor = "author"
     let KeyTranslator = "translator"
     let KeyPublisher = "publisher"
     let KeyRating = "rating"
     let KeyTags = "tags"
     let KeyBinding = "binding"
     let KeyPrice = "price"
     let KeySeriec = "seriec"
     let KeyPages = "pages"
     let KeyAuthor_intro = "author_intro"
     let KeySummary = "summary"
     let KeyCatalog = "catalog"
     let KeyPrebook_priceice = "prebook_priceice"
     let KeyEbook_url = "ebook_url"
    
    
    var id = ""
    var isbn10 = "" //老的10位图书编码
    var isbn13 = ""
    var title = ""
    var origin_title = ""
    var alt_title = ""
    var subtitle = ""
    var url = ""
    var alt = ""
    var image = ""
    var images = [String:String]() // key small larage medium
    var author = [String]() //作者姓名
    var translator = [String]() // 翻译作者
    var publisher = "" // 出版社
    var rating = ""
    var tags = [[String:NSObject]]()
    var binding = "" // 平装 精装
    var price = ""
    var seriec = [String:String]()
    var pages = "" //页数
    var author_intro = ""
    var summary = "" // 摘要
    var catalog = "" // 序言
    var prebook_priceice = ""
    var ebook_url = ""

    
    init(dict:[String:NSObject]) {
    
        id = dict[KeyID] as? String ?? ""
        isbn10 = dict[KeyIsbn10] as? String ?? ""
        isbn13 = dict[KeyIsbn13] as? String ?? ""
        title = dict[KeyTitle] as? String ?? ""
        origin_title = dict[KeyOrigin_title] as? String ?? ""
        alt_title = dict[KeyAlt_title] as? String ?? ""
        subtitle = dict[KeySubtitle] as? String ?? ""
        url = dict[KeyUrl] as? String ?? ""
        alt = dict[KeyAlt] as? String ?? ""
        image = dict[KeyImage] as? String ?? ""
        images = dict[KeyImages] as? [String:String] ?? [:]
        author = dict[KeyAuthor] as? [String] ?? []
        translator = dict[KeyTranslator] as? [String] ?? []
        publisher = dict[KeyPublisher] as? String ?? ""
        rating = dict[KeyRating] as? String ?? ""
        tags = dict[KeyTags] as? [[String:NSObject]] ?? []
        binding = dict[KeyBinding] as? String ?? ""
        price = dict[KeyPrice] as? String ?? ""
        seriec = dict[KeySeriec] as? [String:String] ?? [:]
        pages = dict[KeyPages] as? String ?? ""
        author_intro = dict[KeyAuthor_intro] as? String ?? ""
        summary = dict[KeySummary] as? String ?? ""
        catalog = dict[KeyCatalog] as? String ?? ""
        prebook_priceice = dict[KeyPrebook_priceice] as? String ?? ""
        ebook_url = dict[KeyEbook_url] as? String ?? ""
        
    }
    
    
    
    
    
}
