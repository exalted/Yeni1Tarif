import UIKit

class EntriesViewDataSource : NSObject {

  private var entries :[Entry] = []

  var count :Int {
    get { return self.entries.count }
  }

  func include(entries :[Entry]) {
    self.entries.appendContentsOf(entries)
  }

}

