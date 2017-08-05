//
//  TupleViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/25.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class TupleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        basic()

        // Do any additional setup after loading the view.
    }
    func basic(){
        var t: (Int, String) //Tuple型 //(Int, String)型
        t = (1, "a")
        
        print(t) //(1, "a")
        let i = t.0 //インデックスによる値へのアクセス
        let s = t.1
        print(i, s) //1, "a"
        
        let t2 = (i1: 2, s1: "b")
        let int = t2.i1 //要素名による値へのアクセス
        let string = t2.s1
        print(int, string) //2, "b"
        
        let int2: Int
        let string2: String
        (int2, string2) = (3, "c") //値の代入によるアクセス
        print(int2) //3
        print(string2) //"c"
        //
        let (int3, string3) = (3, "c")
        print(int3) //3
        print(string3) //"c"
        
        () //Void型　要素の型が0個のタプル型
        print(()) //()
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
