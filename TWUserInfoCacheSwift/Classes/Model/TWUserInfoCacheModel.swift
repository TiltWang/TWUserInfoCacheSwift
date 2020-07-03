//
//  TWUserInfoCacheModel.swift
//  TWUserInfoCacheSwift_Example
//
//  Created by Tilt on 2019/11/21.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

//T为将要存储的模型
class TWUserInfoCacheModel<T> : NSObject, NSCoding {
    
    //存储到本地的缓存key
    var cacheKey: String!
    //存储的模型
    var userInfo: T?
    
    func encode(with coder: NSCoder) {
        coder.encode(self.cacheKey, forKey: "cacheKey")
        coder.encode(self.userInfo, forKey: "userInfo")
    }
    
    required init?(coder: NSCoder) {
        cacheKey = coder.decodeObject(forKey: "cacheKey") as? String
        userInfo = coder.decodeObject(forKey: "userInfo") as? T
    }
    
    override init() {
        super.init()
    }
}


