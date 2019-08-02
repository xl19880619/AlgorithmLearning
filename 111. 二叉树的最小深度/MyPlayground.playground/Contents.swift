import UIKit

/*
 给定一个二叉树，找出其最小深度。
 
 最小深度是从根节点到最近叶子节点的最短路径上的节点数量。
 
 说明: 叶子节点是指没有子节点的节点。
 
 例如:
 给定二叉树: [3,9,20,null,null,15,7],
 
  3
 / \
9  20
  /  \
 15   7
 
返回它的最小深度  2.
 
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
    func minDepth(_ root: TreeNode?) -> Int {
        
        guard let root = root else {
            return 0
        }
        //创建结果对象
        var result: Int = 0
        //创建类似队列的数组，用于进行广度排列搜索
        var queue: [TreeNode] = []
        //添加第一级对象进入队列
        queue.append(root)
        while queue.count > 0 {
            result += 1
            var childs: [TreeNode] = []
            for item in queue {
                if item.left == nil && item.right == nil {
                    return result
                }
                if let left = item.left {
                    childs.append(left)
                }
                if let right = item.right {
                    childs.append(right)
                }
            }
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

print(Solution.init().minDepth(rootNode))
