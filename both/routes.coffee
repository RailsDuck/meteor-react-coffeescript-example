FlowRouter.route "/",
  action: ->
    ReactLayout.render Layout,
      content: PostsIndex {}

FlowRouter.route '/post/:_id',
  name: 'post'
  action: (params) ->
    ReactLayout.render Layout,
      content: PostsShow { _id: params._id }
