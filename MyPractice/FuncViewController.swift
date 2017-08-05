//
//  FuncViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/28.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class FuncViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(timesTwo(5)) //10
//        let 定数名 = 関数名(引数名1: 引数1, 引数名2: 引数2)
        _ = functionWithDiscardableResult() //必要ない戻り値 //"discardable"
        functionWithDiscardableResult2() //"discardable2"
        printInt(3) //3 //実引数
        invite(user: "He", to: "Group")
        defaultParameters() //this is a
        defaultParameters(a: "this is not a") //this is not a
        print(search(byQuery: "aaa", ascending: true)) //[1,2,3]
        
        

    }
//    func 関数名(引数名1: 型, 引数名2: 型...) -> 戻り値の型{
//        関数呼び出し時に実行される文
//        必要に応じてreturn文で戻り値を返却する
//    }
    func timesTwo(_ x: Int) -> Int{
        return x * 2
    }
    func functionWithDiscardableResult() -> String{
        return "discardable"
    }
    @discardableResult //discardableResult属性をつける
    func functionWithDiscardableResult2() -> String{
        return "discardable2"
    }
    func printInt(_ int: Int){ //仮引数
        print(int)
    }
    func invite(user: String, to group: String) { //toが外部引数名, groupが内部引数名 //toはこのfuncの外、groupは
//        このfuncの中で使える。
        print("\(user, group)")
    }
    func defaultParameters(a: String = "this is a"){ //デフォルト引数
        print(a)
    }
    func search(byQuery query: String, sortKey: String = "id", ascending: Bool = false) -> [Int]{
        return [1,2,3]
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
