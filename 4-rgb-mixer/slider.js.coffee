@Slider = React.createClass
  propTypes:
    handleChange: React.PropTypes.func.isRequired
    defaultValue: React.PropTypes.number

  getDefaultProps: ->
    defaultValue: 0

  render: ->
    React.DOM.input
      type: 'range'
      min: 0
      max: 255
      defaultValue: @props.defaultValue
      onChange: @props.handleChange
