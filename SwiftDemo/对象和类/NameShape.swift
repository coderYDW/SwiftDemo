//
//  NameShape.swift
//  对象和类
//
//  Created by Apple on 2017/10/12.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

class NameShape: Shape {

    var name111: String
    
    init(name1:String, age:Int) {
        self.name111 = name1
        super.init(name: name1, age: age)
    }
    
    override func simpleDescription() -> String {
        return "A NameShape with \(numberOfSides) sides."
    }
}
