/**
 
 Adds Morphable conformance to CGRect
 
 */

import QuartzCore

extension CGRect: Morphable {
  
  /**
   
   Returns the value converted by ratio
   
   */
  public static func morph(from: CGRect,
                           to: CGRect,
                           ratio: Double) -> CGRect {
    return CGRect(origin: CGPoint.morph(from.origin, to: to.origin, ratio: ratio),
                  size: CGSize.morph(from.size, to: to.size, ratio: ratio))
  }
  
  /// Initial ratio value (usually 0.0 or self if Double convertible)
  public var initialValue: Double { return 0 }
  
  /// Final ratio value (usually 1.0 or self if Double convertible)
  public var finalValue: Double { return 1 }
}
