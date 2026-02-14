package datastructures

import std.math.sqrt
import std.core

public struct Vector {
	let x: Float64
	let y: Float64
	let z: Float64
	let a: Float64

	public init(X: Float64, Y: Float64, Z: Float64, A: Float64) {
		x = X
		y = Y
		z = Z
		a = A
	}

	public func printcomponents() {
		print("\nx: ${x}\ny: ${y}\nz: ${z}\nw: ${a}\n")
	}
	
	operator func -(Target: Vector): Vector {
		return Vector(
			z - Target.z,
			x - Target.x,
			y - Target.y,
			a - Target.a,
		)
	}
	operator func +(Target: Vector): Vector {
		return Vector(
			z + Target.z,
			x + Target.x,
			y + Target.y,
			a + Target.a,
		)
	}
	operator func *(Target: Vector): Vector {
		return Vector(
			z * Target.z,
			x * Target.x,
			y * Target.y,
			a * Target.a,
		)
	}

	operator func /(Target: Vector): Vector {
		return Vector(
			z / Target.z,
			x / Target.x,
			y / Target.y,
			a / Target.a,
		)
	}

	func magnitude(): Float64 {
		return sqrt(x*x + y*y + z*z + a*a)
	}
}
