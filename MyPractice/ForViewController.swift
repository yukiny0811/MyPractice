//
//  ForViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/27.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class ForViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        basic()
        arrayForIn() //1 2 3
        dictionaryForIn() //1 2
        forCase()

        // Do any additional setup after loading the view.
    }
    func basic(){
//        for 要素 in 値の連続{
//            要素ごとに実行される文
//        }
    }
    func arrayForIn(){
        let array = [1, 2, 3]
        for a in array {
            print(a)
        } //Array<Element>型の要素をfor-in文で列挙すると、要素の方はElement型になる
    }
    func dictionaryForIn(){
        let dic = ["a": 1, "b": 2]
        for (a, b) in dic { //Dictionary<Key: Value>型の場合、要素の型は(Key, Value)型のタプルになる
            print(a)
            print(b)
        }
    }
    func forCase(){
//        for case パターン in 値の連続{
//            要素がパターンにマッチした場合に実行される文
//        }
        let array = [1, 2, 3, 4]
        for case 2...3 in array {
            print("2以上3以下の値です") //実行したらこれが二回実行される
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
