import 'package:analyzer/dart/element/type.dart';

bool isComponentOrSubclass(DartType? type) =>
    _isComponent(type) || _isSubclassOfComponent(type);

bool isVector(DartType? type) => type?.getDisplayString() == 'Vector2';

bool _isComponent(DartType? type) => type?.getDisplayString() == 'Component';

bool _isSubclassOfComponent(DartType? type) =>
    type is InterfaceType && type.allSupertypes.any(_isComponent);
