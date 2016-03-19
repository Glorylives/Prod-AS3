// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE._Py

package _0uE{
import _1r._u;

import flash.display.Sprite;
    import _1r._1L6;
    import flash.display.Bitmap;
    import _5z._0tK;
    import flash.geom.ColorTransform;
    import flash.events.Event;
    import _1Bg._1hy;
    import _1Bg._of;
    import _2_.*;
    import _1r.*;

    public class _Py extends Sprite implements _u, _1b1 {

        public static const _1YN:uint = 0x292929;

        public var _1P:_1L6;
        private var kN:Bitmap;
        private var enabled:Boolean = true;
        private var petVO:_0tK;
        private var _8K:Boolean = false;

        public function _Py(_arg1:_0tK){
            this._1P = new _1L6();
            super();
            this.petVO = _arg1;
            this._1P._1pS(this);
            this._1P.tooltip = new _5f(_arg1);
        }

        public function disable():void{
            var _local1:ColorTransform = new ColorTransform();
            _local1.color = _1YN;
            this.kN.transform.colorTransform = _local1;
            this.enabled = false;
        }

        public function isEnabled():Boolean{
            return (this.enabled);
        }

        override public function dispatchEvent(_arg1:Event):Boolean{
            if (this.enabled)
            {
                return (super.dispatchEvent(_arg1));
            }
            return (false);
        }

        public function _2t(_arg1:Bitmap):void{
            this.kN = _arg1;
            addChild(_arg1);
        }

        public function _4(_arg1:_1hy):void{
            this._1P._4(_arg1);
        }

        public function Bs():_1hy{
            return (this._1P.Bs());
        }

        public function na(_arg1:_of):void{
            this._1P.na(_arg1);
        }

        public function w1():_of{
            return (this._1P.w1());
        }

        public function getPetVO():_0tK{
            return (this.petVO);
        }

        public function Ta(_arg1:Boolean):void{
            this._8K = _arg1;
            if (!_arg1)
            {
            }
        }


    }
}//package 0uE

