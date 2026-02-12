package datastructures

import std.math.sqrt

public struct Vector4 {
	var x: Float64
	var y: Float64
	var z: Float64
	var w: Float64

	public init(X: Float64, Y: Float64, Z: Float64, W: Float64) {
		x = X
		y = Y
		z = Z
		w = W
	}

	public func printcomponents() {
		print("\nx:${x}\ny:${y}\nz:${z}\nw:${w}\n")
	}

	operator mut func -(Target: Vector4) {
		z -= Target.z
		x -= Target.x
		y -= Target.y
		w -= Target.w
	}

	operator mut func +(Target: Vector4) {
		z += Target.z
		x += Target.x
		y += Target.y
		w += Target.w
	}

	operator mut func *(Target: Vector4) {
		z *= Target.z
		x *= Target.x
		y *= Target.y
		w *= Target.w
	}

	operator mut func /(Target: Vector4) {
		z /= Target.z
		x /= Target.x
		y /= Target.y
		w /= Target.w
	}

	mut func magnitude(): Float64 {
		return sqrt(x*x + y*y + z*z + w*w)
	}

}