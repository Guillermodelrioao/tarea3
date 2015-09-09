#Solution File
class Node
  attr_accessor :value, :next

  def initialize(value)
      @value = value
  end
end

class LinkedList
  attr_accessor :head, :tail
  unless defined?(t)
  	t=true
  	end
  @x
  while t
  	x=gets.chomp
  	if x==(-1)
  		t=false
  	end

  end
  # Initialize head and tail to same initial Node.
  def initialize (head)
      raise "LinkedList must be initialized with a Node." unless head.is_a?(Node)
          
      @head = head
      @tail = head
  end

  # Insert Node after the tail of the LinkedList.
  def insert(node)
      @tail.next = node
      @tail = @tail.next
  end

  # Print out all the values of the LinkedList in order.
  def print
      current_node = @head
      
      while current_node != nil
          puts "\tLL Node Value = #{current_node.value}"
          

  # Iterate through LinkedList and yield values to block.
  def iterate
      if block_given?
          current_node = @head

          while current_node != nil
              yield current_node.value
              current_node = current_node.next
          end
      else
          print
      end
  end
end
