# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  num1 = parse_ll l1
  num2 = parse_ll l2

  sum = (num1+num2).to_s.split("").reverse.map{|i| i.to_i}

  head=nil
  current=nil

  sum.each do |digit|
      new_node = ListNode.new(digit)

      if head.nil?
          head = new_node
          current = head
      else
          current.next = new_node
          current = current.next
      end
  end


  head
  
end

def parse_ll ll
  tmp = []

  while ll != nil
      tmp.push(ll.val)
      ll = ll.next
  end

  tmp.reverse.join("").to_i
end

=begin
Input: l1 = [2,4,3], l2 = [5,6,4]
Output: [7,0,8]
Explanation: 342 + 465 = 807.
=end