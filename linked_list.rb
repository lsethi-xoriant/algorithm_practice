# Linked List

# Create a linked list in Ruby

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

class LinkedList

  def initialize(value)
    @head = Node.new(value, nil)
  end

  def add_node(value)
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(value, nil)
    # self
  end

  def delete_node(value)
    current = @head
    #checking if node matches the first
    if current.value == value
      @head = @head.next_node
    else
      while current.next_node.value != value
        current = current.next_node
      end
      if current.next_node != nil
        current.next_node = current.next_node.next_node
      end
    end
  end

  def display
    # Traverse through the list till you hit the "nil" at the end
    current = @head
    full_list = []
    while current.next_node != nil
      full_list << current.value
      current = current.next_node
    end
      full_list <<current.value
      puts full_list.join(" --> ")
  end

end

linked_list = LinkedList.new("1")
linked_list.add_node("2")
linked_list.add_node("3")
linked_list.add_node("4")
linked_list.add_node("5")
linked_list.add_node("6")
linked_list.add_node("7")




puts "This displays the linked list with all the nodes"
linked_list.display


linked_list.delete_node("3")

puts "-------------------------------------------------"

puts "This displays linked list AFTER it deletes a node"
linked_list.display

p linked_list