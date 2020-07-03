//
//  TWUserInfoCacheManager.swift
//  TWUserInfoCacheSwift_Example
//
//  Created by Tilt on 2019/11/21.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

let defaultCacheKey = "defaultCacheKey"

class TWUserInfoCacheManager: NSObject {

    //存储用户信息 传入模型 存储的key(可不传 有默认值)
    public class func storeUserInfoCache<T>(model: TWUserInfoCacheModel<T>, cacheKey: String?) {
        let key: String = cacheKey ?? defaultCacheKey
        model.cacheKey = key
        let filePath = TWUserInfoCacheManager.getUserInfoCachePath(cacheKey: key)
        NSKeyedArchiver.archiveRootObject(model, toFile: filePath)
    }
    
    //存储用户信息 传入模型 存储的key(可不传 有默认值)
    public class func storeUserInfoCache(userInfoModel: AnyObject, cacheKey: String?) {
        let key: String = cacheKey ?? defaultCacheKey
//        userInfoModel
//        let classType = type(of: userInfoModel)
//        let classType = userInfoModel.classForCoder ?? NSObject.self//type(of: userInfoModel)
//        userInfoModel.type
        
        let model = TWUserInfoCacheModel<AnyObject>.init()
        model.userInfo = userInfoModel
        let filePath = TWUserInfoCacheManager.getUserInfoCachePath(cacheKey: key)
        NSKeyedArchiver.archiveRootObject(model, toFile: filePath)
    }
    
    //获取用户信息 存储的key 请与存信息时的key值保持一致
    public class func getUserInfoModel<T>(cacheKey: String?) -> TWUserInfoCacheModel<T> {
        let key: String = cacheKey ?? defaultCacheKey
        let filePath = TWUserInfoCacheManager.getUserInfoCachePath(cacheKey: key)
        
        return NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as! TWUserInfoCacheModel<T>
    }
    
    //获取存储路径
    public class func getUserInfoCachePath(cacheKey: String) -> String {
        let path: String = TWUserInfoCacheCommon.getAppLocalDocumentPath()
        let tailStr = cacheKey + ".userinfo"
        return URL(fileURLWithPath: path).appendingPathComponent(tailStr).path
    }
    
    
}
