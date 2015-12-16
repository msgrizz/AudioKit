//
//  add.swift
//  AudioKit For iOS
//
//  Created by Aurelius Prochazka on 12/6/15.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

extension AKParameter {
    /** plus: Addition/Summation of parameters
     - returns: AKParameter
     - parameter parameter: The amount to add
     */
    public func plus(parameter: AKParameter) -> AKParameter {
        return AKParameter("\(self)\(parameter)+")
    }
    
    /** plus: Addition/Summation of parameters
     - returns: AKParameter
     - parameter parameter: The amount to add
     */
    public func plus(parameter: Double) -> AKParameter {
        return AKParameter("\(self)\(parameter.ak)+")
    }
    
    /** offsetBy: Offsetting by way of addition
     - returns: AKParameter
     - parameter parameter: The amount to offset by
     */
    public func offsetBy(parameter: AKParameter) -> AKParameter {
        return self.plus(parameter)
    }
    /** offsetBy: Offsetting by way of addition
     - returns: AKParameter
     - parameter parameter: The amount to offset by
     */
    public func offsetBy(parameter: Double) -> AKParameter {
        return self.plus(parameter.ak)
    }
}

/** Helper function for addition
- returns: AKParameter
- left: 1st parameter
- right: 2nd parameter
*/
public func + (left: AKParameter, right: AKParameter) -> AKParameter {
    return left.plus(right)
}

/** Helper function for addition
 - returns: AKParameter
 - left: 1st parameter
 - right: Constant parameter
 */
public func + (left: AKParameter, right: Double) -> AKParameter {
    return left.plus(right)
}

/** Helper function for addition
 - returns: AKParameter
 - left: Constant parameter
 - right: 2nd parameter
 */
public func + (left: Double, right: AKParameter) -> AKParameter {
    return right.plus(left)
}