//
//  OptionalViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/25.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class OptionalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        basic()
        using()
        unwrap()
        optionalChaining()
        unwrapped()

        // Do any additional setup after loading the view.
    }
    func basic(){
        enum Optional<Wrapped> { //この先のコードと関係ない
            case none
            case some(Wrapped)
        }
        let none = Optional<Int>.none
        let some = Optional<Int>.some(1)
        print(none) //none
        print(some) //some(1)
        let some2 = Optional.some(2) //Optional<Int>型
        print(some2) //some(2)
    }
    func using(){
        var a: Int?
        a = nil //nilを代入してnoneを生成
        a = Optional(1)
        a = 1
        let b: Int? = nil
        let c: String? = nil
        let b2 = Optional(1)
        let c2 = Optional("a")
        print(a as Any) //as Anyは警告を消すため //Optional(1)
        print(b as Any) //nil
        print(b2 as Any) //Optional(1)
        print(c as Any) //nil
        print(c2 as Any) //Optional("a")
    }
    func unwrap(){
        /*  if let a = Optional<Wrapped>型の値{
                値が存在する場合に実行される文
            } */
        let a = Optional("a") //String?型
        if let b = a{ //オプショナルバインディング
            print(type(of: b)) //aに値がある場合のみ実行される //String
        }
        
        let x: Int? = 1
        let int = x ?? 3 //??演算子
        print(int) //1
        let y: Int? = nil
        let int2 = y ?? 3
        print(int2) //3
        
        let k: Int? = 1
        print(k as Any) //as Anyはいらない //Optional(1)
        print(k!) //1 //強制アンラップ
    }
    func optionalChaining(){
        let optionalD = Optional(1.0)
        let optionalIsInfinite: Bool?
        if let d = optionalD {
            optionalIsInfinite = d.isInfinite
        } else {
            optionalIsInfinite = nil
        }
        print(optionalIsInfinite as Any) //Optional(false)
        
        let optionalDouble = Optional(1.0)
        let optionalIsInfinite2 = optionalDouble?.isInfinite
        print(optionalIsInfinite2 as Any) //Optional(false)
        
        let optionalRange = Optional(1..<10)
        let containsSeven = optionalRange?.contains(7)
        print(containsSeven as Any) //Optional(true)
    }
    func unwrapped(){
        //ImplicitlyUnwrappedOptional<Wrapped>型 //自動強制アンラップ
//        enum ImplicitlyUnwrappedOptional<Wrapped>{
//            case none
//            case some(Wrapped)
//        }
        let some = ImplicitlyUnwrappedOptional.some(1)
        let none: Int! = ImplicitlyUnwrappedOptional.none
        print(some as Any) //Optional(1)
        print(none as Any) //nil
        
        var a: Int!
        a = nil
        a = ImplicitlyUnwrappedOptional(1)
        a = 1
        print(a) //1
        
        var s1: String? = "a"
        var s2: String! = "b"
        print("a: type=\(type(of: s1)), value=\(String(describing: s1))") //String(describing)はいらない//a
        print("b: type=\(type(of: s2)), value=\(s2)") //b
        let x = s2
        s1 = s2
        s2 = x
        print("a: type=\(type(of: s1)), value=\(String(describing: s1))") //b
        print("b: type=\(type(of: s2)), value=\(s2)") //b
        
        let i: Int! = 1
        print(i + 1)
        let i2: Int! = nil
        //print(i2 + 1) //実行時エラー
        print(i2)
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
