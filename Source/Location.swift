//
// This file is part of the YieldManager package.
//
// For the full copyright and license information, please view the LICENSE
// file that was distributed with this source code.
//

import Foundation

public struct Coordinates: Encodable {
    var latitude: Double
    var longitude: Double
}

struct Location: Encodable {
    /**
     Postal address where the order has to be sent.
     */
    public var address: String
    
    /**
     Postal code.
     */
    public var postalCode: String
    
    /**
     Indicates if the building has elevator.
     */
    public var elevator: Bool
    
    /**
     Coordinates of the location (Optional)
     */
    public var coordinates: Coordinates?
}
