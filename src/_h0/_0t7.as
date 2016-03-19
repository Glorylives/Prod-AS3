// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//h0.0t7

package _h0{
import _0DE._14l;

import com.company.assembleegameclient.objects.GameObject;
    import com.company.assembleegameclient.objects.Player;

    public class _0t7 extends _1mR {

        private const _1c7:uint = 8;

        private var _0Hv:Vector.<_14l>;

        public function _0t7(_arg1:GameObject, _arg2:Player){
            var _local4:_14l;
            super(_arg1, _arg2, 0);
            this._0Hv = new Vector.<_14l>(this._1c7);
            var _local3:int;
            while (_local3 < this._1c7)
            {
                _local4 = new _14l((_local3 + _1st), this, _16t);
                _1b7(_local4, 2, _local3);
                this._0Hv[_local3] = _local4;
                _local3++;
            };
        }

        override public function setItems(_arg1:Vector.<int>, _arg2:int=0):void{
            var _local3:Boolean;
            var _local4:int;
            var _local5:int;
            if (_arg1)
            {
                _local3 = false;
                _local4 = _arg1.length;
                _local5 = 0;
                while (_local5 < this._1c7)
                {
                    if ((_local5 + _1st) < _local4)
                    {
                        if (this._0Hv[_local5].setItem(_arg1[(_local5 + _1st)]))
                        {
                            _local3 = true;
                        };
                    } else
                    {
                        if (this._0Hv[_local5].setItem(-1))
                        {
                            _local3 = true;
                        };
                    };
                    _local5++;
                };
                if (_local3)
                {
                    _20x();
                };
            };
        }


    }
}//package h0

