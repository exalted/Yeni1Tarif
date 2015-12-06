import UIKit

extension EntriesDataSource : UICollectionViewDataSource {

  func collectionView(collectionView: UICollectionView,
       numberOfItemsInSection section: Int)
    -> Int
  {
    return self.count
  }

  func collectionView(collectionView: UICollectionView,
       cellForItemAtIndexPath indexPath: NSIndexPath)
    -> UICollectionViewCell
  {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell",
                              forIndexPath: indexPath)
      as! EntryCell

    guard let entry = self.entryAtIndexPath(indexPath) else { return cell }

    cell.configureWithObject(entry, forIndexPath: indexPath)

    return cell
  }
  
}
