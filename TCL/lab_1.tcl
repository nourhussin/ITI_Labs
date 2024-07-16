puts "----------------Problem 1---------------------"
set in1 10; set in2 5
puts "Perfurm: $in1 + $in2 = [expr $in1 + $in2]"
puts "Perfurm: $in1 - $in2 = [expr $in1 - $in2]"
puts "Perfurm: $in1 * $in2 = [expr $in1 * $in2]"
puts "Perfurm: $in1 / $in2 = [expr $in1 / $in2]"
puts "Perfurm: $in1 ** $in2 = [expr $in1 ** $in2]"
puts "Perfurm: $in1 % $in2 = [expr $in1 % $in2]"
puts "Perfurm: $in1 >> $in2 = [expr $in1 >> $in2]"
puts "Perfurm: $in1 << $in2 = [expr $in1 << $in2]"


puts "----------------Problem 2---------------------"
puts "IN1 = $in1\nIN2 = $in2"
if {$in1 > $in2} {
  puts "IN1 > IN2"
} elseif {$in1 == $in2} {
  puts "IN1 == IN2"
} else {
  puts "IN1 < IN2"
}


puts "----------------Problem 3---------------------"
set evaluation 9
puts "Evaluation Test Score: $evaluation"

if {$evaluation == 10} {
  puts "Excellent"
} elseif {$evaluation == 9} {
  puts "Very Good"
} elseif {$evaluation == 8} {
  puts "Good"
} elseif {$evaluation == 7} {
  puts "Up Normal"
} elseif {$evaluation == 6} {
  puts "Normal"
} elseif {$evaluation < 6} {
  puts "Bad"
} else {
  puts "Can not be determined"
}

switch $evaluation {
  10 {puts "Excellent"}
  9 {puts "Very Good"}
  8 {puts "Good"}
  7 {puts "Up Normal"}
  6 {puts "Normal"}
  0 - 1 - 2 - 3 - 4 - 5 {puts "Bad"}
  default {puts "Out of range"}
}


puts "----------------Problem 4---------------------"
set numbers [list 16 25 36 49]
puts "Sqrt Value Sqr Cub"
for {set i 0} {$i < [llength $numbers]} {incr i} {
  set number [lindex $numbers $i]
  puts "[expr {sqrt($number)}]  $number    [expr {$number**2}]  [expr {$number**3}]"
}


puts "----------------Problem 5---------------------"
set multiple 0
while {1} {
  incr multiple
  if {$multiple == 4} {
    continue
  } elseif {$multiple == 10} {
    break
  }
  puts "[expr {7*$multiple}]"
}


puts "----------------Problem 6---------------------"
set numbers {0 1 2 3 4 5 6 7 8 9 10}
foreach item $numbers {
  puts "Item = [expr {$item*$item}]"
}