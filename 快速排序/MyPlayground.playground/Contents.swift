import UIKit

/*
 复杂度 O(n*log n)
 ```
 //快速排序
*/

func quickSort(_ ar : Array<Int>) -> Array<Int> {
    
    if ar.count < 2 {
        return ar;
    } else {
        let value = ar.first!
        var leftAr : [Int] = []
        var rightAr : [Int] = []
        for i in 1 ..< ar.count {
            if ar[i] < value {
                leftAr.append(ar[i])
            } else {
                rightAr.append(ar[i])
            }
        }
        return quickSort(leftAr) + [value] + quickSort(rightAr)
    }
}


