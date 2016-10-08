import XCTest
import Vapor
@testable import GrantOMeter

class GrantOMeterTests: XCTestCase {
    static var allTests = [
        ("testHash", testHash)
    ]

    func testHash() {
        let drop = Droplet()
        
        XCTAssertEqual(10,  measureGrumpy(hoshi: 5))
        print("hallo")
    }
    
    
}
