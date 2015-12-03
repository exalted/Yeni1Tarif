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

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    super.prepareForSegue(segue, sender: sender)

    guard
      segue.identifier == "fromEntriesIndexToEntriesShowSegue",
      let destination = (
        segue.destinationViewController as? EntriesShowController
      ),
      cell = sender as? UICollectionViewCell,
      indexPath = self.collectionView?.indexPathForCell(cell)
    else { return }

    let entry = self.dataSource.entryAtIndexPath(indexPath)

    // TODO: replace with `destination.objectId = entry?.objectId` instead,
    //       then querying for "entry" by its "id" inside EntriesShowController.
    destination.entry = entry
  }

  @IBAction func unwindToEntriesIndex(segue: UIStoryboardSegue) { }

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
