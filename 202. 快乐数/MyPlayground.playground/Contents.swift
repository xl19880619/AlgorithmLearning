import UIKit

/*
 202. 快乐数
编写一个算法来判断一个数 n 是不是快乐数。

「快乐数」定义为：对于一个正整数，每一次将该数替换为它每个位置上的数字的平方和，然后重复这个过程直到这个数变为 1，也可能是 无限循环 但始终变不到 1。如果 可以变为  1，那么这个数就是快乐数。

如果 n 是快乐数就返回 True ；不是，则返回 False 。

 

示例：

输入：19
输出：true
解释：
12 + 92 = 82
82 + 22 = 68
62 + 82 = 100
12 + 02 + 02 = 1

来源：力扣（LeetCode）
链接：https://leetcode-cn.com/problems/happy-number
著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

*/

func isHappy(_ n: Int) -> Bool {
    var fast: Int = n
    var slow: Int = n
    fast = quartSum(quartSum(fast))
    slow = quartSum(slow)
//    print("fast \(fast) slow \(slow)")
    while fast != slow {
//        print("fast \(fast) slow \(slow)")
        fast = quartSum(quartSum(fast))
        slow = quartSum(slow)
    }
    if fast == 1 && slow == 1 {
        return true
    }
    return false
}

func quartSum(_ n: Int) -> Int {
    var sum = 0
    var value = n
    
    while value != 0 {
        let v = value % 10;
//        print("value \(value)")
        sum = sum + v * v
        value = value/10
//        print("sum \(sum) value \(value)")
    }
    return sum
}

isHappy(19)

