//
//  RangeViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/24.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class RangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        basic()
        using()

        // Do any additional setup after loading the view.
    }
    
    func basic(){
        //Range<Bound>
        //CountableRange<Bound>
        //ClosedRange<Bound>
        //CountableClosedRange<Bound>型がある
        //範囲演算子 ..<, ...　がある
        //..<は上の二つの型、...は下の二つの型用
        let a = 1..<4 //CountableRange<Int>型(Int型のみ) //1~3の範囲
        for b in a{
            print(b) //1, 2, 3
        }
        let a2: Range<Int> = 1..<4 //Range<Int>型
        print(a2)
        let c = 1...4 //CountableClosedRange<Int>型
        for d in c{
            print(d) //1, 2, 3, 4
        }
        let c2: ClosedRange<Int> = 1...4
        print(c2)
        let e = 1..<3 //CountableRange<Int>型
        let e2 = 1.0..<3.0 //Range<Double>型
        let e3 = 1..<3 //Range<Float>型
        print(e)
        print(e2)
        print(e3)
    }
    func using(){
        let a = 1.0..<4.0
        print(a.lowerBound) //1.0
        print(a.upperBound) //4.0
        let b = 1...4
        print(b.lowerBound) //1
        print(b.upperBound) //4
        print(b.contains(2)) //true
        print(b.contains(5)) //false
        
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
