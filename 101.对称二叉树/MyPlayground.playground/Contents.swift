import UIKit

/*
 101.给定一个二叉树，检查它是否是镜像对称的。
 
 例如，二叉树 [1,2,2,3,4,4,3] 是对称的。
 
 1
 / \
 2   2
 / \ / \
 3  4 4  3
 但是下面这个 [1,2,2,null,3,null,3] 则不是镜像对称的:
 
 1
 / \
 2   2
 \   \
 3    3
 说明:
 
 如果你可以运用递归和迭代两种方法解决这个问题，会很加分。

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

func compareTwoNodes(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
    if let left = left, let right = right {
        print("not nil \(left.val) \(right.val)")
        if left.val != right.val {
            return false
        } else {
            if compareTwoNodes(left.left, right.right) == false || compareTwoNodes(left.right, right.left) == false {
                return false;
            }
            return true
        }
    } else {
        if left == nil, right == nil {
            print("all nil")
            return true
        } else {
            return false
        }
    }
}

func isSymmetric(_ root: TreeNode?) -> Bool {
    
    if let root = root  {
        return compareTwoNodes(root.left, root.right);
    }
    return true
}

//[9,25,25,null,-95,-95,null,-100,null,null,-15]

let rootNode = TreeNode(9)

let left = TreeNode(25)
left.left = TreeNode(3)
left.right = TreeNode(-95)
//left.right?.left = TreeNode(-100)


let right = TreeNode(25)
right.left = TreeNode(-95)
right.right = TreeNode(3)
//right.left?.right = TreeNode(-15)

rootNode.left = left
rootNode.right = right

isSymmetric(rootNode)

