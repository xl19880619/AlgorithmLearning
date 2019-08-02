import UIKit

/*
 给定一个二叉树，返回其按层次遍历的节点值。 （即逐层地，从左到右访问所有节点）。
 
 例如:
 给定二叉树: [3,9,20,null,null,15,7],
 
  3
 / \
9  20
  /  \
 15   7
 返回其层次遍历结果：
 
 [
 [3],
 [9,20],
 [15,7]
 ]
 
*/

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

public class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        
        guard let root = root else {
            return []
        }
        //创建结果对象
        var result: [[Int]] = []
        //创建类似队列的数组，用于进行广度排列搜索
        var queue: [TreeNode] = []
        //添加第一级对象进入队列
        queue.append(root)
        while queue.count > 0 {
            var childs: [TreeNode] = []
            //子数组对象，用于存储result 里不同级的结果
            var value: [Int] = []
            for item in queue {
                //添加子数组值
                value.append(item.val)
                if let left = item.left {
                    childs.append(left)
                }
                if let right = item.right {
                    childs.append(right)
                }
            }
            result.append(value)
            queue.removeAll()
            //添加下一级对象
            if childs.count > 0 {
                queue = queue + childs
            }
        }
        
        return result
    }
    
}

//[3,9,20,null,null,15,7]

let rootNode: TreeNode = TreeNode(3)

let left = TreeNode(9)
//left.left = TreeNode(3)
//left.right = TreeNode(-95)
//left.right?.left = TreeNode(-100)


let right = TreeNode(20)
right.left = TreeNode(15)
right.right = TreeNode(7)
//right.left?.right = TreeNode(-15)

rootNode.left = left
rootNode.right = right

print(Solution.init().levelOrder(rootNode))
