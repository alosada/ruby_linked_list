
#The challenge: Implement linked list using arrays.

class Linked_list

  attr_accessor :nodes

  def initialize(node=[])
    @nodes=node
  end

  def first_node(value)
    @nodes=[value,nil] 
  end

  def add_first(value)
    if @nodes.empty?
      first_node(value)
    else
      @nodes = [value,@nodes]
    end
  end

  def add_last(value,nodes=@nodes)
    if nodes[1] == nil
      nodes[1]=[value,nil]
    else
      add_last(value, nodes[1])
    end
  end

  def p_each(nodes=@nodes)
    p nodes[0]
    p_each(nodes[1]) if nodes[1] != nil
  end

  def last(nodes=@nodes)
    return nodes[0] if nodes[1] == nil
    last(nodes[1]) if nodes[1] != nil
  end

  def del_first
   @nodes = @nodes[1]    	
  end

  def del_last(nodes=@nodes)
    nodes[1]=nil if nodes[1][1] == nil
    del_last(nodes[1]) if nodes[1] != nil
  end

  def add_aft(value,target,nodes=@nodes)
    if nodes[0] == target
      nodes[1]=[value, nodes[1]]
    else
      add_aft(value, target, nodes[1])
    end
  end
  
end

