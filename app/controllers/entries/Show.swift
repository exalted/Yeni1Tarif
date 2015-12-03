import UIKit
import WebKit

class EntriesShowController: UIViewController {

  var entry: Entry!

  @IBOutlet var browser: WKWebView!

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)

    self._init()
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    self.view.insertSubview(self.browser, atIndex: 0)

    NSLayoutConstraint.activateConstraints([
      NSLayoutConstraint(
        item: self.browser, attribute: .Width,
        relatedBy: .Equal,
        toItem: self.view, attribute: .Width,
        multiplier: 1.0, constant: 0.0),
      NSLayoutConstraint(
        item: self.browser, attribute: .Height,
        relatedBy: .Equal,
        toItem: self.view, attribute: .Height,
        multiplier: 1.0, constant: 0.0),
      NSLayoutConstraint(
        item: self.browser, attribute: .CenterX,
        relatedBy: .Equal,
        toItem: self.view, attribute: .CenterX,
        multiplier: 1.0, constant: 0.0),
      NSLayoutConstraint(
        item: self.browser, attribute: .CenterY,
        relatedBy: .Equal,
        toItem: self.view, attribute: .CenterY,
        multiplier: 1.0, constant: 0.0)
      ])
  }

  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)

    self.browser.loadHTMLString(self.entry.convertedContent, baseURL: nil)
  }

}

// MARK: Internal
extension EntriesShowController {

  private func _init() {
    self.browser = WKWebView()
    self.browser.translatesAutoresizingMaskIntoConstraints = false
  }

}
