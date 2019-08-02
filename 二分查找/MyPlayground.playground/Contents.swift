import UIKit

/*
二分查找的复杂度为 O(log n)，与简单查找相比，数据量越大，区别越大
*/

func binarySearch(_ list : Array<Int>, _ item : Int) -> Int? {
    var low = 0
    var high = list.count - 1
    var times = 1000
    while low <= high {
        let mid = (high + low)/2;
        print("mid:\(mid)")
        let value = list[mid];
        if value == item {
            return mid;
        }
        if value < item {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
        //容错
        times -= 1
        if times == 0 {
            return nil
        }
    }
    return nil;
}

var intArray : [Int] = []
for index in 0..<1000 {
    intArray.append(index*2)
}

print(binarySearch(intArray, 888))


