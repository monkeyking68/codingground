# Q1
set n 1
 while {$n <= 100} {
 #set the length to be 1 to 100
if {[expr $n%15] ==0} {
#if n is the mutiple of 3 and 5
   puts "Hello World!"
   incr n
} elseif {[expr $n%3] ==0} {
#if n is the mutiple of 3
   puts "Hello"
   incr n
} elseif {[expr $n%5] ==0} {
#if n is the mutiple of 5
   puts "World"
   incr n
} else {
#if n is none of the case above
    puts $n
    incr n
}
}
