//
//  TWUserInfoCacheCommon.swift
//  TWUserInfoCacheSwift_Example
//
//  Created by Tilt on 2019/11/21.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class TWUserInfoCacheCommon: NSObject {
    
    //获取APP 本地Document路径
    //保存应用运行时生成的需要持久化的数据，iTunes同步设备时会备份该目录。
    public class func getAppLocalDocumentPath() -> String {
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
    }
    
    //获取APP 本地Library/Caches路径
    //保存应用运行时生成的需要持久化的数据，iTunes同步设备时不会备份该目录。
    public class func getAppLocalCachesPath() -> String {
        return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first ?? ""
    }
    
    //获取APP 本地tmp路径
    //保存应用运行时所需的临时数据，使用完毕后再将相应的文件从该目录删除。 应用没有运行时，系统也可能会清除该目录下的文件。iTunes同步设备时不会备份该目录
    public class func getAppLocalTmpPath() -> String {
        return NSTemporaryDirectory()
    }
    
    //其他
    //Library/Preference 偏好设置
    //保存应用的所有偏好设置，iOS的Settings(设置)应用会在该目录中查找应用的设置信息。iTunes同步设备时会备份该目录
}
