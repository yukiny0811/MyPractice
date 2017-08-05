//
//  IfViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/26.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class IfViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ifBasic()
        ifElse()
        ifLet()
        ifCase()

        // Do any additional setup after loading the view.
    }
    func ifBasic(){
        //        if 条件式{
        //            条件式がtrueの場合に実行される文
        //        }
        let a = 2
        if a <= 3{
            print("\(a) is smaller than 3")
        }
        let b: Bool = true
        let b2 = !b
        if b{
            print("b is true")
        }
        if b2{
            //            print("b2 is not true") //b2がfalseだから実行されない
        }
        print(b2)
    }
    func ifElse(){
        //        if 条件式{
        //            条件式がtrueの場合に実行される文
        //        } else {
        //            条件式がfalseの場合に実行される文
        //        }
        let a = 3
        if a < 2{
            //            print("a < 2") //falseだから実行されない
        } else {
            print("a >= 2")
        }
        //        if 条件式1{
        //            条件式1がtrueの場合に実行される文
        //        } else if 条件式2{
        //            条件式1がfalseかつ条件式2がtrueの場合に実行される文
        //        } else {
        //            条件式1と条件式2の両方がfalseの場合に実行される文
        //        }
        let b = 1
        if b > 1{
            //            print("1")
        } else if b == 0{
            //            print("0")
        } else {
            print("b")
        }
    }
    func ifLet(){
        //        if let 定数名 = Optional<Wrapped>型の値{
        //            値が存在する場合に実行される文
        //        } else {
        //            値が存在しない場合に実行される文
        //        }
        let optionalA: Int? = 1 //let optionalA = Optional(1)
        if let a = optionalA{
            print("値は\(a)です")
        } else {
            print("値は存在しません")
        }
        let optionalB: Int? = nil //let optionalB = Optional(nil)
        if let b = optionalB{
            print("値は\(b)です")
        } else {
            print("値は存在しません")
        }
        
        let optionalA2 = Optional("a2")
        let optionalB2 = Optional("b2")
        if let a2 = optionalA2, let b2 = optionalB2{
            print(a2, b2) //両方に値がある場合に実行される文
        } else {
            print("どちらかの値が存在しません")
        }
        
        let a: Any = 2
        if let i = a as? Int{
            print(type(of: i), i) //Int 2
            //iはこの中でしか使えない
        }
    }
    func ifCase(){
//        if case パターン = 制御式{
//            制御式がパターンにマッチした場合に実行される文
//        }
        let a = 9
        if case 1...10 = a{
            print("1以上10以下の値です")
        }
        let b = 11
        if case 1...10 = b{
            //print("1以上10以下の値です")
        } else {
            print("11以上の値です")
        }
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
