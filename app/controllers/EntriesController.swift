import UIKit

class EntriesController : UICollectionViewController {

  var dataSource: EntriesViewDataSource?

  override func viewDidLoad() {
    super.viewDidLoad()

    self.dataSource = EntriesViewDataSource()

    self.collectionView!.dataSource = self.dataSource
  }

}
