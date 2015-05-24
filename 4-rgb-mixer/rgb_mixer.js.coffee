@RGBMixer = React.createClass
  getInitialState: ->
    red:   0
    green: 0
    blue:  0

  update: (e) ->
    @setState
      red:   @refs.red.getDOMNode().value
      green: @refs.green.getDOMNode().value
      blue:  @refs.blue.getDOMNode().value

  render: ->
    React.DOM.div null,
      React.DOM.h1 null, 'RGB Mixer'
      React.DOM.label null, 'Red'
      React.createElement(Slider, ref: 'red', handleChange: @update,
        defaultValue: @state.red)
      React.DOM.label null, @state.red
      React.DOM.label null, 'Green'
      React.createElement(Slider, ref: 'green',handleChange: @update,
        defaultValue: @state.green)
      React.DOM.label null, @state.green
      React.DOM.label null, 'Blue'
      React.createElement(Slider, ref: 'blue', handleChange: @update,
        defaultValue: @state.blue)
      React.DOM.label null, @state.blue
      React.DOM.h3
        style:
          color: "rgb(#{@state.red}, #{@state.green}, #{@state.blue})"
        'Result'

React.render React.createElement(RGBMixer), document.body
