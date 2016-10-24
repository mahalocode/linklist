require 'spec_helper'
RSpec.describe LinkedListNode do
  
  before (:each) do
    @node1 = LinkedListNode.new(37)
    @node2 = LinkedListNode.new(99, @node1)
    @node3 = LinkedListNode.new(12, @node2)
  end
  
  it "should assign correct value" do
    expect(@node1.value).to eql(37)
  end
  
  it "should assign nil for next node on first" do
    expect(@node1.next_node).to eql(nil)
  end
  
  it "should assign node1 to next node" do
    expect(@node2.next_node).to eql(@node1)
  end
  
  
  revlist = reverse_list(@node3)
  #print_values(revlist)
  result = print_values(revlist.top)
  expect(result).to eql("37 --> 99 --> 12 --> nil\n")
end
end
