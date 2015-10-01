{ div, a, h3, p } = React.DOM

@PostsShow = Component.create
  displayName: 'PostPage'
  mixins: [ReactMeteorData]

  getMeteorData: ->
    handle = Meteor.subscribe 'singlePost', @props._id
    data = {}
    if handle.ready()
      data.post = Posts.findOne { _id: @props._id }
    data

  render: ->
    unless @data.post?
      return div {}, "loading..."

    div {},
      a href: "/", "Back"
      h3 {}, @data.post.title
      p {}, @data.post.content
