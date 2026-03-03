package datastructures

public struct Queue<T> {
	private let items: Array<T>

	private var top: Int64
	private var end: Int64

	private let size: Int64

	public init(Item!: T = unsafe { zeroValue<T>() }, Size!: Int64 = 128) {
		items = Array<T>(Size, repeat: Item)
		size = Size

		top = -1
		end = -1
	}

	public func getItems(): Array<T> {
		return items
	}

	public mut func pullTop(): T {
		let item = items[top] ; top--
		return item
	}

	public mut func pushTop(Item: T): Unit {
		top++ ; items[top] = Item
	}

	public mut func pullEnd(): T {
		let item = items[end] ; end++
		return item
	}

	public mut func pushEnd(Item: T): Unit {
		end-- ; items[top] = Item
	}

	public func peek(Index: Int64): T {
		if (Index > top && Index < end) {
			throw IndexOutOfBoundsException()
		}
		return items[Index]
	}

	public func empty(): Bool {
		if (top == end) {
			return true
		} else {
			return false
		}
	}

	public func full(): Bool {
		if (top == size) {
			return true
		} else {
			return false
		}
	}
}