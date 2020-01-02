//
//  ViewController.swift
//  SwiftDemo
//
//  Created by limingming on 2020/1/1.
//  Copyright © 2020 xiaoming. All rights reserved.
//

import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let list1: ListNode = ListNode(5)
        list1.next = ListNode(6)
        list1.next?.next = ListNode(7)
        let list2: ListNode = ListNode(8)
        list2.next = ListNode(7)
        list2.next?.next = ListNode(9)
        let result = addTwoNumbers(list1, list2)
        
    }
    
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2
        var tmp = 0
        var list: ListNode?
        var tmpList: ListNode?
        while (list1 != nil)  || (list2 != nil) {
            var a: Int = 0, b:Int = 0;
            if list1 != nil {
                a = list1!.val
            }
            if list2 != nil {
                b = list2!.val
            }
            var c = a + b + tmp
            if c >= 10 {
                c = c - 10
                tmp = 1
            }else {
                tmp = 0
            }
            if tmpList == nil {
                list = ListNode.init(c)
                tmpList = list
                print(c)
            }else {
                tmpList?.next = ListNode.init(c)
                tmpList = tmpList?.next
                print(c)
            }
            list1 = list1?.next
            list2 = list2?.next
        }
        if tmp > 0 {
            tmpList?.next = ListNode.init(tmp)
        }
        return list
    }
    
    
    //        let result:[Int] = twoSum([1,2,3,4,5,6], 11)
    //        print(result)
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

