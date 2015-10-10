import UIKit

extension EntriesController {

  override func viewDidLoad() {
    super.viewDidLoad()

    self.collectionView!.dataSource = self.dataSource
  }
  
}
