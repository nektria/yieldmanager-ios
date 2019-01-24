//
// This file is part of the YieldManager package.
//
// For the full copyright and license information, please view the LICENSE
// file that was distributed with this source code.
//


import Foundation

/**
 Request to retrieve a grid with a list of time windows for a specific order and time range.
 */
public struct ConfirmOrderRequest: Encodable {
    /**
     Properties used by the encoder.
    */
    enum CodingKeys: String, CodingKey {
        case location
        case weight
        case timeRange
        case productLines
    }
    
    /**
     Order number
    */
    var orderNumber: String

    /**
     Order location
     */
    var location: Location
    
    /**
     Order weight in grams.
     */
    public var weight: Int
    
    /**
     Time range of the first time window between the last time window.
     */
    public var timeRange: TimeRange
    
    /**
     Number of product lines.
     */
    public var productLines: Int?
    
    /**
     It initializes the request with all required parameters.
     
     - parameter orderNumber: Order number.
     - parameter address: Postal address where the order has to be sent.
     - parameter postalCode: Postal code.
     - parameter elevator: Indicates if the building has elevator.
     - parameter weight: Order weight in grams.
     - parameter startTime: Date of the first time window. Format: yyyy/MM/dd HH:mm
     - parameter endTime: Date of the last time window. Format: yyyy/MM/dd HH:mm
     - parameter coordinates: (Optional) Latitude and longitude.
     - parameter productLines: (Optional) Number of product lines.
     
     Example:
     ```
     let request = ConfirmOrder(
        orderNumber: "X0012003",
        address: "Avda. Diagonal 440, Barcelona",
        postalCode: "08037",
        elevator: true,
        startTime: "2018/09/17 08:00",
        endTime: "2018/09/24 20:00",
        coordinates: Coordinates(latitude: 41.38809, longitude: 2.12639),
        productLines: 10
     )
     ```
     */
    public init(
        orderNumber: String,
        address: String,
        postalCode: String,
        elevator: Bool,
        weight: Int,
        startTime: String,
        endTime: String,
        coordinates: Coordinates? = nil,
        productLines: Int? = nil
        ) {
        self.orderNumber = orderNumber
        self.location = Location(address: address, postalCode: postalCode, elevator: elevator, coordinates: coordinates)
        self.weight = weight
        self.timeRange = TimeRange(startTime: startTime, endTime: endTime)
        self.productLines = productLines
    }
    
    public func getOrderNumber() -> String {
        return orderNumber
    }
}
