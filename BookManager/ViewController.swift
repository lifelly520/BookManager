//
//  ViewController.swift
//  BookManager
//
//  Created by bxdd05 on 16/6/27.
//  Copyright © 2016年 LLY. All rights reserved.
//

import UIKit
import MBProgressHUD

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let URLString = "https://api.douban.com/v2/book/search"
    var tag = "Swift"
    var books = [BookModel]()
    
    // MARK: - IBOutlet -
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.whiteColor();
        
        tableView.estimatedRowHeight = 300
        tableView.rowHeight = UITableViewAutomaticDimension
        
        NetManager.Get(URLString, parameters:["tag":tag, "start":0, "count":10], success: { (responseObject) in
            print("请求成功：\(responseObject)")
            self.books = []
            let dict = responseObject as? [String:NSObject]
            let array = dict!["books"] as? [[String:NSObject]]
            for dict in array! {
                self.books.append(BookModel(dict:dict))
            }
//            print(self.books.count)
            self.tableView .reloadData()
            }) { (error) in
                print("请求错误：\(error)")
        }

        /**
         这是一个注释
         
         - parameter tableView: 关于随意修改的注释
         - parameter section:   测试是否可以fork
         
         - returns: 
         */

        
    }

    
    // MARK: - tabelView
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let bookCell = tableView.dequeueReusableCellWithIdentifier("bookCell") as! BookCell
        bookCell.configureBook(books[indexPath.row])
        return bookCell
        
        
    }
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

