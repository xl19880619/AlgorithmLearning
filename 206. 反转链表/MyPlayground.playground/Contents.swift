import UIKit

/*
 反转一个单链表。

 示例:

 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
 进阶:
 你可以迭代或递归地反转链表。你能否用两种方法解决这道题？
 
*/

  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
 }
 
class Solution {
    
//    func reCombine(_ current: ListNode?, _ next: ListNode?) -> ListNode? {
//
//    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        var current  = head
        if current == nil {
            return nil
        }
//        var ar: [Int] = []
        var prev: ListNode?
        while current != nil {
            let temp = current?.next
//            ar.append(current!.val)
            current?.next = prev
            prev = current
//            current = current?.next
            current = temp
        }
//        if ar.count > 0 {
//            var node: ListNode?
//            for value in ar {
//                if node != nil {
//                    let new = ListNode(value)
//                    new.next = node
//                    node = new
//                } else {
//                    node = ListNode(value)
//                }
//            }
//            return node
//        } else {
//            return nil
//        }
        return prev
    }
    
        func reverseList1(_ head: ListNode?) -> ListNode? {
            var current  = head
            if current == nil {
                return nil
            }
            var prev: ListNode?
            while current != nil {
                let temp = current?.next
                current?.next = prev
                prev = current
                current = temp
            }
            return prev
        }
}
