//
//  GuardViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/26.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class GuardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        basic()
        printIfPositive(a: 1) //1
        printIfPositive2(2) //2
        guardLet()
        print(addWithIf(nil, 3) as Any) //a has no value //nil
        print(addWithIf(nil, nil) as Any) //a has no value //nil
        print(addWithIf(2, 3) as Any) //aaa //Optional(5)
        print(addWithGuard(nil, 2) as Any) //a has no value //nil
        print(addWithGuard(nil, nil) as Any) //a has no value //nil
        print(addWithGuard(1, 2) as Any) //a and b both has value //Optional(3)

        // Do any additional setup after loading the view.
    }
    func basic(){
//        guard 条件式 else{
//            条件式がfalseの場合に実行される文
//            guard文が記述されているスコープの外に退出する必要がある
//        }
        let a = 1
        guard a <= 0 else{
            print("aは0以上の値です")
            return //スコープから退出 (=func basicからの退出)
        }
//        print("b") //この部分はguard文があることによって実行されない
    }
    func printIfPositive(a: Int){
        guard a > 0 else {
            return
        }
//        guard文以降ではa > 0が成り立つことが保証される
        print(a)
    }
    func printIfPositive2(_ b: Int){
        guard b > 0 else{
            return
        }
        print(b)
    }
    func guardLet(){
        let a: Any = 1
        guard let int = a as? Int else{
            print("aはInt型ではありません")
            return
        }
        print("\(int)は\(type(of: int))型です")
    } //Test1も参照
    func addWithIf(_ optionalA: Int?, _ optionalB: Int?) -> Int?{ //->の後はreturnで返される値の型?
        let a: Int
        if let unwrappedA = optionalA{
            a = unwrappedA
        } else {
            print("a has no value")
            return nil //-> Int?で指定した型に入る型
        }
        let b: Int
        if let unwrappedB = optionalB{
            b = unwrappedB
        } else {
            print("b has no value")
            return nil
        }
        print("aaa")
        return a + b //return Int?型の値
    }
    func addWithGuard(_ optionalA: Int?, _ optionalB: Int?) -> Int?{
        guard let a = optionalA else {
            print("a has no value")
            return nil
        }
        guard let b = optionalB else {
            print("b has no value")
            return nil
        }
        print("a and b both has value")
        return a + b
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
