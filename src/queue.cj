package datastructures

public struct Queue<T> {
	let items: Array<T>

	var top: Int64
	var end: Int64

	let size: Int64

	public init(Item: T, Size: Int64) {
		items = Array<T>(Size, repeat: Item)
		size = Size

		top = -1
		end = -1
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