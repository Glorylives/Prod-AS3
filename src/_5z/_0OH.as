// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5z.0OH

package _5z{
import F7._Ig;

import _AO._du;

import _g0._Tz;

import flash.utils.Dictionary;
    import _0DE._14l;

    public class _0OH {

        private var Data:Class;
        private var _1wx:XML;
        private var Ii:Dictionary;
        private var Sh:_0tK;
        private var F4:int;
        public var Ey:_Tz;

        public function _0OH(){
            this.Data = _0Q7;
            this._1wx = XML(new this.Data());
            super();
        }

        public function get _19J():Array{
            var _local1:Array = [];
            _local1[0] = new _2w(_du._0fh, this._0YB("Common"), _1dH.aB, this.Sh.u5());
            _local1[1] = new _2w(_du._1u0, this._0YB("Rare"), _1dH._0UN, this.Sh.u5());
            _local1[2] = new _2w(_du._1ma, this._0YB("Divine"), _1dH.cn, this.Sh.u5());
            return (_local1);
        }

        public function _07Q():void{
            var _local1:uint;
            var _local3:XML;
            var _local2:uint = this._1wx.Object.length();
            this.Ii = new Dictionary();
            _local1 = 0;
            while (_local1 < _local2)
            {
                _local3 = this._1wx.Object[_local1];
                if (this.Mq(_local3))
                {
                    this._1Ig(_local3);
                }
                _local1++;
            }
        }

        private function _1Ig(_arg1:XML):void{
            var _local2:String = XMLList(_arg1.Rarity).valueOf();
            var _local3:_0tK = this._0rR(_arg1);
            if (this.Ii[_local2])
            {
                this.Ii[_local2].push(_local3);
            } else
            {
                this.Ii[_local2] = [_local3];
            }
        }

        public function Gj(_arg1:_0tK):void{
            this.Sh = _arg1;
        }

        private function _0rR(_arg1:XML):_0tK{
            var _local2:_0tK = new _0tK();
            _local2.setType(_arg1.@type);
            _local2.setID(_arg1.@id);
            _local2._1es(this._0jE(_arg1.DefaultSkin[0]));
            return (_local2);
        }

        private function _0jE(_arg1:String):int{
            var _local2:uint;
            var _local4:XML;
            var _local5:String;
            var _local3:uint = this._1wx.Object.length();
            _local2 = 0;
            while (_local2 < _local3)
            {
                _local4 = this._1wx.Object[_local2];
                _local5 = _local4.@id;
                if (this.rw(_local4))
                {
                    if (_local5 == _arg1)
                    {
                        return (int(_local4.@type));
                    }
                }
                _local2++;
            }
            return (-1);
        }

        private function Mq(_arg1:XML):Boolean{
            return (((_arg1.hasOwnProperty("Pet")) && ((_arg1.Family == this.Sh._1m7()))));
        }

        private function rw(_arg1:XML):Boolean{
            return (_arg1.hasOwnProperty("PetSkin"));
        }

        public function _0Qq():_0tK{
            return (this.Sh);
        }

        public function _0YB(_arg1:String):Array{
            return (this.Ii[_arg1]);
        }

        public function DS(_arg1:_14l):void{
            this.Ey = new _Tz();
            this.Ey.objectId_ = _arg1._0ZD.owner.objectId_;
            this.Ey.objectType_ = _arg1.mh();
            this.Ey._08N = _arg1._1eu;
        }

        public function _05i():int{
            return (this.F4);
        }

        public function W7(_arg1:int):void{
            this.F4 = _arg1;
        }

        public function _1u(_arg1:int):int{
            var _local2:uint;
            var _local4:XML;
            var _local5:int;
            var _local3:uint = this._1wx.Object.length();
            _local2 = 0;
            while (_local2 < _local3)
            {
                _local4 = this._1wx.Object[_local2];
                _local5 = _local4.@type;
                if (_local5 == _arg1)
                {
                    return (this.Sc(_local4.@id));
                }
                _local2++;
            }
            return (-1);
        }

        private function Sc(_arg1:String):int{
            var _local2:uint;
            var _local4:XML;
            var _local5:String;
            var _local3:uint = this._1wx.Object.length();
            _local2 = 0;
            while (_local2 < _local3)
            {
                _local4 = this._1wx.Object[_local2];
                _local5 = _local4.DefaultSkin;
                if (_local5 == _arg1)
                {
                    return (_local4.@type);
                }
                _local2++;
            }
            return (-1);
        }


    }
}//package 5z

