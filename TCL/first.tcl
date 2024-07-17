puts "---------------------Problem 1-------------------"
set name_1 "Samy"; set name_2 "Sayed";
puts [string compare $name_1 $name_2]
puts [string match $name_1 $name_2]
puts "---------------------Problem 2-------------------"
set line "DIC Intake 43"
set my_list [split $line]
puts [lindex $my_list 1]
puts "---------------------Problem 3-------------------"
set str [string range "DIC Intake 43" 0 1]
puts $str
puts [string length $str]
puts "---------------------Problem 4-------------------"
set str "Hi This is ITI Training"
set my_list [split $line]
puts $my_list
set my_list [lreverse $my_list]
puts $my_list
puts "---------------------Problem 5-------------------"
proc replace {index input_list data} {
    return [lreplace $input_list $index $index $data]
}
set my_list [list 1 2 3 4 5]
set my_list [replace 2 $my_list 10]
puts $my_list
puts "---------------------Problem 6-------------------"
proc my_function {in1 {in2 100}} {
    set result [expr $in1 + $in2]
    puts "$in1 + $in2 = $result"
    set result [expr $in1 - $in2]
    puts "$in1 - $in2 = $result"
    set result [expr $in1 * $in2]
    puts "$in1 * $in2 = $result"
    return [expr $in1 / $in2]
}
puts [my_function {5.0}]
puts "---------------------Problem 7-------------------"
set my_list {0 0 1 1 2 2 3 3}
set list_of_lists [list ]
for {set i 0} {$i < [llength $my_list]} {incr i 2} {
    set sublist [list [lindex $my_list $i] [lindex $my_list [expr {$i + 1}]]]
    lappend list_of_lists $sublist
}
puts $list_of_lists
puts [lindex $list_of_lists 0]
puts "---------------------Problem 8-------------------"
set report [open "report.txt" r]
set report_data [read $report]
set report_out [open "report_out.txt" w]

set n_of_slack 0
set n_of_setup 0
set lines [split $report_data \n]
foreach line $lines {
    if {[string match {*setup*} $line] == 1} {
        puts $report_out $line
        incr n_of_setup
    } elseif {[string match {*slack*} $line] == 1} {
        puts $report_out $line
        incr n_of_slack
    }
}
puts $report_out "Number of setup: $n_of_setup\nNumber of slack: $n_of_slack"
close $report
close $report_out
puts "---------------------Problem 9-------------------"
set f_input [open "Input_File.txt" r]
set data [read $f_input]
set f_out [open "Output_File.txt" w]
set n_of_employee 0
set lines [split $data \n]
foreach line $lines {
    
    if {[string match {*Employee:*} $line] == 1} {
        incr n_of_employee
        puts $f_out "--------------Employee $n_of_employee--------------"
        set index [string first "Name" $line]
        puts $f_out [string range $line $index [expr $index + 15]]
        set index [string first "Univer" $line]
        puts $f_out [string range $line $index [expr $index + 20]]
        set index [string first "Current" $line]
        puts $f_out [string range $line $index [expr $index + 20]]
        set index [string first "Grade" $line]
        puts $f_out [string range $line $index [expr $index + 15]]
    }
}
close $f_input
close $f_out
