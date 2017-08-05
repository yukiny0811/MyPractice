//
//  CastViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/26.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class CastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        judge()
        upCast()
        downCast()

        // Do any additional setup after loading the view.
    }
    func judge(){
        let a: Any = 1
        let isInt: Bool = a is Int //true
        print(isInt)
    }
    func upCast(){
        //階層関係が重要
        let a = "abc" as Any //String型をAny型にアップキャスト
        let b: Any = "abc" //String型をAny型に暗黙的にアップキャスト
        print(a, b)
    }
    func downCast(){
        //as?演算子を使うと値はOptional型になる
        let a = 1 as Any
        let i = a as? Int //i = Optional(1)
        let s = a as? String //s = nil
        print(i as Any, s as Any)
        //as!演算子は強制キャスト
        let a2 = 2 as Any
        let i2 = a2 as! Int //i1 = 2
        //let s2 = a2 as! String //実行時エラー
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
