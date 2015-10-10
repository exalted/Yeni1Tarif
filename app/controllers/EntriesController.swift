import UIKit

class EntriesController : UICollectionViewController {

  override func collectionView(collectionView: UICollectionView,
                numberOfItemsInSection section: Int)
             -> Int
  {
    return 3
  }

  override func collectionView(collectionView: UICollectionView,
                cellForItemAtIndexPath indexPath: NSIndexPath)
             -> UICollectionViewCell
  {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier(
      "cell", forIndexPath: indexPath)

    return cell
  }

}
