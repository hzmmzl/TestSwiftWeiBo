//
//  UserAccountInfo.swift
//  TestSwiftWeiBo
//
//  Created by yi cai on 2017/4/27.
//  Copyright © 2017年 gdgsg. All rights reserved.
//

import UIKit

class UserAccountInfo: NSObject , NSCoding {
    var access_token : String?
///    过期时间-->秒
    var expires_in : TimeInterval = 0.0 {
        didSet {
            expires_date = Date(timeIntervalSince1970: expires_in)
        }
    }
    /// 过期日期
    var expires_date : Date?

    /// 用户的头像地址
    var avatar_large : String?
    ///昵称
    var screen_name : String?
    
    var uid : CLongLong?
    
    init(dict:[String:AnyObject]) {
        super.init()
        setValuesForKeys(dict)
    }
    
   class func accountWithDic(dict:[String:AnyObject]) -> UserAccountInfo {
        return UserAccountInfo.init(dict: dict)
    }
    
    // MARK:- 重写description属性
    override var debugDescription: String {
        return dictionaryWithValues(forKeys: ["access_token", "expires_date", "uid", "screen_name", "avatar_large"]).description
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}

    
    //MARK: - 归档，解档
    required init(coder aDecoder: NSCoder) {
        self.access_token = aDecoder.decodeObject(forKey: "access_token") as? String
        self.expires_date = aDecoder.decodeObject(forKey: "expires_date") as? Date
//        self.expires_in = (aDecoder.decodeObject(forKey: "expires_in") as? TimeInterval)!
        self.uid = aDecoder.decodeObject(forKey: "uid") as? CLongLong
        self.avatar_large = aDecoder.decodeObject(forKey: "avatar_large") as? String
        self.screen_name = aDecoder.decodeObject(forKey: "screen_name") as? String
        
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(access_token, forKey: "access_token")
//        aCoder.encode(expires_in, forKey: "expires_in")
        aCoder.encode(expires_date, forKey: "expires_date")
        aCoder.encode(uid, forKey: "uid")
        aCoder.encode(avatar_large, forKey: "avatar_large")
        aCoder.encode(screen_name, forKey: "screen_name")
    }
}


// MARK: - 保存读取用户信息
//extension UserAccountInfo {
//    class func account() -> UserAccountInfo {
////        expires_date
//    }
//    
//    func saveAccount(userAccount:UserAccountInfo) {
//        
//    }
//}
