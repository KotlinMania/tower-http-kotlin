#if canImport(Testing)
import Testing
import TowerHttp

@Suite("TowerHttp Swift Export Tests")
struct TowerHttpExportTests {
    @Test("TowerHttp swift module imported cleanly")
    func testSwiftModuleLoads() throws {
        #expect(Bool(true), "TowerHttp swift module imported cleanly")
    }
}
#elseif canImport(XCTest)
import XCTest
import TowerHttp

final class TowerHttpExportTests: XCTestCase {
    func testSwiftModuleLoads() throws {
        XCTAssertTrue(true, "TowerHttp swift module imported cleanly")
    }
}
#endif
