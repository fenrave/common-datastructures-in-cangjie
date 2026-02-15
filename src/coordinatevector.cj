package datastructures

import std.math.sqrt
import std.core

public struct Vector4 {
	let x: Float32
	let y: Float32
	let z: Float32
	let a: Float32

	public init(X: Float32, Y: Float32, Z: Float32, A: Float32) {
		x = X
		y = Y
		z = Z
		a = A
	}

	public func printcomponents() {
		print("\nx: ${x}\ny: ${y}\nz: ${z}\na: ${a}\n")
	}
	
	operator func -(Target: Vector4): Vector4 {
		return Vector4(
			z - Target.z,
			x - Target.x,
			y - Target.y,
			a - Target.a,
		)
	}
	operator func +(Target: Vector4): Vector4 {
		return Vector4(
			z + Target.z,
			x + Target.x,
			y + Target.y,
			a + Target.a,
		)
	}
	operator func *(Target: Vector4): Vector4 {
		return Vector4(
			z * Target.z,
			x * Target.x,
			y * Target.y,
			a * Target.a,
		)
	}

	operator func /(Target: Vector4): Vector4 {
		return Vector4(
			z / Target.z,
			x / Target.x,
			y / Target.y,
			a / Target.a,
		)
	}

	func magnitude(): Float32 {
		return sqrt(x*x + y*y + z*z + a*a)
	}
}

public struct Vector3 {
	let x: Float32
	let y: Float32
	let z: Float32

	init(X: Float32, Y: Float32, Z: Float32) {
		x = X
		y = Y
		z = Z
	}

	public func printcomponents() {
		print("\nx: ${x}\ny: ${y}\nz: ${z}\n")
	}
	
	operator func -(Target: Vector3): Vector3 {
		return Vector3(
			z - Target.z,
			x - Target.x,
			y - Target.y,
		)
	}
	operator func +(Target: Vector3): Vector3 {
		return Vector3(
			z + Target.z,
			x + Target.x,
			y + Target.y,
		)
	}
	operator func *(Target: Vector3): Vector3 {
		return Vector3(
			z * Target.z,
			x * Target.x,
			y * Target.y,
		)
	}

	operator func /(Target: Vector3): Vector3 {
		return Vector3(
			z / Target.z,
			x / Target.x,
			y / Target.y,
		)
	}

	func magnitude(): Float32 {
		return sqrt(x*x + y*y + z*z)
	}
}
