part of 'roamio_draggable_sheet.dart';

class RCurves {
  RCurves._();

  static const Curve decelerate = RoamioDecelerateCurve._();
}

class RoamioDecelerateCurve extends Curve {
  const RoamioDecelerateCurve._();

  @override
  double transformInternal(double t) {
    // Adjust the exponent to control the rate of deceleration.
    // A higher exponent will make the curve decelerate more sharply.
    return (1 - math.pow(1 - t, 3)).toDouble();
  }
}
