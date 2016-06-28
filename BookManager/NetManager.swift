//
//  NetManager.swift
//  BookManager
//
//  Created by bxdd05 on 16/6/27.
//  Copyright © 2016年 LLY. All rights reserved.
//

import UIKit
import AFNetworking
import MBProgressHUD
import Toast

struct NetManager {

    static let netError = "网络异常"
    
    static func Get(URLString:String, parameters:[String:NSObject]?,showHUD:Bool = true,
                    success:((NSObject?) ->Void)?,
                    failure:((NSError) -> Void)?
                    ) {
        
        let manager = AFHTTPSessionManager()
        manager.requestSerializer.timeoutInterval = 10
        
        let mainWindow = UIApplication.sharedApplication().delegate!.window!
    
        if showHUD {
            MBProgressHUD.showHUDAddedTo(mainWindow, animated: true)
        }
        
        manager.GET(URLString, parameters: parameters, progress: nil, success: { (task, responseObject) in
            
                if showHUD {
                    MBProgressHUD.hideHUDForView(mainWindow, animated: true)
                }
                success?(responseObject as? NSObject)
            
            }) { (task, error) in
                
                if showHUD {
                    MBProgressHUD.hideHUDForView(mainWindow, animated: true)
                    mainWindow?.makeToast(netError)
                }
                failure?(error)
                
        }
    }
    
    
    static func Post(URLString:String, parameters:[String:NSObject]?,showHUD:Bool = true,
                    success:((NSObject?) ->Void)?,
                    failure:((NSError) -> Void)?
        ) {
        
        let manager = AFHTTPSessionManager()
        manager.requestSerializer.timeoutInterval = 10
        
        let mainWindow = UIApplication.sharedApplication().delegate!.window!
        
        if showHUD {
            MBProgressHUD.showHUDAddedTo(mainWindow, animated: true)
        }
        
        manager.POST(URLString, parameters: parameters, progress: nil, success: { (task, responseObject) in
            
            if showHUD {
                MBProgressHUD.hideHUDForView(mainWindow, animated: true)
            }
            success?(responseObject as? NSObject)
            
        }) { (task, error) in
            
            if showHUD {
                MBProgressHUD.hideHUDForView(mainWindow, animated: true)
                mainWindow?.makeToast(netError)
            }
            failure?(error)
            
        }
    }

    
    
    
}














