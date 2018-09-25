// This file is part of the YieldManager package.
//
// For the full copyright and license information, please view the LICENSE
// file that was distributed with this source code.
//

import Foundation

import XCTest
@testable import YieldManager

class TimeWindowListTest: XCTestCase {
    func testFilterByState() {
        let openTW1 = TimeWindow(
            id: UUID(),
            name: "TW 1",
            shiftId: UUID(),
            timeRange: TimeRange(startTime: "2018/09/17 10:00", endTime: "2018/09/17 11:00"),
            state: TimeWindowState.open.rawValue,
            usedCapacity: 10000,
            totalCapacity: 5000,
            orderCapacityThreshold: 0,
            orderMaxCapacity: 0,
            postalCodes: ["08100", "08101"]
        )
        
        let openTW2 = TimeWindow(
            id: UUID(),
            name: "TW 1",
            shiftId: UUID(),
            timeRange: TimeRange(startTime: "2018/09/17 10:00", endTime: "2018/09/17 11:00"),
            state: TimeWindowState.open.rawValue,
            usedCapacity: 10000,
            totalCapacity: 5000,
            orderCapacityThreshold: 0,
            orderMaxCapacity: 0,
            postalCodes: ["08100", "08101"]
        )
        
        let closedTW = TimeWindow(
            id: UUID(),
            name: "TW 1",
            shiftId: UUID(),
            timeRange: TimeRange(startTime: "2018/09/17 10:00", endTime: "2018/09/17 11:00"),
            state: TimeWindowState.closed.rawValue,
            usedCapacity: 10000,
            totalCapacity: 10000,
            orderCapacityThreshold: 0,
            orderMaxCapacity: 0,
            postalCodes: ["08100", "08101"]
        )
        
        let list = TimeWindowList(timeWindows: [openTW1, closedTW, openTW2])
        let expected = TimeWindowList(timeWindows: [closedTW])
        
        XCTAssertEqual(expected, list.filter(by: TimeWindowState.closed))
    }
}
