import UIKit

class EntriesViewDataSource : NSObject, UICollectionViewDataSource {

  @objc
  func collectionView(collectionView: UICollectionView,
       numberOfItemsInSection section: Int)
    -> Int
  {
    return 3
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
