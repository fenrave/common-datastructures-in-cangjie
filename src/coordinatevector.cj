package datastructures

import std.math.sqrt

public struct Vector4 {
	public var components: Array<Float64>

	public init(X: Float64, Y: Float64, Z: Float64, W: Float64) {
		this.components = [X,Y,Z,W]
	}

	public func printcomponents() {
		print("\nx:${this.components[0]}\ny:${this.components[1]}\nz:${this.components[2]}\nw:${this.components[3]}\n")
	}

	public operator func -(Target: Vector4) {
		this.components[0] -= Target.components[0]
		this.components[1] -= Target.components[1]
		this.components[2] -= Target.components[2]
		this.components[3] -= Target.components[3]
		return this
	}

	public operator func +(Target: Vector4): Vector4 {
		this.components[0] += Target.components[0]
		this.components[1] += Target.components[1]
		this.components[2] += Target.components[2]
		this.components[3] += Target.components[3]

		return this
	}

	public operator func *(Target: Vector4): Vector4 {
		this.components[0] *= Target.components[0]
		this.components[1] *= Target.components[1]
		this.components[2] *= Target.components[2]
		this.components[3] *= Target.components[3]

		return this
	}

	public operator func /(Target: Vector4): Vector4 {
		this.components[0] /= Target.components[0]
		this.components[1] /= Target.components[1]
		this.components[2] /= Target.components[2]
		this.components[3] /= Target.components[3]

		return this
	}

	public func magnitude(): Float64 {
		return sqrt(components[0]*components[0] + components[1]*components[1] + components[2]*components[2] + components[3]*components[3])
	}

}