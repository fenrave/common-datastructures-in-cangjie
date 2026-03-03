package datastructures

public struct Stack<T> {
	let items: Array<T>
	var top: Int64
	var size: Int64

	public init(Item!: T = unsafe { zeroValue<T>() }, Size!: Int64 = 128) {
		items = Array<T>(Size, repeat: Item)
		top = 0 ; size = Size
	}

	public mut func push(Item: T): Unit {
		top++ ; items[top] = Item
	}

	public mut func pop(): T {
		let Index: T = items[top] ; top--
		return Index
	}

	public mut func clear(): Unit {
		top = 0
	}

	public func getTop(): T {
		return items[top]
	}
	// cjlint-ignore -start !G.OPR.01 !G.ERR.01
	operator func [](Index: Int64): T {
		if (Index > size) {
			throw IndexOutOfBoundsException("Index ${Index} is larger than ${size} or smaller than 0")
		}

		return items[Index]
	}

	operator func [](Index: Int64, value!: T): Unit {
		if (Index > size) {
			throw IndexOutOfBoundsException("Index ${Index} is larger than ${size} or smaller than 0")
		}

		items[Index] = value
	}
	// cjlint-ignore -end
}
