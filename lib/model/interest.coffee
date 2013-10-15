root = exports ? this

root.Interests = new Meteor.Collection "interests"

Interests.allow
  insert: (userId, doc) -> true
