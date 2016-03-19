// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//9T._Zf

package _9T{
import _eC._0A3;
import _eC._4P;

import flash.display.Sprite;
    import com.company.assembleegameclient.map._1C8;

    public class _Zf extends Sprite {

        private const _0st:Object = {}
        private const _0Ne:Object = {}

        public function _Zf(){
            mouseEnabled = true;
            mouseChildren = true;
        }

        public function addSpeechBalloon(_arg1:_0b7):void{
            var _local2:int = _arg1.go_.objectId_;
            var _local3:_0b7 = this._0st[_local2];
            if (((_local3) && (contains(_local3))))
            {
                removeChild(_local3);
            }
            this._0st[_local2] = _arg1;
            addChild(_arg1);
        }

        public function addStatusText(_arg1:_1zh):void{
            addChild(_arg1);
        }

        public function addQueuedText(_arg1:_0A3):void{
            var _local2:int = _arg1.go_.objectId_;
            var _local3:_4P = (this._0Ne[_local2] = ((this._0Ne[_local2]) || (this._0V7())));
            _local3.append(_arg1);
        }

        private function _0V7():_4P{
            var _local1:_4P = new _4P();
            _local1.target = this;
            return (_local1);
        }

        public function draw(_arg1:_1C8, _arg2:int):void{
            var _local4:_0CC;
            var _local3:int;
            while (_local3 < numChildren)
            {
                _local4 = (getChildAt(_local3) as _0CC);
                if (((!(_local4)) || (_local4.draw(_arg1, _arg2))))
                {
                    _local3++;
                } else
                {
                    _local4.dispose();
                }
            }
        }


    }
}//package 9T

