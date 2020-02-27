import UIKit

/*

 给定一个包含 n 个整数的数组 nums，判断 nums 中是否存在三个元素 a，b，c ，使得 a + b + c = 0 ？找出所有满足条件且不重复的三元组。
 
 注意：答案中不可以包含重复的三元组。
 
 例如, 给定数组 nums = [-1, 0, 1, 2, -1, -4]，
 
 满足要求的三元组集合为：
 [
 [-1, 0, 1],
 [-1, -1, 2]
 ]
 

*/

func threeSum(_ nums: [Int]) -> [[Int]] {
    var set: Set = Set(nums)
    var result: [[Int]] = []
    for i in 0..<nums.count {
        for j in 0..<nums.count {
            if i == j {
                continue
            }
            let sum = nums[i] + nums[j]
            if set.contains(0-sum) {
                
            }
            
        }
    }
    return result
}

