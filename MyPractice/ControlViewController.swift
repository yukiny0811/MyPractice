//
//  ControlViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/28.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class ControlViewController: UIViewController {
    
    var a = 0 //deferFuncで使用

    override func viewDidLoad() {
        super.viewDidLoad()
        basic()
        fallThrough()
        Break()
        Continue()
        Label()
        Defer()
        print(deferFunc()) //0
        print(a) //1
        print(deferFunc()) //1
        print(a) //2
        print(deferFunc()) //2
        print(a) //3

        // Do any additional setup after loading the view.
    }
    func basic(){
        //プログラムの制御で使う文: fallthrough, break, continue, return, throw
    }
    func fallThrough(){ //case 1 case 2 とprintされる
        let a = 1
        switch a {
        case 1:
            print("case 1")
            fallthrough //switch文で、現在の処理を終了し、次のケースに移る
        case 2:
            print("case 2")
        default:
            print("default")
        }
    }
    func Break(){
        let a = 1
        switch a {
        case 1:
            print("この処理は実行される")
            break
            print("この処理はbreak文の後だから実行されない")
        default:
            break //一行は入れないといけないからbreakを入れる
        }
        
        var containsThree = false
        let array = [1, 2, 3, 4, 5]
        for e in array {
            if e == 3{
                containsThree = true
                break //このfor文から抜ける
            }
            print("e: \(e)") //e: 1 e: 2 //e == 3が見つかった時点でfor文を抜けたから3回目のこのprintは実行されない
        }
        print("containsThree: \(containsThree)") //containsThree: true
    }
    func Continue(){
        //continue文はbreakと同じように処理はスキップするが、繰り返しは継続される
        var odds = [Int]()
//        var odds: [Int] = [] //上と同じ意味
        let array = [1, 2, 3]
        for e in array {
            if e % 2 == 1{
                odds.append(e)
                continue
            }
            print("even: \(e)") //2
        }
        print("odds: \(odds)") //[1, 3]
    }
    func Label(){
        for e in [1, 2, 3] { //labelを使わない場合
            print("e: \(e)")
            for nestedE in [1, 2, 3]{
                print("nestedE: \(nestedE)")
                break
            }
        } //e: 1 nE: 1 e: 2 nE: 1 e: 3 nE: 1
        
        //for文の場合
        label1: for element in [1, 2, 3] {
            for nestedElement in [1, 2, 3] {
                print("for文")
                break label1
            }
        }
        
        //while文の場合
        label2: while true {
            while true {
                print("while文")
                break label2
            }
        }
        
        //repeat文の場合
        label3: repeat {
            repeat {
                print("repeat文")
                break label3
            } while true
        } while true
    }
    func Defer(){
//        defer {
//            defer文が記述されているスコープの退出時に実行される文
//        }
    }
    func deferFunc() -> Int{
        defer{
            a += 1 //return a の後に実行される //returnしたときにはaは0のまま
        }
        return a
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
