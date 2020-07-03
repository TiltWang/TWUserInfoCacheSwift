//
//  TWUserInfo.swift
//  TWUserInfoCacheSwift_Example
//
//  Created by Tilt on 2019/11/21.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class TWUserInfo: NSObject, NSCoding {
    
    var name: String?
    var phone: String?
    var age: String?

    func encode(with coder: NSCoder) {
        coder.encode(self.name, forKey: "name")
        coder.encode(self.phone, forKey: "phone")
        coder.encode(self.age, forKey: "age")
    }
    
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as? String
        phone = coder.decodeObject(forKey: "phone") as? String
        age = coder.decodeObject(forKey: "age") as? String
    }
    
    override init() {
        super.init()
    }
}
