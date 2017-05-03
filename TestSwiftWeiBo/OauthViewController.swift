//
//  OauthViewController.swift
//  TestSwiftWeiBo
//
//  Created by yi cai on 2017/4/27.
//  Copyright © 2017年 gdgsg. All rights reserved.
//

import UIKit

class OauthViewController: BaseViewController {
    lazy var webView = UIWebView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
    }


    /*
    // MARK: - Navigation
     App Key：343908998
     App Secret：0a694c2b26fac0a0737de4823352c1a9
    */

}


// MARK : - UI
extension OauthViewController {
    private func setUpNavItem() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "关闭", style: .plain, target: self, action: Selector(("closeItemClick")))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "填充", style: .plain, target: self, action: Selector(("fillItemClick")))
        webView.frame = view.bounds
        title = "授权"
    }
    
    private func loadOauthPage() {
        let urlStr = "https://api.weibo.com/oauth2/authorize?client_id=3014923605&redirect_uri=https://www.baidu.com"
        let url:URL = URL(string: urlStr)!
        let request:URLRequest = URLRequest(url: url)
        webView.loadRequest(request)
    }
}
// MARK : - Event
extension OauthViewController {
    private func closeItemClick() {
        
    }
    
    private func fillItemClick() {
        
    }
    
    func getLoginTockenWithCode(code:String) {
        
    }
}

extension OauthViewController :UIWebViewDelegate {

    func webViewDidFinishLoad(_ webView: UIWebView) {
        
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        let tempStr = request.url?.absoluteString
        if let urlStr = tempStr {
            let range = urlStr.contains("code=")
            guard range else {
                return true
            }
            let code:String = urlStr.components(separatedBy: "code=").last!
            getLoginTockenWithCode(code: code)
        }

        
        return true
    }
}
