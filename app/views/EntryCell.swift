import UIKit

class EntryCell: UICollectionViewCell {
    
  @IBOutlet weak var previewImage: UIImageView!

  override func preferredLayoutAttributesFittingAttributes(
                         layoutAttributes: UICollectionViewLayoutAttributes)
             -> UICollectionViewLayoutAttributes
  {
    let attributes = super.preferredLayoutAttributesFittingAttributes(
      layoutAttributes)

    guard let window = UIApplication.sharedApplication().delegate?.window?!
      else { return attributes }

    let indexPath = layoutAttributes.indexPath
    switch(indexPath.row) {

    case 0:
      // 4:3 ratio
      let width = window.bounds.width
      attributes.size = CGSize(width: width, height: width * 3/4)
      
    default:
      // 1:1 ratio
      let width = window.bounds.width / 3
      attributes.size = CGSize(width: width, height: width)

    }

    return attributes
  }

}
