import UIKit

extension EntriesViewDataSource : UICollectionViewDataSource {

  @objc
  func collectionView(collectionView: UICollectionView,
    numberOfItemsInSection section: Int)
    -> Int
  {
    let count = self.count

    return count
  }

  @objc
  func collectionView(
    collectionView: UICollectionView,
    cellForItemAtIndexPath indexPath: NSIndexPath)
    -> UICollectionViewCell
  {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier(
      "cell", forIndexPath: indexPath)

    return cell
  }
  
}