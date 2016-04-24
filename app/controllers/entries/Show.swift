import UIKit
import WebKit

class EntriesShowController: UIViewController {

  var entry: Entry!

  @IBOutlet var browser: WKWebView!

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)

    self._init()
  }

}

// MARK: Internal
extension EntriesShowController {

  private func _init() {
    self.browser = WKWebView()
    self.browser.translatesAutoresizingMaskIntoConstraints = false
    #if DEBUG
      self.browser.configuration.preferences.setValue(true,
                                             forKey: "developerExtrasEnabled")
    #endif
  }

}
