// Generated by CoffeeScript 1.7.1
(function() {
  this.RGBMixer = React.createClass({
    getInitialState: function() {
      return {
        red: 0,
        green: 0,
        blue: 0
      };
    },
    update: function(e) {
      return this.setState({
        red: this.refs.red.getDOMNode().value,
        green: this.refs.green.getDOMNode().value,
        blue: this.refs.blue.getDOMNode().value
      });
    },
    render: function() {
      return React.DOM.div(null, React.DOM.h1(null, 'RGB Mixer'), React.DOM.label(null, 'Red'), React.createElement(Slider, {
        ref: 'red',
        handleChange: this.update
      }, {
        defaultValue: this.state.red
      }), React.DOM.label(null, this.state.red), React.DOM.label(null, 'Green'), React.createElement(Slider, {
        ref: 'green',
        handleChange: this.update
      }, {
        defaultValue: this.state.green
      }), React.DOM.label(null, this.state.green), React.DOM.label(null, 'Blue'), React.createElement(Slider, {
        ref: 'blue',
        handleChange: this.update
      }, {
        defaultValue: this.state.blue
      }), React.DOM.label(null, this.state.blue), React.DOM.h3({
        style: {
          color: "rgb(" + this.state.red + ", " + this.state.green + ", " + this.state.blue + ")"
        }
      }, 'Result'));
    }
  });

  React.render(React.createElement(RGBMixer), document.body);

}).call(this);
