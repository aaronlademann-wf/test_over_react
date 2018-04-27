import 'dart:html';

import 'package:react/react.dart' as react;
import 'package:react/react_dom.dart' as react_dom;
import 'package:over_react/over_react.dart';

@Factory()
UiFactory<FooProps> Foo;

@Props()
class FooProps extends UiProps {
  String color;
}

//@State()
//class FooState extends UiState {
//  bool isActive;
//}

@Component()
class FooComponent extends UiComponent<FooProps> {
  @override
  Map getDefaultProps() =>
      (newProps()
        ..color = '#66cc00'
      );

//  @override
//  getInitialState() =>
//      (newState()
//        ..isActive = false
//      );

  @override
  render() {
    return (Dom.div()
      ..style = {
        'color': props.color,
        'fontWeight': 'normal'
      }
    )(
        (Dom.button()..onClick = _handleButtonClick)('Toggle'),
        props.children
    );
  }

  _handleButtonClick(event) {
  }
}


void main() {
  setClientConfiguration();

  // Mount / render your component.
  react_dom.render(Foo()(), querySelector('#output'));
}
