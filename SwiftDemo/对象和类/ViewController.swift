//
//  ViewController.swift
//  对象和类
//
//  Created by Apple on 2017/10/11.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let shape = Shape.init()
        
        print(shape.a)
        
        shape.mesthed1(num: shape.a)
        // TODO: - 学习到15页
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    let a = 11
    fileprivate func mesthed1(num:Int) {
        print(num)
    }
}
