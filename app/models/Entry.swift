import Foundation

class Entry : PFObject {

  @NSManaged var publishedAt: NSDate
  @NSManaged var title: String
  @NSManaged var tags: [String]
  @NSManaged var previewUrl: String
  @NSManaged var summary: String
  @NSManaged var convertedContent: String

}

// MARK: boilerplate (Parse)
extension Entry : PFSubclassing {

  override class func initialize() {
    struct Static {
      static var onceToken: dispatch_once_t = 0
    }
    dispatch_once(&Static.onceToken) {
      self.registerSubclass()
    }
  }

  static func parseClassName() -> String {
    return "Entry"
  }

}
