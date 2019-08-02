import UIKit

/*
选择排序的复杂度为O(n*n)，大O表示法忽略常熟，类似1/2这样
*/

func findSmallest(_ ar : Array<Int>) -> Int? {
    if ar.count > 0 {
        var smallest = ar[0]
        var index = 0
        for i in 0 ..< ar.count {
            if ar[i] < smallest {
                smallest = ar[i]
                index = i
            }
        }
        return index
    }
    return nil;
}

func selectionSort(_ ar : Array<Int>) -> Array<Int> {
    var result : [Int] = []
    let count = ar.count
    var arr = ar
    for _ in 0 ..< count {
        let smallest = findSmallest(arr)
        if smallest != nil {
            result.append(arr[smallest!])
            arr.remove(at: smallest!)
        }
    }
    return result
}

print(selectionSort([5,3,6,2,10]))


