package datastructures

private func Hash(str: String, size: Int64): Int64 {
    var val: Int64 = 0
    for (i in str) {val = (val*val + Int64(i)) % size }
    return val
}

public struct Hashmap<T> {
    let items: Array<T>
    let size: Int64

    init(Item!: T = unsafe { zeroValue<T>() }, Size!: Int64 = 5000) {
        items = Array<T>(Size, repeat: Item)
        size = Size
    }

    operator func [](Index: String) {
        let Pos = Hash(Index, size)
        if (Pos > size) {
            throw IndexOutOfBoundsException("Not supposed to happen. Tried to Index at ${Pos} when max size is ${size}.")
        }

        return items[Pos]
    }

    operator func [](Index: String, value!: T) {
        let Pos = Hash(Index, size)
        if (Pos > size) {
            throw IndexOutOfBoundsException("Not supposed to happen. Tried to Index at ${Pos} when max size is ${size}.")
        }

        items[Pos] = value
    }
}