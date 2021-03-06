// Generated by CoffeeScript 1.7.1
(function() {
  this.Slider = React.createClass({
    propTypes: {
      handleChange: React.PropTypes.func.isRequired,
      defaultValue: React.PropTypes.number
    },
    getDefaultProps: function() {
      return {
        defaultValue: 0
      };
    },
    render: function() {
      return React.DOM.input({
        type: 'range',
        min: 0,
        max: 255,
        defaultValue: this.props.defaultValue,
        onChange: this.props.handleChange
      });
    }
  });

}).call(this);
