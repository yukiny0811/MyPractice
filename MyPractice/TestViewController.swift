//
//  TestViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/26.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

struct someStruct {
    let value = 123
    func printValue(){
        print(value)
    }
}
class TestViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        test1()
        test2()
        test3()
        test4()
        test6()
        test7()
        test8()

        // Do any additional setup after loading the view.
    }
    func test1(){
        print("a")
    }
    func test2(){
        let a: Any = 2
        guard let int = a as? Int else {
            return
        }
        print(int)
        print(type(of: int))
    }
    func test3(){
        let a: Int = 1
        guard let int = a as Optional else {
            return
        }
        print(int)
        print(type(of: int))
    }
    func test4(){
        let a: Any = 1
        guard let int = a as ImplicitlyUnwrappedOptional else {
            return
        }
        print(int)
        print(type(of: int))
    }
    func test5(){
        var array = [[[Int]]]()
        array = [[[], []], [[], []]]
        print(array)
    }
    func test6(){
        let array = [1,2,3]
        var a = array.contains(3)
        var b = array.contains(4)
        print(a, b)
    }
    func test7(){
        let int = 3
//        for a in 8...0{
//            print(a)
//        }
        for b in int+1...8{
            print(b)
        }
    }
    var bool = false
    func test8(){
        if bool == false{
            for a in 0...8{
                guard bool == true else {
                    print("asdfghjkl")
                    return
                }
            }
            print("2222222")
        }
        print("33333")
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
