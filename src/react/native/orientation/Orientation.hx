package react.native.orientation;

@:jsRequire('react-native-orientation')
extern class Orientation {
	public static function getOrientation(cb:Dynamic->OrientationDirection->Void):Void;
	public static function getSpecificOrientation(cb:Dynamic->SpecificOrientationDirection->Void):Void;
	public static function lockToPortrait():Void;
	public static function lockToLandscape():Void;
	public static function lockToLandscapeRight():Void;
	public static function lockToLandscapeLeft():Void;
	public static function unlockAllOrientations():Void;
	public static function addOrientationListener(cb:OrientationDirection->Void):Void;
	public static function addSpecificOrientationListener(cb:SpecificOrientationDirection->Void):Void;
	public static function removeOrientationListener(cb:OrientationDirection->Void):Void;
	public static function removeSpecificOrientationListener(cb:SpecificOrientationDirection->Void):Void;
	public static function getInitialOrientation():OrientationDirection;
}

@:enum abstract OrientationDirection(String) {
	var Landscape = 'LANDSCAPE';
	var Portrait = 'PORTRAIT';
	var Unknown = 'UNKNOWN';
	var PortraitUpSideDown = 'PORTRAITUPSIDEDOWN';
}

@:enum abstract SpecificOrientationDirection(String) {
	var LandscapeLeft = 'LANDSCAPE-LEFT';
	var LandscapeRight = 'LANDSCAPE-RIGHT';
	var Portrait = 'PORTRAIT';
	var Unknown = 'UNKNOWN';
	var PortraitUpSideDown = 'PORTRAITUPSIDEDOWN';
}