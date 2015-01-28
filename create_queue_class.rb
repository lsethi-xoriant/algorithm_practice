#create a queue class

# Queue: First in, first out

# first
# last
# enqueue(item) #add
# dequeue #remove
# is_empty?

class Queue
  def initialize
    @list = []
  end

  def first
    @list[0]
  end

  def last
    @list[-1]
  end

  def enqueue(item)
    @list.push(item)
  end

  def dequeue
    @list.shift
  end

  def is_empty?
    @list == []
  end
end

new_queue = Queue.new
p new_queue.is_empty? == true
new_queue.enqueue(1)
new_queue.enqueue(2)
p new_queue.first == 1
p new_queue.last == 2
p new_queue.is_empty? == false
new_queue.dequeue
p new_queue.first == 2
new_queue.dequeue
p new_queue.is_empty? == true
