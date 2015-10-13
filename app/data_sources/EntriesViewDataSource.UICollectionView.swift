import UIKit

extension EntriesViewDataSource : UICollectionViewDataSource {

  func collectionView(collectionView: UICollectionView,
    numberOfItemsInSection section: Int)
    -> Int
  {
    let count = self.count

    return count
  }

  func collectionView(
    collectionView: UICollectionView,
    cellForItemAtIndexPath indexPath: NSIndexPath)
    -> UICollectionViewCell
  {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier(
      "cell", forIndexPath: indexPath) as! EntryCell

    guard let entry = self.entryAtIndexPath(indexPath) else { return cell }

    switch(indexPath.row) {

    case 0:
      let previewUrl = entry.previewUrl
      let url = NSURL(string: previewUrl)
      cell.previewImageView.sd_setImageWithURL(url)

    default:
      let previewUrl = entry.previewUrl.stringByReplacingOccurrencesOfString("1024x1024", withString: "150x150")
      let url = NSURL(string: previewUrl)
      cell.previewImageView.sd_setImageWithURL(url)

    }

    return cell
  }
  
}
