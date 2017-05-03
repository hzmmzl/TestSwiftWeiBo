//
//  VisitorView.swift
//  TestSwiftWeiBo
//
//  Created by yi cai on 2017/4/27.
//  Copyright © 2017年 gdgsg. All rights reserved.
//

import UIKit

class VisitorView: UIView {
  class func visitorView() -> VisitorView {
    //   类方法
        return Bundle.main.loadNibNamed("VisitorView", owner: nil, options: nil)?.first as! VisitorView
    }
    
    @IBOutlet weak var rotationView: UIImageView!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var registerBtn: UIButton!
    
    func setUpVisitorView(iconName:String,tipName:String) {
        iconView.image = UIImage(named: iconName)
        tipLabel.text = tipName
    }
    func rotationAnimation() {
        let animation: CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.fromValue = 0
        animation.toValue = M_PI * 2
        animation.repeatCount = Float(MAXFRAG)
        animation.duration = 5
        animation.isRemovedOnCompletion = false
        rotationView.layer.add(animation, forKey: nil)
    }
}
