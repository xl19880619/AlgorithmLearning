import UIKit

/*
1. 两数之和


给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。

你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。

*/
//001
func sumTwo(_ nums : [Int], _ target : Int) -> [Int] {
    for index in 0..<nums.count {
        let value = nums[index]
        print("value:\(value)" )
        for other in index+1..<nums.count {
            let otherValue = nums[other]
            print("otherValue\(otherValue)")
            if value + otherValue == target {
                return [index, other]
            }
        }
    }
    return [0, 0]
}
sumTwo([3,2,4,5,6,7,8,9], 6)

