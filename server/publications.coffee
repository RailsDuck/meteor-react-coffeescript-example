Meteor.publish 'posts', (selector) ->
  Posts.find selector

Meteor.publish 'singlePost', (_id) ->
  Posts.find { _id: _id }
