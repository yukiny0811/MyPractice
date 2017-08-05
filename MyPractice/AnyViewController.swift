//
//  AnyViewController.swift
//  MyPractice
//
//  Created by 桑島侑己 on 2017/07/25.
//  Copyright © 2017年 桑島侑己. All rights reserved.
//

import UIKit

class AnyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        basic()

        // Do any additional setup after loading the view.
    }
    func basic(){
        //Any型はどんな型の値でも入る
        let s: Any = "abc"
        let i: Any = 123
        let i2: Any = 456
        //print(i + i2) 実行時エラー
        print(s, i, i2)
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
