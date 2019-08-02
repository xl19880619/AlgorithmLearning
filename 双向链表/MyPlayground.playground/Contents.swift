import UIKit

/*
 1.创建节点结构
 2.创建链表结构
 3.添加head tail
 4.实现basic function
 5.实现extention
 6.实现范型
*/

public class Node<T> {
    
    var value: T
    
    var next: Node<T>?
    
    weak var previous: Node<T>?
    
    init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    
    fileprivate var head: Node<T>?
    
    private var tail: Node<T>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node<T>? {
        return head
    }
    
    public var list: Node<T>? {
        return tail
    }
    
    public func append(value: T) {
        //1
        let newNode = Node(value: value)
        //2
        if let tailNode = tail {
            tailNode.next = newNode
            newNode.previous = tailNode
        } else {
            //3
            head = newNode
        }
        //4
        tail = newNode
    }
    
    public func nodeAt(_ index: Int) -> Node<T>? {
        //1
        if index >= 0 {
            var node = head
            var i = index
            //2
            while node != nil {
                if i == 0 {
                    return node
                }
                i -= 1
                node = node!.next
            }
        }
        //3
        return nil
    }
    
    public func removeAll() {
        head = nil
        tail = nil
    }
    
    public func remove(_ node: Node<T>) -> T {
        let prev = node.previous
        let next = node.next
        
        //middle
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        
        next?.previous = prev
        
        if next == nil {
            tail = prev
        }
        
        //
        node.previous = nil
        node.next = nil
        
        //
        return node.value
    }
}
//1
extension LinkedList : CustomStringConvertible {
    //2
    public var description: String {
        //3
        var text = "["
        var node = head
        //
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil {
                text += ", "
            }
        }
        text += "]"
        return text
    }
}

let dogBreeds = LinkedList<String>()
dogBreeds.append(value: "Labrador")
dogBreeds.append(value: "Bulldog")
dogBreeds.append(value: "Beagle")
dogBreeds.append(value: "Husky")

print(dogBreeds)

let numbers = LinkedList<Int>()
numbers.append(value: 10)
numbers.append(value: 15)
numbers.append(value: 20)
print(numbers)

