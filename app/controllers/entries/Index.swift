import UIKit

class EntriesIndexController : UICollectionViewController {

  var dataSource: EntriesDataSource?

  override init(collectionViewLayout layout: UICollectionViewLayout) {
    super.init(collectionViewLayout: layout)

    self._init()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)

    self._init()
  }

}

// MARK: Internal
extension EntriesIndexController {

  private func _init() {
    self.dataSource = EntriesDataSource()
  }

}
