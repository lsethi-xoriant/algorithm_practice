# Implement a Queue class using two stacks. You may assume you have a stack class with the four methods listed below.

# Stack and Queue Cheat Sheet

# Queue: First in, first out

# first
# last
# enqueue(item) #add
# dequeue #remove
# is_empty?

# Stack: Last in, first out

# peek
# pop #remove
# push(item) #add
# is_empty?

# class Stack
#   def initialize
#     @list = []
#   end

#   def peek
#     @list[-1]
#   end

#   def remove
#     @list.pop
#   end

#   def add(item)
#     @list.push(item)
#   end

#   def is_empty?
#     @list == []
#   end
# end

# class Queue
#   def initialize
#     @stack1 = Stack.new
#     @stack2 = Stack.new
#   end

#   def first
#     move_to_stack_2
#     @stack2.peek
#   end

#   def last
#     move_to_stack_1
#     @stack1.peek
#   end

#   def enqueue(item)
#     move_to_stack_1
#     @stack1.add(item)
#   end

#   def dequeue
#     move_to_stack_2
#     @stack2.remove
#   end

#   def is_empty?
#     @stack1.is_empty? && @stack2.is_empty?
#   end

#   private

#   def move_to_stack_2
#     until @stack1.is_empty? do
#       @stack2.add(@stack1.remove)
#     end
#   end

#   def move_to_stack_1
#     until @stack2.is_empty? do
#       @stack1.add(@stack2.remove)
#     end
#   end
# end

# queue = Queue.new
# p queue.is_empty? == true
# queue.enqueue(1)
# queue.enqueue(2)
# p queue.first == 1
# p queue.last == 2
# queue.enqueue(3)
# p queue.dequeue == 1
# p queue.dequeue == 2
# queue.enqueue(4)
# p queue.first == 3
# p queue.last == 4
# p queue.is_empty? == false
# p queue.dequeue == 3
# p queue.dequeue == 4
# p queue.is_empty? == true



class Queue
  attr_reader :stack1, :stack2
  def initialize
    @stack1 = []
    @stack2 = []
  end

  def first
    move_to_stack2
    @stack2[-1]
  end

  def last
    move_to_stack1
    @stack1[-1]
  end

  def enqueue(item)
    move_to_stack1
    @stack1.push(item)
  end

  def dequeue
    move_to_stack2
    @stack2.pop
  end

  def is_empty?
    @stack1 == [] && @stack2 == []
  end

  private
  def move_to_stack2
    until @stack1 == [] do
      @stack2.push(@stack1.pop)
    end
  end

  def move_to_stack1
    until @stack2 == [] do
      @stack1.push(@stack2.pop)
    end
  end
end

queue = Queue.new
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
p queue.first == 1
p queue.last == 3
queue.enqueue(4)
p queue.last == 4
queue.dequeue
p queue.first == 2
p queue.last == 4
queue.dequeue
queue.dequeue
p queue.is_empty? == false
p queue.first == 4
p queue.last == 4
queue.dequeue
p queue.is_empty? == true

