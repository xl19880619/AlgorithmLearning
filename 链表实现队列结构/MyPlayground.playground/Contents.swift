import UIKit

public class Queue<T> {
    //1
    fileprivate var list = LinkedList<T>()
    
    //2
    public func enqueue(_ element : T) {
        list.append(value: element)
    }
    
    public func dequeue() -> T? {
        guard !list.isEmpty, let element = list.first else {
            return nil
        }
        list.remove(element)
        return element.value
    }
    
    public func peek() -> T? {
        guard !list.isEmpty, let element = list.first else {
            return nil
        }
        return element.value
    }
    
    public var isEmpty: Bool {
        return list.isEmpty
    }
}


extension Queue: CustomStringConvertible {
    public var description: String {
        return list.description
    }
}

