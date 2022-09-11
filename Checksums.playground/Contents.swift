import Foundation
import CryptoKit

var str = "Hello checksums"

extension SHA256Digest {
    func hexdigest() -> String {
        return self.map { String(format: "%02hhx", $0) }.joined()
    }
}

SHA256.hash(
    data: str.data(using: .utf8)!
).hexdigest()
