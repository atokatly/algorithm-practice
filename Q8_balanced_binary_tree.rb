def is_balanced(tree_root)

  # Handles if a tree is balanced and has no leaves
  if !tree_root
      return true
  end

  depths = []

  # Array is a stack that will store pairs [node, depth]
  nodes = []
  nodes.push([tree_root, 0])

  while !nodes.empty?
      # pop a node and its depth from the top of our stack
      node, depth = nodes.pop
      if !node.left && !node.right
          if !depths.include? depth
              depths.push(depth)
              if (depths.length > 2) || \
                      (depths.length == 2 && (depths[0] - depths[1]).abs > 1)
                  return false
              end
          end
      # This isn't a leaf, continue onwards
      else
          if node.left
              nodes.push([node.left, depth + 1])
          end
          if node.right
              nodes.push([node.right, depth + 1])
          end
      end
  end
  return true
end
