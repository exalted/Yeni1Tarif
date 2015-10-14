import UIKit

extension EntriesIndexController {

  override func viewDidLoad() {
    super.viewDidLoad()

    self.collectionView?.dataSource = self.dataSource
  }

  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)

    self.updateData()
  }

}

// MARK: Internal
extension EntriesIndexController {

  private func updateData() {
    Entry.allPaginated { (moreEntries) -> () in
      self.dataSource?.include(moreEntries)
      self.collectionView?.reloadData()
    }
  }

}
