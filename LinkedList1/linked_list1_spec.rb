require 'rspec'
require '../LinkedList1/linked_list1'

describe "LinkedList1" do

  it 'should print values' do
    node1 = LinkedListNode.new(37)
    node2 = LinkedListNode.new(99, node1)
    node3 = LinkedListNode.new(12, node2)

    expect { LinkedListNode.print_values(node3) }.
      to output("12 --> 99 --> 37 --> nil\n").to_stdout
  end
end