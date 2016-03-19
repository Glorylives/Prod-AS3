// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0IN.1qO

package _0IN{
import _0uE.FusionStrength;
import _0uE.PetAbilityMeter;
import _0uE._1sD;
import _0uE._IJ;
import _0uE._qZ;

import _1n4._1cA;

import _AO._du;
    import _CU._13j;

import com.company.assembleegameclient.ui._1p;


import flash.text.TextFormatAlign;
    import flash.filters.DropShadowFilter;
    import flash.display.Shape;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import flash.display.BitmapData;
    import com.company.util.BitmapUtil;

    public class _1qO {


        public static function S3(_arg1:uint, _arg2:uint):_IJ{
            var _local3:_IJ = new _IJ();
            _local3.draw(_arg1, _arg2);
            _local3.UK(_IJ.HORIZONTAL_DIVISION, _h.A7);
            _local3.UK(_IJ.HORIZONTAL_DIVISION, _h.to);
            return (_local3);
        }

        public static function _1A9():_IJ{
            var _local1:_IJ = new _IJ();
            _local1.draw(_h._1h9, _h._0pp);
            _local1.UK(_IJ.HORIZONTAL_DIVISION, _h.A7);
            _local1.UK(_IJ.HORIZONTAL_DIVISION, _h._1zH);
            return (_local1);
        }

        public static function _2j(_arg1:String, _arg2:uint):_qZ{
            var _local3:_qZ = new _qZ();
            _local3.y = _arg2;
            _local3.setPrefix(_arg1);
            return (_local3);
        }

        public static function _0vj():_1sD{
            var _local1:_1sD;
            _local1 = new _1sD();
            _local1.y = (_h._16X - 35);
            return (_local1);
        }

        private static function _1D5():PetAbilityMeter{
            var _local1:PetAbilityMeter;
            _local1 = new PetAbilityMeter();
            _local1.y = _h.zw;
            return (_local1);
        }

        public static function _1jn():Vector.<PetAbilityMeter>{
            return (Vector.<PetAbilityMeter>([_1D5(), _1D5(), _1D5()]));
        }

        public static function _04T():_13j{
            var _local1:_13j = new _13j();
            _local1.setStringBuilder(new _1cA().setParams(_du._1Vr));
            _local1.setTextWidth((_h._1h9 - 20)).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER).setSize(_h._04D).setColor(0xB3B3B3);
            _local1.y = 42;
            return (_local1);
        }

        public static function aT():_13j{
            var _local1:_13j;
            _local1 = new _13j();
            _local1.setSize(_h._04D).setColor(0xB3B3B3).setBold(true).setHorizontalAlign(TextFormatAlign.CENTER).setWordWrap(true).setTextWidth(100);
            _local1.filters = [new DropShadowFilter(0, 0, 0)];
            _local1.y = _h.Wg;
            return (_local1);
        }

        public static function _1eg(_arg1:uint, _arg2:uint):_13j{
            var _local3:_13j = new _13j();
            _local3.setSize(_h._04D).setColor(_arg1).setBold(true).setHorizontalAlign(TextFormatAlign.CENTER).setWordWrap(true).setTextWidth(_arg2);
            return (_local3);
        }

        public static function wj():PetFeeder{
            var _local1:PetFeeder = new PetFeeder();
            _local1.y = _h._0gZ;
            return (_local1);
        }

        public static function _0f0():PetFuser{
            var _local1:PetFuser = new PetFuser();
            _local1.y = (_h._0gZ + 50);
            return (_local1);
        }

        public static function _1Eb():_1w6{
            var _local1:_1w6;
            _local1 = new _1w6();
            _local1.x = _h._25;
            _local1.y = _h._0sp;
            return (_local1);
        }

        public static function _1Vt():_0YK{
            var _local1:_0YK = new _0YK();
            _local1.x = (_h._25 + 35);
            _local1._0LZ(true);
            return (_local1);
        }

        public static function gy():_0U{
            var _local1:_0U;
            _local1 = new _0U();
            _local1.x = (_h._25 + 35);
            _local1._0LZ(true);
            _local1._1U7 = true;
            return (_local1);
        }

        public static function _1V2(_arg1:uint, _arg2:uint, _arg3:int, _arg4:Boolean, _arg5:Boolean, _arg6:int=2):Shape{
            var _local7:Shape;
            _local7 = new Shape();
            ((_arg4) && (_local7.graphics.beginFill(0x464646, 1)));
            ((_arg5) && (_local7.graphics.lineStyle(_arg6, _arg2)));
            _local7.graphics.drawRoundRect(0, _arg3, _arg1, _arg1, 16, 16);
            _local7.x = ((100 - _arg1) * 0.5);
            return (_local7);
        }

        public static function _19W(_arg1:int):_KC{
            var _local2:KC = new KC();
            _local2.y = 4;
            _local2.x = ((_arg1 - _local2.width) - 5);
            return (_local2);
        }

        public static function _1X0():_1p{
            var _local1:_1p;
            _local1 = new _1p(173, 0);
            _local1.x = 5;
            _local1.y = 64;
            return (_local1);
        }

        public static function _4d(_arg1:uint, _arg2:uint=80):Bitmap{
            return (new Bitmap(ObjectLibrary.getRedrawnTextureFromType(_arg1, _arg2, true)));
        }

        public static function _2xj():Bitmap{
            return (_1AI(6466));
        }

        public static function _74(_arg1:uint):Bitmap{
            return (new Bitmap(ObjectLibrary.getRedrawnTextureFromType(_arg1, 80, true)));
        }

        private static function _1AI(_arg1:uint):Bitmap{
            var _local2:Bitmap = new Bitmap();
            var _local3:XML = ObjectLibrary.GD[_arg1];
            var _local4:int = 5;
            if (_local3.hasOwnProperty("ScaleValue"))
            {
                _local4 = _local3.ScaleValue;
            };
            var _local5:BitmapData = ObjectLibrary.getRedrawnTextureFromType(_arg1, 80, true, true, _local4);
            _local5 = BitmapUtil._0Bs(_local5, 4, 4, (_local5.width - 8), (_local5.height - 8));
            _local2 = new Bitmap(_local5);
            return (_local2);
        }

        public static function P():FusionStrength{
            var _local1:FusionStrength = new FusionStrength();
            _local1.y = _h._1ri;
            _local1.x = (_h._1h9 - _local1.width) * 0.5);
            return (_local1);
        }

        public static function _18(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:Boolean=false):_13j{
            var _local5:_13j = new _13j();
            _local5.setSize(_arg2).setColor(_arg1).setBold(_arg3);
            _local5.filters = ((_arg4) ? [new DropShadowFilter(0, 0, 0)] : []);
            return (_local5);
        }

        public static function _1H(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:Boolean=false):_13j{
            var _local5:_13j = new _13j();
            _local5.setSize(_arg2).setColor(_arg1).setBold(_arg3);
            _local5.setVerticalAlign(_13j.BOTTOM);
            _local5.filters = ((_arg4) ? [new DropShadowFilter(0, 0, 0)] : []);
            return (_local5);
        }

        public static function _0cN(_arg1:uint, _arg2:uint):_IJ{
            var _local3:_IJ = new _IJ();
            _local3.draw(_arg1, _arg2);
            _local3.UK(_IJ.HORIZONTAL_DIVISION, 30);
            _local3.UK(_IJ.HORIZONTAL_DIVISION, 212);
            _local3.UK(_IJ.HORIZONTAL_DIVISION, 349);
            return (_local3);
        }

        public static function _218(_arg1:uint, _arg2:uint):IJ{
            var _local3:_IJ = new _IJ();
            _local3.draw(_arg1, _arg2);
            _local3.UK(_IJ.HORIZONTAL_DIVISION, 30);
            _local3.UK(_IJ.HORIZONTAL_DIVISION, 206);
            return (_local3);
        }


    }
}//package 0IN

