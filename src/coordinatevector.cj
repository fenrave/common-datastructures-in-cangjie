package datastructures

import std.math.sqrt

public struct Vector4 {
	let x: Float64
	let y: Float64
	let z: Float64
	let w: Float64

	public init(X: Float64, Y: Float64, Z: Float64, W: Float64) {
		x = X
		y = Y
		z = Z
		w = W
	}

	public func printcomponents() {
		print("\nx: ${x}\ny: ${y}\nz: ${z}\nw: ${w}\n")
	}

	operator func -(Target: Vector4) {
		return Vector4(
			z - Target.z,
			x - Target.x,
			y - Target.y,
			w - Target.w,
		)
	}

	operator func +(Target: Vector4): Vector4 {
		return Vector4(
			z + Target.z,
			x + Target.x,
			y + Target.y,
			w + Target.w,
		)
	}

	operator func *(Target: Vector4) {
		return Vector4(
			z * Target.z,
			x * Target.x,
			y * Target.y,
			w * Target.w,
		)
	}

	operator func /(Target: Vector4) {
		return Vector4(
			z / Target.z,
			x / Target.x,
			y / Target.y,
			w / Target.w,
		)
	}

	func magnitude(): Float64 {
		return sqrt(x*x + y*y + z*z + w*w)
	}

}