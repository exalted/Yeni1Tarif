import UIKit

class EntriesDataSource : NSObject {

  private var entries :[Entry] = []

  var count :Int {
    get { return self.entries.count }
  }

  func include(entries :[Entry]) {
    self.entries.appendContentsOf(entries)
  }

  func entryAtIndexPath(indexPath: NSIndexPath) -> Entry? {
    return self.entries[indexPath.row]
  }

}

