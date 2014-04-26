load 'linked_list.rb'

print 'Created empty node: '
linked=Linked_list.new
p linked.nodes == []

print "Added first node 'b': "
linked.add_first('b')
p linked.nodes == ["b", nil]

linked.add_first('a')
print "Added node 'a' to the start of the chain: "
p linked.nodes == ["a", ["b", nil]]

print "Added nodes 'c', 'd', 'e' and 'f' to the end of the chain: "
linked.add_last('c')
linked.add_last('d')
linked.add_last('e')
linked.add_last('f')
p linked.nodes == ["a", ["b", ["c", ["d", ["e", ["f", nil]]]]]]

print "Returns the last value of the chain "
p linked.last == 'f'

print "Deleted the first link of chain: "
linked.del_first
p linked.nodes == ["b", ["c", ["d", ["e", ["f", nil]]]]]

linked.del_last

linked.add_aft('M','c')

puts "Puts each elemnt of the list: "
linked.p_each