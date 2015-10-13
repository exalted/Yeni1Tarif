import UIKit

extension EntriesController {

  override func viewDidLoad() {
    super.viewDidLoad()

    self.collectionView?.dataSource = self.dataSource
  }

  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)

    self.updateData()
  }

  private func updateData() {
    Entry.allPaginated { (moreEntries) -> Void in
      self.dataSource?.include(moreEntries)
      self.collectionView?.reloadData()
    }
  }

}
