//
//  ArrayViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/24.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        basic()
        array2D()
        using()
        update()

        // Do any additional setup after loading the view.
    }
    
    func basic(){
        let a: Array = [1,2,3] //[Int]型
        print(a) //[1, 2, 3]
        let b: [String] = ["a", "b", "c"] //[String]型
        print(b) //["a", "b", "c"]
        var c: [Int] = []
        c.append(1)
        print(c) //[1]
        let d: [Any] = [1, "a"]
        print(d) //[1, "a"]
    }
    func array2D(){
        let a: [[Int]] = [[1,2,3], [4,5,6]] //[[Int]]型 (二次元配列)
        print(a)
    }
    func using(){
        let a = ["abc", "def", "ghi"]
        let a1: String = a[0] //"abc"
        let a2 = a[1] //"def"
        let a3 = a[2] //"ghi"
        print(a1 + a2 + a3)
    }
    func update(){
        var a = ["abc", "def", "ghi"]
        a[1] = "xyz"
        print(a) //["abc, "xyz", "ghi"]
        a.append("jkl")
        print(a) //["abc", "xyz", "ghi", "jkl"]
        a.insert("www", at: 2)
        print(a) //["abc, "xyz", "www", "ghi", "jkl"]
        let b = ["AAA", "BBB"]
        var c = a + b
        print(c) //["abc, "xyz", "www", "ghi", "jkl", "AAA", "BBB"]
        c.remove(at: 1)
        print(c) //["abc", "www", "ghi", "jkl", "AAA", "BBB"]
        c.removeLast()
        print(c) //["abc", "www", "ghi", "jkl", "AAA"]
        c.removeAll()
        print(c) //[]
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
