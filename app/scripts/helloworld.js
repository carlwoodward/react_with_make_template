/** @jsx React.DOM */
var Helloworld = React.createClass({
  render: function() {
    return (
      <div className="todobox">
        <h1>Hello, world!</h1>
        <Todo />
      </div>
    );
  }
});

React.renderComponent(
  <Helloworld />,
  document.getElementById('example')
);
