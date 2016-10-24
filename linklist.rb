class LinkedListNode
  attr_accessor :value, :next_node
  
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_reader :top
  
  def initialize
    @top = nil
  end
  
  def push(value)
    @top = LinkedListNode.new(value, @top)
  end
  
  def pop
    node_value = @top.value
    @top = @top.next_node
    return node_value
  end
end

def print_values(list_node)
  output = ""
  if list_node
    output += "#{list_node.value} --> "
    output +=  print_values(list_node.next_node)
  else
    output += "nil\n"
    return output
  end
end

#pop method
def reverse_list(node)
  bottom = LinkedList.new
  while node != nil
    bottom.push(node.value)
    node = node.next_node
  end
  bottom
end

#using mutation method

#def reverse_list(node, previous=nil)
#previous = nil

#while node
#current_node  = node
#next_node = current_node.next_node
#current_node.next_node = previous
#node = next_node
#previous = current_node
#end
#current_node
#end

#Ken method(cheating)

#def reverse_list(list)
#reversed= nil
#while list
#reversed=linkedListNode.new(list.value,reversed)
#list = list.next_node
#end
#return reversed
#end

#complicated ways to solve using mutation
#def reverse_list(list. previous = nil)
#while list
#previous_next_node = list.next_node
#list.next_node = previous
#previous = listreturn list if previous_next_node = nil
#list = previous_next_node
#end
#return list
#end
