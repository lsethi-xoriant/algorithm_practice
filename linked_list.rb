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
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(value, nil)
  end

  def add_at_index(value, index)
    current_node = @head
    current_index = 1

    if index == 0
      linking_nodes = current_node
      @head = Node.new(value, linking_nodes)
    end
    while current_index <= index
      if current_index == index
        linking_nodes = current_node.next_node
        current_node.next_node = Node.new(value, linking_nodes)
      end
      current_node = current_node.next_node
      current_index += 1
    end
  end

  def delete_node(value)
    current_node = @head
    #checking if node matches the first
    if current_node.value == value
      @head = @head.next_node
    else
      while current_node.next_node.value != value
        current_node = current_node.next_node
      end
      if current_node.next_node != nil
        current_node.next_node = current_node.next_node.next_node
      end
    end
  end

  def display
    # Traverse through the list till you hit the "nil" at the end
    current_node = @head
    full_list = []
    while current_node.next_node != nil
      full_list << current_node.value
      current_node = current_node.next_node
    end
      full_list <<current_node.value
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




puts "INITIAL LIST"
linked_list.display


linked_list.add_at_index(0, 0)
linked_list.add_at_index("INDEX 2", 2)
linked_list.add_at_index("index 5", 5)

puts "AFTER ADDING NEW NODES AT SPECIFIC INDICIES"
linked_list.display


linked_list.delete_node(0)
linked_list.delete_node("INDEX 2")
linked_list.delete_node("index 5")

# puts "-------------------------------------------------"

puts "DELETING ALL NEWLY ADD NODES TO GET ORIGINAL LINKED LIST"
linked_list.display

