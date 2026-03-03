package datastructures
import std.random.Random

let NUM = Random()
// cjlint-ignore -start !G.VAR.01
func staTest(): Unit {
	var Stack = Stack<Int64>(Size: 24)

	print("Fill\n")

	for (i in 1..24) {
		Stack.push(NUM.nextInt64(500))
		print("Index: ${i} is ${Stack.getTop()}\n")
	}

	print("Top: ${Stack.top}\nEnd Fill")

	print("Empty\n")

	for (_ in 1..24) {
		let Item = Stack.pop()
		print("Item: ${Item} at ${Stack.top + 1}\n")
	}

	print("Top: ${Stack.top}\nEnd Empty\n")
}

func vecTest(): Unit {
	var Vec1 = Vector4(10.0,10.0,10.0,10.0)
	var Vec2 = Vector4(10.0,10.0,10.0,10.0)

	print("\nVector Operators\n")
	print(Vec1.x)
	Vec1 *= Vec2 / Vec1 / Vec2 / Vec1 * Vec2 + Vec1 - Vec2
	print(Vec1.x)
	print("\nEnd Vector Operators\n")

}

func queTest(): Unit {
	var tQueue = Queue<Int64>(Size: 12)

	tQueue.pushTop(NUM.nextInt64())
	tQueue.pushTop(NUM.nextInt64())
	tQueue.pushTop(NUM.nextInt64())
	print(tQueue.getItems())
	tQueue.pullTop()
	tQueue.pullTop()
	tQueue.pullTop()
	print(tQueue.getItems())
	tQueue.pushTop(NUM.nextInt64())
	tQueue.pushTop(NUM.nextInt64())
	tQueue.pushTop(NUM.nextInt64())
	print(tQueue.getItems())
}

func dynTest(): Unit {
	var vector = DynamicArray<Int64>(Item: 0, Size: 128)

	vector[1000] = 2
	print(vector.items)

	let slice: Array<Int64> = vector[1..9]
	print(slice)
	// print(vector[1000])
}

func hasTest(): Unit {
	var newmap = Hashmap<Int64>()
	newmap["a"] = 500
	print(newmap["a"])
	print(newmap["Ok"])
	print(newmap["000000000000000000000000000000000000000000000000"])
}

main(): Int64 {

	print("\nStack Testing:\n")
	staTest()

	print("\nVector Testing:\n")
	vecTest()

	print("\nQueue Testing:\n")
	queTest()

	print("\nDynamic Array Testing\n")
	dynTest()

	print("\nHashmap Test\n")
	hasTest()
	return 0
}

// cjlint-ignore -end