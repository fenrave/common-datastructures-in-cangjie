package datastructures

import std.math.sqrt
import std.math.Number
import std.core
import datastructures.macros.Template
// cjlint-ignore -start !G.OPR.01
public struct Vector4<T> where T <: Number<T> {
	let x: T
	let y: T
	let z: T
	let w: T

	public init(X: T, Y: T, Z: T, W: T) {
		x = X
		y = Y
		z = Z
		w = W
	}
	
	operator func -(Target: Vector4<T>): Vector4<T> {
		return Vector4<T>(
			z - Target.z,
			x - Target.x,
			y - Target.y,
			w - Target.w
		)
	}

	operator func -(): Vector4<T> {
		return Vector4<T>(
			-z,
			-x,
			-y,
			-w
		)
	}

	operator func +(Target: Vector4<T>): Vector4<T> {
		return Vector4(
			z + Target.z,
			x + Target.x,
			y + Target.y,
			w + Target.w,
		)
	}

	operator func *(Target: Vector4<T>): Vector4<T> {
		return Vector4(
			z * Target.z,
			x * Target.x,
			y * Target.y,
			w * Target.w,
		)
	}

	operator func /(Target: Vector4<T>): Vector4<T> {
		return Vector4(
			z / Target.z,
			x / Target.x,
			y / Target.y,
			w / Target.w,
		)
	}
}

public struct Vector3<T> where T <: Number<T> {
	let x: T
	let y: T
	let z: T

	public init(X: T, Y: T, Z: T) {
		x = X
		y = Y
		z = Z
	}
	
	operator func -(Target: Vector3<T>): Vector3<T> {
		return Vector3<T>(
			z - Target.z,
			x - Target.x,
			y - Target.y
		)
	}

	operator func -(): Vector3<T> {
		return Vector3<T>(
			-z,
			-x,
			-y
		)
	}

	operator func +(Target: Vector3<T>): Vector3<T> {
		return Vector3(
			z + Target.z,
			x + Target.x,
			y + Target.y
		)
	}

	operator func *(Target: Vector3<T>): Vector3<T> {
		return Vector3(
			z * Target.z,
			x * Target.x,
			y * Target.y
		)
	}

	operator func /(Target: Vector3<T>): Vector3<T> {
		return Vector3(
			z / Target.z,
			x / Target.x,
			y / Target.y
		)
	}
}

// cjlint-ignore -end