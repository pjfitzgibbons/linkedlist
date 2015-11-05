require 'rspec'
require '../LinkedList1/linked_list1'

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

def reverse_list(list)
  # ADD CODE HERE

  while list
    # ADD CODE HERE
    list = list.next_node
  end

  # ADD CODE HERE
end

RSpec.describe "LinkedList1" do
  let(:node1) { LinkedListNode.new(37) }
  let(:node2) { LinkedListNode.new(99, node1) }
  let(:node3) { LinkedListNode.new(12, node2) }

  it 'should print values' do
    expect { print_values(node3) }.
      to output("12 --> 99 --> 37 --> nil\n").to_stdout
  end

  it "should print reverse values" do
    expect {
      print_values(node3)

      puts "-------"

      revlist = reverse_list(node3)

      print_values(revlist)
    }.to output(<<EOD
12 --> 99 --> 37 --> nil
------
37 --> 99 --> 12 --> nil
EOD
         )
  end
end