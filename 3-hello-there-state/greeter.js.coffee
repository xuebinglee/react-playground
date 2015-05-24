R = React.DOM

@Greeter = React.createClass
  getInitialState: ->
    name: 'there'

  update: (e) ->
    @setState name: e.target.value

  render: ->
    R.div
      className: 'greeter'
      R.input
        type: 'text'
        placeholder: 'What is your name?'
        onChange: @update
      R.h1 null,
        "Hello, #{@state.name}!"

React.render React.createElement(@Greeter), document.body
