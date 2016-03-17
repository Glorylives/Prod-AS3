// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1m9.14d

package 1m9{
    import __AS3__.vec.Vector;
    import flash.utils.Dictionary;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.display.BitmapData;
    import flash.geom.ColorTransform;
    import flash.display.GraphicsBitmapFill;
    import _04_._1JZ;
    import 04m.0so;
    import flash.display3D.VertexBuffer3D;
    import flash.display3D.Context3DVertexBufferFormat;
    import flash.display.GraphicsSolidFill;
    import __AS3__.vec.*;

    public class 14d {

        private static const 0of:Vector.<Number> = Vector.<Number>([0, 0, 0, 0]);

        private static var 1LH:Dictionary = new Dictionary();
        private static var 0Do:uint = 0;
        private static var 2h:Dictionary = new Dictionary();
        private static var 0tD:uint = 0;
        private static var 0bL:Dictionary = new Dictionary();
        private static var 0IL:uint = 0;
        private static var 1-B:Dictionary = new Dictionary();
        private static var 1vk:uint = 0;
        private static var D9:Dictionary = new Dictionary();
        private static var 119:uint = 0;
        private static var 1hd:Dictionary = new Dictionary();
        private static var 1jy:uint = 0;
        private static var Hm:uint = 0;


        public static function 0bB(_arg1:BitmapData, _arg2:ColorTransform):void{
            if (!Parameters.TP())
            {
                return;
            };
            if (0bL[_arg1] == null)
            {
                0IL++;
            };
            0bL[_arg1] = _arg2;
        }

        public static function 1lX(_arg1:BitmapData):ColorTransform{
            var _local2:ColorTransform;
            if ((_arg1 in 0bL))
            {
                _local2 = 0bL[_arg1];
                0bL[_arg1] = new ColorTransform();
            } else
            {
                _local2 = new ColorTransform();
                0bL[_arg1] = _local2;
                0IL++;
            };
            return (_local2);
        }

        public static function 1xq(_arg1:GraphicsBitmapFill, _arg2:Number, _arg3:Number):void{
            if (!Parameters.TP())
            {
                return;
            };
            05y(_arg1);
            1LH[_arg1][0] = _arg2;
            1LH[_arg1][1] = _arg3;
        }

        public static function IL(_arg1:GraphicsBitmapFill):Vector.<Number>{
            if (1LH[_arg1] != null)
            {
                return (1LH[_arg1]);
            };
            return (0of);
        }

        private static function 05y(_arg1:GraphicsBitmapFill):void{
            if (!Parameters.TP())
            {
                return;
            };
            if (1LH[_arg1] == null)
            {
                0Do++;
                1LH[_arg1] = Vector.<Number>([0, 0, 0, 0]);
            };
        }

        public static function 0GJ(_arg1:GraphicsBitmapFill, _arg2:Number):void{
            if (!Parameters.TP())
            {
                return;
            };
            if (2h[_arg1] == null)
            {
                0tD++;
            };
            2h[_arg1] = _arg2;
        }

        public static function p(_arg1:GraphicsBitmapFill):Number{
            if (((!((2h[_arg1] == null))) && ((2h[_arg1] is Number))))
            {
                return (2h[_arg1]);
            };
            return (0);
        }

        public static function j9(_arg1:GraphicsBitmapFill, _arg2:Vector.<Number>):void{
            if (!Parameters.TP())
            {
                return;
            };
            var _local3:0so = _1JZ.0JF().getInstance(0so);
            var _local4:VertexBuffer3D = _local3.1tB().createVertexBuffer(4, 5);
            _local4.uploadFromVector(_arg2, 0, 4);
            _local3.1tB().setVertexBufferAt(0, _local4, 0, Context3DVertexBufferFormat.FLOAT_3);
            _local3.1tB().setVertexBufferAt(1, _local4, 3, Context3DVertexBufferFormat.FLOAT_2);
            if (1-B[_arg1] == null)
            {
                1vk++;
            };
            1-B[_arg1] = _local4;
        }

        public static function af(_arg1:GraphicsBitmapFill):VertexBuffer3D{
            if (((!((1-B[_arg1] == null))) && ((1-B[_arg1] is VertexBuffer3D))))
            {
                return (1-B[_arg1]);
            };
            return (null);
        }

        public static function Qe(_arg1:GraphicsBitmapFill):void{
            if (!Parameters.TP())
            {
                return;
            };
            if (2h[_arg1] != null)
            {
                0tD--;
                delete 2h[_arg1];
            };
        }

        public static function 0Sd(_arg1:GraphicsBitmapFill, _arg2:Boolean):void{
            if (!Parameters.TP())
            {
                return;
            };
            if (D9[_arg1] == null)
            {
                119++;
            };
            D9[_arg1] = _arg2;
        }

        public static function M8(_arg1:GraphicsBitmapFill):Boolean{
            if (((!((D9[_arg1] == null))) && ((D9[_arg1] is Boolean))))
            {
                return (D9[_arg1]);
            };
            return (false);
        }

        public static function MM(_arg1:GraphicsSolidFill, _arg2:Boolean):void{
            if (!Parameters.TP())
            {
                return;
            };
            if (1hd[_arg1] == null)
            {
                1jy++;
            };
            1hd[_arg1] = _arg2;
        }

        public static function eK(_arg1:GraphicsSolidFill):Boolean{
            if (((!((1hd[_arg1] == null))) && ((1hd[_arg1] is Boolean))))
            {
                return (1hd[_arg1]);
            };
            return (false);
        }

        public static function dispose():void{
            1LH = new Dictionary();
            2h = new Dictionary();
            0bL = new Dictionary();
            n6();
            D9 = new Dictionary();
            1hd = new Dictionary();
            0Do = 0;
            0tD = 0;
            0IL = 0;
            1vk = 0;
            119 = 0;
            1jy = 0;
        }

        public static function n6():void{
            var _local1:VertexBuffer3D;
            for each (_local1 in 1-B)
            {
                _local1.dispose();
            };
            1-B = new Dictionary();
        }

        public static function 1GN():void{
            if (0IL > 2000)
            {
                0bL = new Dictionary();
                0IL = 0;
            };
            if (0Do > 2000)
            {
                1LH = new Dictionary();
                0Do = 0;
            };
            if (0tD > 2000)
            {
                2h = new Dictionary();
                0tD = 0;
            };
            if (1vk > 1000)
            {
                n6();
                1vk = 0;
            };
            if (119 > 2000)
            {
                D9 = new Dictionary();
                119 = 0;
            };
            if (1jy > 2000)
            {
                1hd = new Dictionary();
                1jy = 0;
            };
        }


    }
}//package 1m9

