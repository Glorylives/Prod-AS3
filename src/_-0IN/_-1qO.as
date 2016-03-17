// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0IN.1qO

package 0IN{
    import 0uE.IJ;
    import 0uE.qZ;
    import 0uE.1sD;
    import 0uE.PetAbilityMeter;
    import __AS3__.vec.Vector;
    import _CU._13j;
    import 1n4.1cA;
    import AO.du;
    import flash.text.TextFormatAlign;
    import flash.filters.DropShadowFilter;
    import 0uE.PetFeeder;
    import 0uE.PetFuser;
    import 0uE.1w6;
    import 0Z-.0YK;
    import 0Z-.0U-;
    import flash.display.Shape;
    import 0uE.KC;
    import com.company.assembleegameclient.ui.1-p;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import flash.display.BitmapData;
    import com.company.util.BitmapUtil;
    import 0uE.FusionStrength;
    import __AS3__.vec.*;

    public class 1qO {


        public static function S3(_arg1:uint, _arg2:uint):IJ{
            var _local3:IJ = new IJ();
            _local3.draw(_arg1, _arg2);
            _local3.UK(IJ.HORIZONTAL_DIVISION, h.A7);
            _local3.UK(IJ.HORIZONTAL_DIVISION, h.to);
            return (_local3);
        }

        public static function 1A9():IJ{
            var _local1:IJ = new IJ();
            _local1.draw(h.1h9, h.0pp);
            _local1.UK(IJ.HORIZONTAL_DIVISION, h.A7);
            _local1.UK(IJ.HORIZONTAL_DIVISION, h.1zH);
            return (_local1);
        }

        public static function 2-j(_arg1:String, _arg2:uint):qZ{
            var _local3:qZ = new qZ();
            _local3.y = _arg2;
            _local3.setPrefix(_arg1);
            return (_local3);
        }

        public static function 0vj():1sD{
            var _local1:1sD;
            _local1 = new 1sD();
            _local1.y = (h.16X - 35);
            return (_local1);
        }

        private static function 1D5():PetAbilityMeter{
            var _local1:PetAbilityMeter;
            _local1 = new PetAbilityMeter();
            _local1.y = h.zw;
            return (_local1);
        }

        public static function 1jn():Vector.<PetAbilityMeter>{
            return (Vector.<PetAbilityMeter>([1D5(), 1D5(), 1D5()]));
        }

        public static function 04T():_13j{
            var _local1:_13j = new _13j();
            _local1.setStringBuilder(new 1cA().setParams(du.1Vr));
            _local1.setTextWidth((h.1h9 - 20)).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER).setSize(h.04D).setColor(0xB3B3B3);
            _local1.y = 42;
            return (_local1);
        }

        public static function aT():_13j{
            var _local1:_13j;
            _local1 = new _13j();
            _local1.setSize(h.04D).setColor(0xB3B3B3).setBold(true).setHorizontalAlign(TextFormatAlign.CENTER).setWordWrap(true).setTextWidth(100);
            _local1.filters = [new DropShadowFilter(0, 0, 0)];
            _local1.y = h.Wg;
            return (_local1);
        }

        public static function 1eg(_arg1:uint, _arg2:uint):_13j{
            var _local3:_13j = new _13j();
            _local3.setSize(h.04D).setColor(_arg1).setBold(true).setHorizontalAlign(TextFormatAlign.CENTER).setWordWrap(true).setTextWidth(_arg2);
            return (_local3);
        }

        public static function wj():PetFeeder{
            var _local1:PetFeeder = new PetFeeder();
            _local1.y = h.0gZ;
            return (_local1);
        }

        public static function 0f0():PetFuser{
            var _local1:PetFuser = new PetFuser();
            _local1.y = (h.0gZ + 50);
            return (_local1);
        }

        public static function 1Eb():1w6{
            var _local1:1w6;
            _local1 = new 1w6();
            _local1.x = h.25;
            _local1.y = h.0sp;
            return (_local1);
        }

        public static function 1Vt():0YK{
            var _local1:0YK = new 0YK();
            _local1.x = (h.25 + 35);
            _local1.0LZ(true);
            return (_local1);
        }

        public static function gy():0U-{
            var _local1:0U-;
            _local1 = new 0U-();
            _local1.x = (h.25 + 35);
            _local1.0LZ(true);
            _local1.1U7 = true;
            return (_local1);
        }

        public static function 1V2(_arg1:uint, _arg2:uint, _arg3:int, _arg4:Boolean, _arg5:Boolean, _arg6:int=2):Shape{
            var _local7:Shape;
            _local7 = new Shape();
            ((_arg4) && (_local7.graphics.beginFill(0x464646, 1)));
            ((_arg5) && (_local7.graphics.lineStyle(_arg6, _arg2)));
            _local7.graphics.drawRoundRect(0, _arg3, _arg1, _arg1, 16, 16);
            _local7.x = ((100 - _arg1) * 0.5);
            return (_local7);
        }

        public static function 19W(_arg1:int):KC{
            var _local2:KC = new KC();
            _local2.y = 4;
            _local2.x = ((_arg1 - _local2.width) - 5);
            return (_local2);
        }

        public static function 1X0():1-p{
            var _local1:1-p;
            _local1 = new 1-p(173, 0);
            _local1.x = 5;
            _local1.y = 64;
            return (_local1);
        }

        public static function 4d(_arg1:uint, _arg2:uint=80):Bitmap{
            return (new Bitmap(ObjectLibrary.getRedrawnTextureFromType(_arg1, _arg2, true)));
        }

        public static function 2j():Bitmap{
            return (1AI(6466));
        }

        public static function 74(_arg1:uint):Bitmap{
            return (new Bitmap(ObjectLibrary.getRedrawnTextureFromType(_arg1, 80, true)));
        }

        private static function 1AI(_arg1:uint):Bitmap{
            var _local2:Bitmap = new Bitmap();
            var _local3:XML = ObjectLibrary.GD[_arg1];
            var _local4:int = 5;
            if (_local3.hasOwnProperty("ScaleValue"))
            {
                _local4 = _local3.ScaleValue;
            };
            var _local5:BitmapData = ObjectLibrary.getRedrawnTextureFromType(_arg1, 80, true, true, _local4);
            _local5 = BitmapUtil.0Bs(_local5, 4, 4, (_local5.width - 8), (_local5.height - 8));
            _local2 = new Bitmap(_local5);
            return (_local2);
        }

        public static function P-():FusionStrength{
            var _local1:FusionStrength = new FusionStrength();
            _local1.y = h.1ri;
            _local1.x = ((h.1h9 - _local1.width) * 0.5);
            return (_local1);
        }

        public static function 18-(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:Boolean=false):_13j{
            var _local5:_13j = new _13j();
            _local5.setSize(_arg2).setColor(_arg1).setBold(_arg3);
            _local5.filters = ((_arg4) ? [new DropShadowFilter(0, 0, 0)] : []);
            return (_local5);
        }

        public static function 1H-(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:Boolean=false):_13j{
            var _local5:_13j = new _13j();
            _local5.setSize(_arg2).setColor(_arg1).setBold(_arg3);
            _local5.setVerticalAlign(_13j.BOTTOM);
            _local5.filters = ((_arg4) ? [new DropShadowFilter(0, 0, 0)] : []);
            return (_local5);
        }

        public static function 0cN(_arg1:uint, _arg2:uint):IJ{
            var _local3:IJ = new IJ();
            _local3.draw(_arg1, _arg2);
            _local3.UK(IJ.HORIZONTAL_DIVISION, 30);
            _local3.UK(IJ.HORIZONTAL_DIVISION, 212);
            _local3.UK(IJ.HORIZONTAL_DIVISION, 349);
            return (_local3);
        }

        public static function 218(_arg1:uint, _arg2:uint):IJ{
            var _local3:IJ = new IJ();
            _local3.draw(_arg1, _arg2);
            _local3.UK(IJ.HORIZONTAL_DIVISION, 30);
            _local3.UK(IJ.HORIZONTAL_DIVISION, 206);
            return (_local3);
        }


    }
}//package 0IN

