import UIKit

/*

 2. 两数相加
 
 给出两个 非空 的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储 一位 数字。
 
 如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。
 
 您可以假设除了数字 0 之外，这两个数都不会以 0 开头。

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
    
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var node : ListNode? = ListNode(0)
    var v1 = l1
    var v2 = l2
    var shouldContinue = true
    var values : [Int] = []
    while (shouldContinue) {
        var value : Int = node?.val ?? 0
        if v1?.val != 0 {
            value += v1!.val
        }
        if v2?.val != 0 {
            value += v2!.val
        }
        if value >= 10 {
            node?.next = ListNode(1)
            value = value - 10
        } else {
            node?.next = ListNode(0)
        }
        node?.val = value
        values.append(value)
        if v1?.next == nil && v2?.next == nil && node?.next?.val == 0 {
            node?.next = nil
            shouldContinue = false
        }else {
            v1 = v1?.next ?? ListNode(0)
            v2 = v2?.next ?? ListNode(0)
            node = node?.next
        }
    }
    values = values.reversed()
    var result : ListNode? = ListNode(values[0])
    for index in 1..<values.count {
        let node : ListNode? = ListNode(values[index])
        node?.next = result
        result = node
    }
    return result
}

let l1 : ListNode? = ListNode(5)
//l1?.next = ListNode(8)

let l2 : ListNode? = ListNode(5)
let node = addTwoNumbers(l1, l2)
print(node)
