import Foundation

struct Vector<T: Numeric> {
    let x: T
    let y: T
    let z: T
    
    init(x: T, y: T, z: T) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    func mod2(_ other: Vector) -> T {
        let x2 = (self.x - other.x) * (self.x - other.x)
        let y2 = (self.y - other.y) * (self.y - other.y)
        let z2 = (self.z - other.z) * (self.z - other.z)
        return x2 + y2 + z2
    }
}

let vecAInt = Vector<Int>(x: 1, y: 2, z: 3)
let vecBInt = Vector<Int>(x: 3, y: 2, z: 1)

vecAInt.mod2(vecBInt)

let vectA16 = Vector<Float16>(x: Float16(0.1), y: Float16(0.2), z: Float16(0.3))
let vectB16 = Vector<Float16>(x: Float16(0.3), y: Float16(0.2), z: Float16(0.1))

vectA16.mod2(vectB16)

let vectA32 = Vector<Float32>(x: Float32(0.1), y: Float32(0.2), z: Float32(0.3))
let vectB32 = Vector<Float32>(x: Float32(0.3), y: Float32(0.2), z: Float32(0.1))

vectA32.mod2(vectB32)

let vectA64 = Vector<Float64>(x: Float64(0.1), y: Float64(0.2), z: Float64(0.3))
let vectB64 = Vector<Float64>(x: Float64(0.3), y: Float64(0.2), z: Float64(0.1))

vectA64.mod2(vectB64)

let vectA80 = Vector<Float80>(x: Float80(0.1), y: Float80(0.2), z: Float80(0.3))
let vectB80 = Vector<Float80>(x: Float80(0.3), y: Float80(0.2), z: Float80(0.1))

vectA80.mod2(vectB80)

let vectADob = Vector<Double>(x: Double(0.1), y: Double(0.2), z: Double(0.3))
let vectBDob = Vector<Double>(x: Double(0.3), y: Double(0.2), z: Double(0.1))

vectADob.mod2(vectBDob)

