//
//  ViewController.swift
//  SwiftDemo
//
//  Created by limingming on 2020/1/1.
//  Copyright © 2020 xiaoming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let result:[Int] = twoSum([1,2,3,4,5,6], 11)
        print(result)
    }
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result:[Int] = []
        for i: Int in nums {
//            if i > target {
//                continue
//            }else {
                let index:Int = nums.firstIndex(of: i)!
                print(index);
                
                if index < nums.count - 1 {
                    for j in (index + 1)..<nums.count {
                        let numj = nums[j]
                        if i + numj == target {
                            let numi: Int = nums.firstIndex(of: i)!
                            result.append(numi);
                            result.append(j);
                            break
                        }
                    }
                    if result.count == 2 {
                        break
                    }
                }
//            }
        }
        return result
    }
    

}

