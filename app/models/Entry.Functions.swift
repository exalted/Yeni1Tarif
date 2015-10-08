extension Entry {
  class func all() -> PFQuery {
    return self.query()!.orderByDescending("publishedAt")
  }

  class func foo(something: [Entry] -> Void) {
    self.all()
      .findObjectsInBackground()
      .continueWithSuccessBlock { (task: BFTask!) -> BFTask! in
        something(task.result as! [Entry])
        return task
      }
  }
}
