//
//  CharacterViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/23.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController {
    let str: String = "abcde"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cha: String.CharacterView = str.characters //基本形
        let cha2: Character = cha[cha.startIndex] //a
        print(cha2)
        let cha3: String.CharacterView.Index = cha.index(cha.startIndex, offsetBy: 1) //b
        let cha4: String.CharacterView.Index = cha.index(cha.endIndex, offsetBy: -1) //e
        let s1 = str[cha3]
        let s2: Character = str[cha4]
        print(s1)
        print(s2)
        let cha5: String.CharacterView.Index = cha.index(cha.startIndex, offsetBy: 2) //c
        let s3 = str[cha5]
        print(s3)
        let cha6 = cha.index(cha.startIndex, offsetBy: 0) //a
        let s4 = str[cha6]
        print(s4)
//        let cha7 = cha.index(cha.endIndex, offsetBy: 0)
//        let s5 = str[cha7]
//        print(s5)               //error
        print(cha.count) //文字数のカウント
        for cha in cha { //要素の列挙
            print(cha) //五行に分けて a, b, c, d, e
        }
        stringAndCharacter()
        appendStringAndCharacter()
        compareStringAndCharacter()
    }
    func stringAndCharacter(){
        let s: String = "abc"
        let cha: Character = "a"
        let cha2: Character = "b"
        let b: Bool = cha == cha2
        print(b) //false
        let b2: Bool = s == String(cha)
        print(b2) //false
    }
    func appendStringAndCharacter(){
        var s: String = "abc"
        let c: Character = "d"
        s.append(c)
        print(s) //abcd
        var s2: String = "abc"
        let s3: String = "def"
        s2.append(s3)
        print(s2) //abcdef
    }
    func compareStringAndCharacter(){
        let op = String.CompareOptions.caseInsensitive //CaseInsensitiveで大文字と小文字の区別をなくす
        let order = "abd".compare("ABC", options: op) //compareで二つの文字列感の順序を検証
        let b: Bool = order == ComparisonResult.orderedSame //true //orderedSameは文字列の順序が同じ
        print(b)
        print("abc".range(of: "bc")!)
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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
