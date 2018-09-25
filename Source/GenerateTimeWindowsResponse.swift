//
// This file is part of the YieldManager package.
//
// For the full copyright and license information, please view the LICENSE
// file that was distributed with this source code.
//

import Foundation

public class GenerateTimeWindowsResponse: Response {
    /**
     List of time windows.
    */
    public let timeWindows: TimeWindowList?
    
    /**
     GenerateTimeWindowsResponse initializer.
     
     - parameter message: Message received from API endpoint.
     - parameter statusCode: Http status code received from API endpoint.
     - parameter timeWindows: List of time windows.
    */
    init(message: String, statusCode: Int, timeWindows: TimeWindowList?) {
        self.timeWindows = timeWindows
        super.init(message: message, statusCode: statusCode)
    }
}
