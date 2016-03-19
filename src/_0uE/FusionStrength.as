// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.FusionStrength

package _0uE{
import _1n4._1cA;

import _CU._13j;

import flash.display.Sprite;
    public class FusionStrength extends Sprite {

        public static const _0lp:uint = 8768801;
        public static const _21J:uint = 0xFF0000;
        public static const Oj:int = 0xB3B3B3;
        public static const LOW:String = "FusionStrength.Low";
        public static const _1XZ:String = "FusionStrength.Bad";
        public static const _2C:String = "FusionStrength.Good";
        public static const _1O4:String = "FusionStrength.Great";
        public static const _1RC:String = "FusionStrength.Fantastic";
        public static const Dr:String = "FusionStrength.Maxed";
        public static const NONE:String = "FusionStrength.None";
        private static const _1ss:Number = 16;

        public var Vx:_13j;

        public function FusionStrength():void{
            addChild(_KR.K());
            this.OW();
            this._1lL();
        }

        private static function _1I0(_arg1:Number):String{
            if (_1dm(_arg1))
            {
                return (Dr);
            }
            if (_arg1 > 0.8)
            {
                return (_1RC);
            }
            if (_arg1 > 0.6)
            {
                return (_1O4);
            }
            if (_arg1 > 0.4)
            {
                return (_2C);
            }
            if (_arg1 > 0.2)
            {
                return (LOW);
            }
            return (_1XZ);
        }

        private static function _1dm(_arg1:Number):Boolean{
            return ((Math.abs((_arg1 - 1)) < 0.001));
        }

        private static function _05u(_arg1:Number):Boolean{
            return ((_arg1 < 0.2));
        }


        public function reset():void{
            this.Vx.setStringBuilder(new _1cA().setParams(NONE));
            this.Vx.setColor(Oj);
        }

        private function OW():void{
            var _local1:_13j = _KR.makeText();
            _local1.x = _1ss;
            _local1.y = this._09a();
            addChild(_local1);
        }

        private function _1lL():void{
            this.Vx = _KR._1l8();
            this.Vx.x = (width - _1ss);
            this.Vx.y = this._09a();
            this.Vx.setStringBuilder(new _1cA().setParams(NONE));
            this.Vx.setColor(Oj);
            addChild(this.Vx);
        }

        private function _09a():Number{
            return ((height / 2));
        }

        public function _1dO(_arg1:Number):void{
            var _local2:String = _1I0(_arg1);
            this.Vx.setStringBuilder(new _1cA().setParams(_local2));
            this._9E(_arg1);
        }

        private function _9E(_arg1:Number):void{
            if (_1dm(_arg1))
            {
                this.Vx.setColor(_0lp);
            } else
            {
                if (_05u(_arg1))
                {
                    this.Vx.setColor(_21J);
                } else
                {
                    this.Vx.setColor(Oj);
                }
            }
        }


    }
}//package 0uE

