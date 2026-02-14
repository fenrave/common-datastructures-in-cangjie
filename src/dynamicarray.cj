package datastructures

//vector
public struct DynamicArray<T> {
	var items: Array<T>
	
	private var size: Int64
	private var limit: Int64

	init(Item: T, Size: Int64) {
		size = Size*2

		items = Array<T>(size, repeat: unsafe {zeroValue<T>()})
		limit = Size
	}

	//read -> equivalent to lua mt.__index
	operator mut func [](Index: Int64): T {
		if (Index > limit || Index > size) {
			Resize(Index)
		}
		return items[Index]
	}

	//write -> equivalent to lua mt.__newindex
	operator mut func [](Index: Int64, value!: T): Unit {
		if (Index > limit || Index > size) {
			Resize(Index)
		}
		items[Index] = value
	}
	/**
	
	no direct lua equivalent, maybe something like 

	local function obj:Slice(start, end)
		return {table.unpack(self.items, start, end)}
	end
	
	*/
	operator func [](Index: Range<Int64>): Array<T> {
		return items.slice(Index.start, Index.end)
	}

	private mut func Resize(Index: Int64): Unit {
		let oldsize = size
		limit = Index ; size = (size*2) >> 1
		if (Index > size) {
			size = Index + oldsize
		}
		let newitems = Array<T>(size, repeat: unsafe {zeroValue<T>()}) 
		items.copyTo(newitems, 0, 0, oldsize)
		items = newitems
	}
}