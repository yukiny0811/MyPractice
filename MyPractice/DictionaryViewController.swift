//
//  DictionaryViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/24.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class DictionaryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        basic()
        practical()
        using()
        update()

        // Do any additional setup after loading the view.
    }
    func basic(){
        let a = ["a": 1, "b": 2] //[Key: Value] //[String: Int]型
        let b: [String: Int] = [:] //空の辞書
        print(a)
        print(b)
    }
    func practical(){
        let a: [String: [Int]] = ["even": [2,4,6,8], "odd": [1,3,5,7]] //[String: [Int]]型
        print(a)
    }
    func using(){
        let a = ["key": 1]
        let value = a["key"]
        print(value!) //1 //Optional型で返される
        
        let exist = a["key"] != nil //true
        let exist2 = a["key2"] != nil //false
        print(exist)
        print(exist2)
    }
    func update(){
        var a = ["key": 1]
        a["key"] = 2 //更新
        print(a) //["key": 2]
        
        var b = ["key1": 1]
        b["key2"] = 2 //追加
        print(b) //["key2": 2, "key1": 1]
        
        var c = ["key2": 1]
        c["key2"] = nil //削除
        print(c) //[:]
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
