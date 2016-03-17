// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.253

package _0uE{
import XF.dispatch;

import _0gd.GTween;

import flash.display.Sprite;
    import _Jy._1HZ;
    import flash.display.Shape;
    import flash.geom.ColorTransform;

    public class _253 extends Sprite {

        public const _0O:_1HZ = new _1HZ(Boolean);
        public const _0zw:_1HZ = new _1HZ();
        private const i7:uint = 0xB3B3B3;
        private const _0oQ:uint = 1572859;
        private const _22p:uint = 0x565656;

        private var mR:Shape;
        private var _12k:Shape;
        private var _1C1:int = 0;
        public var _22s:int = -1;
        private var At:int = 0;
        private var _1wI:int = 0;

        public function _253(_arg1:int, _arg2:int){
            this.mR = new Shape();
            this._12k = new Shape();
            super();
            this.At = _arg1;
            this._1wI = _arg2;
            this._12k.graphics.beginFill(this._22p, 1);
            this._12k.graphics.drawRect(0, 0, _arg1, _arg2);
            addChild(this._12k);
            addChild(this.mR);
        }

        public function reset():void{
            this._22s = 0;
            this.mR.graphics.clear();
            this.mR.graphics.beginFill(this.i7, 1);
            this.mR.graphics.drawRect(0, 0, 1, this._1wI);
            this.mR.width = 1;
        }

        public function fill():void{
            if (this._22s == this._1C1)
            {
                this.reset();
                this._0zw.dispatch();
                return;
            };
            var _local1:Number = this.At;
            this._02J(this._0oQ);
            var _local2:GTween = new GTween(this.mR, 1, {width:_local1});
            _local2.onComplete = this._25a;
        }

        private function _25a(_arg1:GTween):void{
            this._0zw.dispatch();
        }

        public function _02J(_arg1:uint):void{
            var _local2:ColorTransform = this.mR.transform.colorTransform;
            _local2.color = _arg1;
            this.mR.transform.colorTransform = _local2;
        }

        public function _1gg(_arg1:int):void{
            this._1C1 = _arg1;
            this._3Z();
        }

        public function _11i(_arg1:int):void{
            var _local2:Number;
            if (this._22s == -1)
            {
                this._22s = _arg1;
                _local2 = this._0dR();
                this.mR.graphics.beginFill(this.i7, 1);
                this.mR.graphics.drawRect(0, 0, _local2, this._1wI);
            };
            this._22s = _arg1;
            this._3Z();
        }

        private function _3Z():void{
            var _local2:GTween;
            var _local1:int = this._0dR();
            if (((((!((this._22s == -1))) && (!((this._22s == 0))))) && (!((_local1 == Math.round(this.mR.width))))))
            {
                this._0O.dispatch(true);
                this._02J(this._0oQ);
                _local2 = new GTween(this.mR, 2, {width:_local1});
                _local2.onComplete = this._0qP;
            };
        }

        private function _0dR():int{
            var _local1:int = ((this._22s * this.At) / this._1C1);
            return (((isNaN(_local1)) ? 1 : Math.round(Math.max(1, Math.min(this.At, _local1)))));
        }

        public function _0qP(_arg1:GTween):void{
            this._02J(this.i7);
            this._0O.dispatch(false);
        }


    }
}//package 0uE

