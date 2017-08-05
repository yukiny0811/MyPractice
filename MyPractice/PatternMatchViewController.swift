//
//  PatternMatchViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/28.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class PatternMatchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        basic()
        expressionPattern()
        valueBindingPattern()
        enumerationCasePattern()
        typeCastingPattern()

        // Do any additional setup after loading the view.
    }
    func basic(){
        //パターンの種類
        //式、バリューバインディング、列挙型ケース、型キャスティングパターン
    }
    func expressionPattern(){
        let int = 9
        switch int{
        case 6:
            print("match 6")
        case 5...10:
            print("match 5...10")
        default:
            print("default")
        }
        
        let integer = 3
        if 6 ~= integer{
            print("match 6")
        } else if 0...5 ~= integer{
            print("match 0...5")
        } else {
            print("no match")
        } //~=演算子はtrueの時に実行される
    }
    func valueBindingPattern(){
        let a = 3
        switch a {
        case let matchedA:
            print(matchedA)
        }
    }
    func enumerationCasePattern(){
        enum Hemisphere {
            case northern
            case southern
        }
        let hem = Hemisphere.northern
        switch hem{
        case .northern:
            print("match .northern")
        case .southern:
            print("match .southern")
        }
        
        enum Color {
            case rgb(Int, Int, Int)
            case cmyk(Int, Int, Int, Int)
        }
        let col = Color.rgb(100, 200, 255)
        switch col {
        case .rgb(let r, let g, let b):
            print(".rgb: \(r, g, b)")
        case .cmyk(let c, let m, let y, let k):
            print(".cmyk: \(c, m, y, k)")
        }
    }
    func typeCastingPattern(){
        //is演算子による評価
        let any: Any = 1
        switch any {
        case is String:
            print("match String")
        case is Int:
            print("match Int")
        default:
            print("default")
        }
        
        //as演算子による評価
        let any2: Any = 2
        switch any2 {
        case let str as String:
            print("match String(\(str))")
        case let int as Int:
            print("match Int(\(int))")
        default:
            print("default")
        }
        
        let any3: Any = 3
        if let str2 = any3 as? String{
            print("match String(\(str2))")
        } else if let int2 = any3 as? Int{
            print("match Int(\(int2))")
        } else {
            print("default")
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
