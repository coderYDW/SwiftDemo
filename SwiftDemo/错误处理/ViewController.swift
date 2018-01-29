//
//  ViewController.swift
//  错误处理
//
//  Created by Yangdongwu on 2018/1/29.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

enum PrinterError: Error {
    case OutOfPaper
    case NoToner
    case OnFire
}


var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        do {
//            let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
//            print(printerResponse)
//        } catch {
//            print(error)
//        }
        
        
//        do {
//            let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
//            print(printerResponse)
//        } catch PrinterError.OnFire {
//            print("I'll just put this over here, with the rest of the fire.")
//        } catch let printerError as PrinterError {
//            print("Printer error: \(printerError).")
//        } catch {
//            print(error)
//        }
        
        
//        do {
//            let printResponse = try send(code: 1004, toPrinter: "1")
//            print(printResponse)
//        }
//        catch let printerError as PrinterError {
//            print(printerError)
//        }
//        catch {
//            print(error)
//        }

        
        
        fridgeContains("banana")
        print(fridgeIsOpen)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func fridgeContains(_ food: String) -> Bool {
        fridgeIsOpen = true
        defer {
            fridgeIsOpen = false
        }
        let result = fridgeContent.contains(food)
        return result
    }
    
    func send(job: Int, toPrinter printerName: String) throws -> String {
        if printerName == "Never Has Toner" {
            throw PrinterError.NoToner
        }
        else if printerName == "OnFire" {
            throw PrinterError.OnFire
        }
        else if printerName == "OutOfPaper" {
            throw PrinterError.OutOfPaper
        }
        return "Job sent"
    }
    
    func send(code:Int,toPrinter printName: String) throws -> String {
        
        if printName == "1" {
            throw PrinterError.OutOfPaper
        }
        else if printName == "2" {
            throw PrinterError.NoToner
        }
        else if printName == "3" {
            throw PrinterError.OnFire
        }
        
        return "nm"
        
    }
    
    
}

