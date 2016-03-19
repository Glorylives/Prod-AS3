// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.1sD

package _0uE{
import _0IN._h;

import _1PB._cO;

import _XF._1eq;

import com.company.assembleegameclient.ui._1nN;

import flash.display.Sprite;
    import flash.events.MouseEvent;

    public class _1sD extends Sprite {

        public var buttonOne:_1nN;
        public var buttonTwo:_1nN;
        public var JG:_1eq;
        public var _1nu:_1eq;

        public function _1sD(){
            this.buttonOne = new _1nN(14, "buttonOne", 70);
            this.buttonTwo = new _1nN(14, "buttonTwo", 70);
            this.JG = new _1eq(this.buttonOne, MouseEvent.CLICK);
            this._1nu = new _1eq(this.buttonTwo, MouseEvent.CLICK);
            super();
            this._18t();
            this.PM();
        }

        private function PM():void{
            addChild(this.buttonOne);
            addChild(this.buttonTwo);
        }

        private function _18t():void{
            var _local3:_1nN;
            var _local1:Array = [this.buttonOne, this.buttonTwo];
            var _local2:_cO = new _cO();
            for each (_local3 in _local1)
            {
                _local2.push(_local3.textChanged);
            }
            _local2.complete.addOnce(this._2W);
        }

        private function _2W():void{
            this.buttonOne.x = _h._1k5;
            this.buttonTwo.x = ((_h._1h9 - this.buttonTwo.width) - _h._1k5);
        }


    }
}//package 0uE

