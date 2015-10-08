extension Parse {
  class func conditionallyEnableGlobalLogging() {
    self.setLogLevel(PFLogLevel.Debug)

    let notificationCenter = NSNotificationCenter.defaultCenter()

    notificationCenter.addObserver(
      self,
      selector: "_receiveWillSendURLRequestNotification:",
      name: PFNetworkWillSendURLRequestNotification,
      object: nil)

    notificationCenter.addObserver(
      self,
      selector: "_receiveDidReceiveURLResponseNotification:",
      name: PFNetworkDidReceiveURLResponseNotification,
      object: nil)
  }

  class func _receiveWillSendURLRequestNotification(
    notification: NSNotification)
  {
    let requestKey = PFNetworkNotificationURLRequestUserInfoKey

    guard let request = notification.userInfo?[requestKey] as? NSURLRequest
      else { return }

    print(">>> \(request.HTTPMethod!): \(request.URL!.absoluteString)")
    print("> Headers: \(request.allHTTPHeaderFields!)")
    print("> Body: \(NSString(data: request.HTTPBody!, encoding: NSUTF8StringEncoding)!)")
  }

  class func _receiveDidReceiveURLResponseNotification(
    notification: NSNotification)
  {
    let responseKey = PFNetworkNotificationURLResponseUserInfoKey

    guard let response = notification.userInfo?[responseKey] as? NSHTTPURLResponse
      else { return }

    print("<<< \(response.statusCode): \(response.URL!.absoluteString)")
    print("< Headers: \(response.allHeaderFields)")

    //// TODO: add custom loglevel to enable logging as well as printing out
    // let responseBodyKey = PFNetworkNotificationURLResponseBodyUserInfoKey
    // let responseBody = notification.userInfo![PFNetworkNotificationURLResponseBodyUserInfoKey] as! NSString
    // print("< Body: \(responseBody))")
  }
}
