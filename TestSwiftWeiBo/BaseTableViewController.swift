//
//  BaseTableViewController.swift
//  TestSwiftWeiBo
//
//  Created by yi cai on 2017/4/26.
//  Copyright © 2017年 gdgsg. All rights reserved.
//

import UIKit

class BaseTableViewController: BaseViewController {
    lazy var tableView: UITableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
     view.addSubview(tableView)
    }
    
    override func viewWillLayoutSubviews() {
        setUpUILayout()
    }
}

// MARK: - UI
extension BaseTableViewController {
    func setUpUILayout() {
        tableView.frame = view.bounds
    }
}
