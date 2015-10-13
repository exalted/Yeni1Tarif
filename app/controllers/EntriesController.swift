import UIKit

class EntriesController : UICollectionViewController {

  var dataSource: EntriesViewDataSource?

  override init(collectionViewLayout layout: UICollectionViewLayout) {
    super.init(collectionViewLayout: layout)

    self._init()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)

    self._init()
  }

  private func _init() {
    self.dataSource = EntriesViewDataSource()
  }

}
