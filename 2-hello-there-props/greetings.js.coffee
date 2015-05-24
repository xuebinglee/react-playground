R = React.DOM

@Greetings = React.createClass
  propTypes:
    name: React.PropTypes.string

  getDefaultProps: ->
    name: 'there'

  render: ->
    R.h1 null,
      "Hello, #{@props.name}!"


React.render React.createElement(@Greetings, {name: 'Xuebing'}), document.body
