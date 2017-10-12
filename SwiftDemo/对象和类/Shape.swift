//
//  Shape.swift
//  对象和类
//
//  Created by Apple on 2017/10/12.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

class Shape: NSObject {
    
    var age : Int {
        
        willSet {
            print("将要设置")
        }
        
        didSet {
            print("已经设置")
        }
        
    }

    var name : String?
    
    init(name : String?, age:Int) {
        self.name = name
        self.age = age
    }
    
    var numberOfSides = 0
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    let a = 11
    
    func mesthed1(num:Int) {
        print(num)
    }
    
    }
