package main

import "fmt"

var y string = "visible"
// x := "visible" // short entry is not available outside the function

func main() {
//    fmt.Println(x)
    var x string
    x = "first"
    fmt.Println(x)
    x += " second"
    fmt.Println(x)
//short write
   myName := "Max"
   fmt.Println("My name is", myName, "Hello")
}

func f() {
//	fmt.Println(x)
	fmt.Println(y)
}
