import Foundation

extension PFObject {

  override public func isEqual(object: AnyObject?) -> Bool {
    let other = object as? Entry
    return self.objectId == other?.objectId
  }

  override public var hashValue: Int {
    get {
      return self.objectId?.hashValue ?? Int.min
    }
  }
  
}
