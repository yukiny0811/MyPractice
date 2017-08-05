//
//  SwitchViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/27.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        basic()
        basic2(1) //a is a positive number
        basic2(-1) //a is a negative number
        basic2(0) //a is zero
        check() //.foo
        keyWord() //値が存在しない,もしくは10以下です

        // Do any additional setup after loading the view.
    }
    func basic(){
//        switch 制御式 {
//        case パターン1:
//            制御式がパターン1にマッチした場合に実行される文
//        case パターン2:
//            制御式がパターン2にマッチした場合に実行される文
//        default:
//            制御式がいずれのパターンにもマッチしなかった場合に実行される文
//        }
    }
    func basic2(_ a: Int){
        switch a {
        case Int.min..<0:
            print("a is a negative number")
        case 1..<Int.max: //教科書ミス
            print("a is a positive number")
        default:
            print("a is zero")
        }
    }
    func check(){
        enum SomeEnum {
            case foo
            case bar
            case baz
        }
        let foo = SomeEnum.foo
        switch foo {
        case .foo:
            print(".foo")
        case .bar:
            print(".bar")
        case .baz:
            print(".baz") //SomeEnum型には3種類しかないからdefaultを書かなくていい
        }
    }
    func keyWord(){
        //default switch文の網羅性の保証、乱用は変更に弱いプログラムを作ってしまう
        //where
//        switch 制御式 {
//        case パターン where 条件式:
//            制御式がパターンにマッチし、かつ、条件式を満たす場合に実行される文
//        default:
//            制御式がいずれのパターンにもマッチしなかった場合に実行される文
//        }
        let optionalA: Int? = 1
        switch optionalA {
        case .some(let a) where a > 10:
            print("10より大きい値a(\(a))が存在します")
        default:
            print("値が存在しない、もしくは10以下です")
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
