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
    Entry.allPaginated {
      guard self.dataSource.include($0) else { return }
      self.collectionView?.reloadData()
    }
  }

}
