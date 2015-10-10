extension Entry {

  class func all() -> PFQuery {
    let query = self.query()!.orderByDescending("publishedAt")

    return query
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
