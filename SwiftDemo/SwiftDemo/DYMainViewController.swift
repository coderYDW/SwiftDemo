//
//  DYMainViewController.swift
//  SwiftDemo
//
//  Created by Apple on 2017/10/11.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

let SCREEN_WIDTH = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
let IS_IPHONEX = SCREEN_HEIGHT >= 812.0 ? true : false
let STATUS_BAR_HEIGHT = IS_IPHONEX ? 44.0 : 20.0
let NAV_BAR_HEIGHT = 44.0

class DYMainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    // MARK: - 属性
    let tableview:UITableView = UITableView()
    
    // MARK: - 生命周期
    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.dataSource = self
        tableview.delegate = self
        tableview.frame = CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
        self.view.addSubview(tableview)
    }
    
    // MARK: - 数据源方法
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableview.dequeueReusableCell(withIdentifier: "table")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "table")
        }
        cell?.textLabel?.text = "section:\(indexPath.section) row:\(indexPath.row)"
        
        return cell!
    }
    

}