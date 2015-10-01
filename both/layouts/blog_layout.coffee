{ div, a, h1 } = React.DOM

@BlogLayout = React.createClass
  render: ->
    div {},
      div className: "navigation",
        a href: "/",
          "Home"
      h1 {}, "My Blog"
      @props.content
