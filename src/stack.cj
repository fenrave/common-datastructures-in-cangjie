package datastructures

public struct Stack<T> {
	let items: Array<T>
	var top: Int64
	var size: Int64

	init(Item: T, Size: Int64) {
		items = Array<T>(Size, repeat: unsafe {zeroValue<T>()})
		top = 0 ; size = Size
	}

	mut func Push(Item: T): Unit {
		top++ ; items[top] = Item
	}

	mut func Pop(): T {
		let Index: T = items[top] ; top--
		return Index
	}

	mut func Clear() {
		top = 0
	}

	func Top(): T {
		return items[top]
	}

	func Index(Pos: Int64): T {
		return items[Pos]
	}

}
