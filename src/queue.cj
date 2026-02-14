package datastructures

public struct Queue<T> {
	private let items: Array<T>

	private var top: Int64
	private var end: Int64

	private let size: Int64

	public init(Item: T, Size: Int64) {
		items = Array<T>(Size, repeat: unsafe {zeroValue<T>()})
		size = Size

		top = -1
		end = -1
	}

	func GetItems() {
		return items
	}

	mut func PullTop(): T {
		let item = items[top] ; top--
		return item
	}

	mut func PushTop(Item: T): Unit {
		top++ ; items[top] = Item
	}

	mut func PullEnd(): T {
		let item = items[end] ; end--
		return item
	}

	mut func PushEnd(Item: T): Unit {
		end++ ; items[top] = Item
	}

	func Peek(Index: Int64): T {
		if (Index > size) {
			throw IndexOutOfBoundsException()
		}
		return items[Index]
	}

	func Empty(): Bool {
		if (top == end) {
			return true
		} else {
			return false
		}
	}

	func Full(): Bool {
		if (size == top) {
			return true
		} else {
			return false
		}
	}
}