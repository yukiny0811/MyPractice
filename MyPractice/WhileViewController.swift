//
//  WhileViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/28.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class WhileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        basic()
        repeatWhile()

        // Do any additional setup after loading the view.
    }
    func basic(){
//        while 条件式{
//            条件が成立する間、繰り返し実行される文
//        }
        var a = 1
        while a < 4{
            print(a)
            a += 1
        }
    }
    func repeatWhile(){
//        repeat {
//            1回は必ず実行され、それ以降は条件式が成立する限り繰り返し実行される文
//        } while 条件式
        //if文だと
        var a = 1
        while a < 1{
            print(a)
            a += 1
        } //最初からa < 1が成り立たないから実行されない
        //repeat文だと
        var b = 1
        repeat {
            print(b) //1
            b += 1
        } while a < 1
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
