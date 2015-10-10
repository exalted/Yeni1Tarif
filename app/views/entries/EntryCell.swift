import UIKit

class EntryCell: UICollectionViewCell {
    
  override func preferredLayoutAttributesFittingAttributes(
                         layoutAttributes: UICollectionViewLayoutAttributes)
             -> UICollectionViewLayoutAttributes
  {
    let attributes = super.preferredLayoutAttributesFittingAttributes(
      layoutAttributes)

    let window = UIApplication.sharedApplication().delegate!.window!!
    let windowWidth = window.bounds.width

    let indexPath = layoutAttributes.indexPath
    switch(indexPath.section, indexPath.row) {

    case (_, 0):
      // 4:3 ratio
      let width = windowWidth
      attributes.size = CGSize(width: width, height: width * 3/4)
      
    default:
      // 1:1 ratio
      let width = windowWidth / 3
      attributes.size = CGSize(width: width, height: width)

    }

    return attributes
  }

}
