{ div, ul, li, a } = React.DOM

@PostList = Component.create
  displayName: 'PostList'
  mixins: [ReactMeteorData]

  getMeteorData: ->
    selector = { category: { $ne: "private" } }
    handle = Meteor.subscribe 'posts', selector
    data = {};
    if handle.ready()
      data.posts = Posts.find({}, { sort: { _id: 1 } }).fetch()
    data

  render: ->
    unless @data.posts?
      return div {}, "loading..."

    div {},
      "This is the post list"
      ul {},
        @data.posts.map (task) ->
          path = FlowRouter.path 'post', { _id: task._id }
          li key: task._id,
            a href: path,
              task.title
