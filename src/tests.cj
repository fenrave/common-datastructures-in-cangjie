package datastructures

import std.random.Random

let num = Random()

main(): Int64 {

	var Queue = Stack<Int64>(0, 24)

	for (_ in 1..24) {
		Queue.Push(num.nextInt64(500))
	}

	print(Queue.items)
	return 0
}