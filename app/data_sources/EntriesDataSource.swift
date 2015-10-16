import UIKit

class EntriesDataSource : NSObject {

  private var _entries: [Entry] = []

  var allEntries: [Entry] {
    get { return self._entries }
  }

  var count: Int {
    get { return self._entries.count }
  }

  func include(entries: [Entry]) -> Bool {
    var set = Set(entries)
    set.subtractInPlace(self._entries)
    guard set.count > 0 else { return false }

    self._entries.appendContentsOf(set)
    self._entries.sortInPlace {
      $0.publishedAt.compare($1.publishedAt) == .OrderedDescending
    }

    return true
  }

  func entryAtIndexPath(indexPath: NSIndexPath) -> Entry? {
    return self._entries[indexPath.row]
  }

}
