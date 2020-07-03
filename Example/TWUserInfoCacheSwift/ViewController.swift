//
//  ViewController.swift
//  TWUserInfoCacheSwift
//
//  Created by wangxufeng092@163.com on 11/20/2019.
//  Copyright (c) 2019 wangxufeng092@163.com. All rights reserved.
//

import UIKit
import TWUserInfoCacheSwift
//import TWUserInfoCacheModel

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let userInfo = TWUserInfo.init()
        userInfo.name = "zhangsan"
        userInfo.phone = "123123"
        userInfo.age = "18"
        let model = TWUserInfoCacheModel<TWUserInfo>.init()
        model.userInfo = userInfo
        TWUserInfoCacheManager.storeUserInfoCache(model: model, cacheKey: nil)
        
        let user: TWUserInfoCacheModel<TWUserInfo> = TWUserInfoCacheManager.getUserInfoModel(cacheKey: nil)
        print(user.userInfo?.name ?? "")
        
    }

}

