import UIKit

class EntryCell: UICollectionViewCell {
    
  @IBOutlet weak var previewImage: UIImageView!

  func configureWithObject(object: NSObject,
       forIndexPath indexPath: NSIndexPath)
  {
    let entry = object as! Entry

    switch(indexPath.row) {

    case 0:
      let previewUrl = entry.previewUrl
      let url = NSURL(string: previewUrl)
      self.previewImage.sd_setImageWithURL(url)

    default:
      let previewUrl = entry.previewUrl.stringByReplacingOccurrencesOfString(
        "1024x1024",
        withString: "150x150")
      let url = NSURL(string: previewUrl)
      self.previewImage.sd_setImageWithURL(url)
      
    }
  }

}
