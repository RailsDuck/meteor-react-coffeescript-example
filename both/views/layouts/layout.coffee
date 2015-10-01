{ div, a, h1 } = React.DOM

@Layout = React.createClass
  render: ->
    div {},
      div className: "navigation",
        a href: "/",
          "Home"
      h1 {}, "My Blog"
      @props.content
