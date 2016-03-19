// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1m9.14d

package _1m9{
    import flash.utils.Dictionary;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.display.BitmapData;
    import flash.geom.ColorTransform;
    import flash.display.GraphicsBitmapFill;
    import _04_._1JZ;
    import _04m._0so;
    import flash.display3D.VertexBuffer3D;
    import flash.display3D.Context3DVertexBufferFormat;
    import flash.display.GraphicsSolidFill;

    public class _14d {

        private static const _0of:Vector.<Number> = Vector.<Number>([0, 0, 0, 0]);

        private static var _1LH:Dictionary = new Dictionary();
        private static var _0Do:uint = 0;
        private static var _2h:Dictionary = new Dictionary();
        private static var _0tD:uint = 0;
        private static var _0bL:Dictionary = new Dictionary();
        private static var _0IL:uint = 0;
        private static var _1B:Dictionary = new Dictionary();
        private static var _1vk:uint = 0;
        private static var D9:Dictionary = new Dictionary();
        private static var _119:uint = 0;
        private static var _1hd:Dictionary = new Dictionary();
        private static var _1jy:uint = 0;
        private static var Hm:uint = 0;


        public static function _0bB(_arg1:BitmapData, _arg2:ColorTransform):void{
            if (!Parameters.TP())
            {
                return;
            }
            if (_0bL[_arg1] == null)
            {
                _0IL++;
            }
            _0bL[_arg1] = _arg2;
        }

        public static function _1lX(_arg1:BitmapData):ColorTransform{
            var _local2:ColorTransform;
            if ((_arg1 in _0bL))
            {
                _local2 = _0bL[_arg1];
                _0bL[_arg1] = new ColorTransform();
            } else
            {
                _local2 = new ColorTransform();
                _0bL[_arg1] = _local2;
                _0IL++;
            }
            return (_local2);
        }

        public static function _1xq(_arg1:GraphicsBitmapFill, _arg2:Number, _arg3:Number):void{
            if (!Parameters.TP())
            {
                return;
            }
            _05y(_arg1);
            _1LH[_arg1][0] = _arg2;
            _1LH[_arg1][1] = _arg3;
        }

        public static function IL(_arg1:GraphicsBitmapFill):Vector.<Number>{
            if (_1LH[_arg1] != null)
            {
                return (_1LH[_arg1]);
            }
            return (_0of);
        }

        private static function _05y(_arg1:GraphicsBitmapFill):void{
            if (!Parameters.TP())
            {
                return;
            }
            if (_1LH[_arg1] == null)
            {
                _0Do++;
                _1LH[_arg1] = Vector.<Number>([0, 0, 0, 0]);
            }
        }

        public static function _0GJ(_arg1:GraphicsBitmapFill, _arg2:Number):void{
            if (!Parameters.TP())
            {
                return;
            }
            if (_2h[_arg1] == null)
            {
                _0tD++;
            }
            _2h[_arg1] = _arg2;
        }

        public static function p(_arg1:GraphicsBitmapFill):Number{
            if (((!((_2h[_arg1] == null))) && ((_2h[_arg1] is Number))))
            {
                return (_2h[_arg1]);
            }
            return (0);
        }

        public static function j9(_arg1:GraphicsBitmapFill, _arg2:Vector.<Number>):void{
            if (!Parameters.TP())
            {
                return;
            }
            var _local3:_0so = _1JZ._0JF().getInstance(_0so);
            var _local4:VertexBuffer3D = _local3._1tB().createVertexBuffer(4, 5);
            _local4.uploadFromVector(_arg2, 0, 4);
            _local3._1tB().setVertexBufferAt(0, _local4, 0, Context3DVertexBufferFormat.FLOAT_3);
            _local3._1tB().setVertexBufferAt(1, _local4, 3, Context3DVertexBufferFormat.FLOAT_2);
            if (_1B[_arg1] == null)
            {
                _1vk++;
            }
            _1B[_arg1] = _local4;
        }

        public static function af(_arg1:GraphicsBitmapFill):VertexBuffer3D{
            if (((!((_1B[_arg1] == null))) && ((_1B[_arg1] is VertexBuffer3D))))
            {
                return (_1B[_arg1]);
            }
            return (null);
        }

        public static function Qe(_arg1:GraphicsBitmapFill):void{
            if (!Parameters.TP())
            {
                return;
            }
            if (_2h[_arg1] != null)
            {
                _0tD--;
                delete _2h[_arg1];
            }
        }

        public static function _0Sd(_arg1:GraphicsBitmapFill, _arg2:Boolean):void{
            if (!Parameters.TP())
            {
                return;
            }
            if (D9[_arg1] == null)
            {
                _119++;
            }
            D9[_arg1] = _arg2;
        }

        public static function M8(_arg1:GraphicsBitmapFill):Boolean{
            if (((!((D9[_arg1] == null))) && ((D9[_arg1] is Boolean))))
            {
                return (D9[_arg1]);
            }
            return (false);
        }

        public static function MM(_arg1:GraphicsSolidFill, _arg2:Boolean):void{
            if (!Parameters.TP())
            {
                return;
            }
            if (_1hd[_arg1] == null)
            {
                _1jy++;
            }
            _1hd[_arg1] = _arg2;
        }

        public static function eK(_arg1:GraphicsSolidFill):Boolean{
            if (((!((_1hd[_arg1] == null))) && ((_1hd[_arg1] is Boolean))))
            {
                return (_1hd[_arg1]);
            }
            return (false);
        }

        public static function dispose():void{
            _1LH = new Dictionary();
            _2h = new Dictionary();
            _0bL = new Dictionary();
            n6();
            D9 = new Dictionary();
            _1hd = new Dictionary();
            _0Do = 0;
            _0tD = 0;
            _0IL = 0;
            _1vk = 0;
            _119 = 0;
            _1jy = 0;
        }

        public static function n6():void{
            var _local1:VertexBuffer3D;
            for each (_local1 in _1B)
            {
                _local1.dispose();
            }
            _1B = new Dictionary();
        }

        public static function _1GN():void{
            if (_0IL > 2000)
            {
                _0bL = new Dictionary();
                _0IL = 0;
            }
            if (_0Do > 2000)
            {
                _1LH = new Dictionary();
                _0Do = 0;
            }
            if (_0tD > 2000)
            {
                _2h = new Dictionary();
                _0tD = 0;
            }
            if (_1vk > 1000)
            {
                n6();
                _1vk = 0;
            }
            if (119 > 2000)
            {
                D9 = new Dictionary();
                _119 = 0;
            }
            if (_1jy > 2000)
            {
                _1hd = new Dictionary();
                _1jy = 0;
            }
        }


    }
}//package 1m9

