//
// This file is part of the YieldManager package.
//
// For the full copyright and license information, please view the LICENSE
// file that was distributed with this source code.
//

import Foundation

extension Client {
    /**
     Confirms an order.
     
     - parameter with: request to generate time windows
     - parameter completion: Closure called on request finish.
     
     Example:
     ```
     Client.shared.baseUrl = "https://nektria.com/api/v1"
     Client.shared.apiId = "your-api-key"
     
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
     
     Client.shared.confirmOrder(with: request) { (response, error) in
     // ...
     }
     ```
     */
    public func confirmOrder(with request: ConfirmOrderRequest, completion: @escaping RequestCompletionBlock) {
        let jsonEncoder = JSONEncoder()
        let body = try! jsonEncoder.encode(request)
        
        self.request(method: "PUT", path: "/orders/\(request.getOrderNumber())", resource: body) { (response: Response?, error: Error?) in
            completion(response, error)
        }
    }
}
