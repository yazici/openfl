package openfl.geom;

#if (display || !flash)
import openfl.Vector;

#if !openfl_global
@:jsRequire("openfl/geom/Utils3D", "default")
#end
extern class Utils3D
{
	#if flash
	@:noCompletion @:dox(hide) public static function pointTowards(percent:Float, mat:Matrix3D, pos:Vector3D, ?at:Vector3D, ?up:Vector3D):Matrix3D;
	#end
	public static function projectVector(m:Matrix3D, v:Vector3D):Vector3D;
	public static function projectVectors(m:Matrix3D, verts:Vector<Float>, projectedVerts:Vector<Float>, uvts:Vector<Float>):Void;
}
#else
typedef Utils3D = flash.geom.Utils3D;
#end
