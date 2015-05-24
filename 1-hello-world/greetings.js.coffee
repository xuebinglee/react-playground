@Greetings = React.createClass
  render: ->
    React.DOM.h2 null,
      'Hello world'

React.render(React.createElement(@Greetings), document.body)
