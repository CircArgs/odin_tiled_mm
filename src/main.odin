package brokk
import "core:fmt"
import "core:strings"
import "core:c/libc"
import "core:slice"
main :: proc() {
	a := [][]f32{
		{1, 2, 3, 4, 5},
		{5, 6, 7, 8, 6},
		{9, 10, 11, 12, 7},
		{13, 14, 15, 16, 8},
	}
	b := [][]f32{
		{1, 2, 3, 4, 5},
		{5, 6, 7, 8, 6},
		{9, 10, 11, 12, 7},
		{13, 14, 15, 16, 8},
		{13, 14, 15, 16, 8},
	}
	x := new_matrix(a)
	y := new_matrix(b)
	/* b := matrix[2, 2]f32 { */
	/* 	1, 2,  */
	/* 	3, 4,  */
	/* } */
	/* fmt.println(transpose(b)[0]) */
	print_matrix(x)
	print_matrix(y)
	print_matrix(multiply(x, y))
	t := .1e-1
	fmt.println(t)
}
