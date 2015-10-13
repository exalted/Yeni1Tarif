extension Entry {

  class func allPaginated(skip :Int = 0, actionOnMoreEntries: [Entry] -> Void) {
    let query = self.query()
    query?.skip = skip
    query?.whereKey("tags", equalTo: "Tariflerim")
    query?.whereKey("previewUrl", hasPrefix: "http://www.yeni1tarif.com/wp-content/uploads/")
    query?.whereKey("previewUrl", hasSuffix: "1024x1024.jpg")
    query?.orderByDescending("publishedAt")

    query?.findObjectsInBackgroundWithBlock { (result, error) -> Void in
      guard let entries = result as? [Entry] else { return }
      actionOnMoreEntries(entries)

      if entries.count == 0 { return }

      self.allPaginated(
        skip + entries.count,
        actionOnMoreEntries: actionOnMoreEntries)
    }
  }

}
