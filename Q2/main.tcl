#Define the list
set list {2 3 89 51 64 32 75 88 56 57}
#sort the list
set newlist [lsort -real $list]
#find the length
set length [llength $list]
    # Find the median for odd number of elements
    if {$length & 1} {
        set median [lindex $newlist [expr {($length-1)/2}]]
    }
    # Find the median for even number of elements
    set idx2 [expr {$length/2}]
    set idx1 [expr {$idx2-1}]
    set median [expr {
        ([lindex $newlist $idx1] + [lindex $newlist $idx2])/2.0 }]
#find the sum of the list
set sum [expr [join $list +]]
#find the average of the list
set ave [expr $sum/$length]
#sort the list in decreasing order
set delist [lsort -real -decreasing $list]
#find the item with 9
set ninelist [lsearch -all -inline -regexp $list 9]

puts "The old list is: $list"
puts "The median of the list is: $median"
puts "The average of the list is: $ave"
puts "The sum of the list is: $sum"
puts "The sorted list is: $delist"
puts "The list of the number contains 9: $ninelist"


