﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//rK.0OE

package _rK{
    import flash.utils.getQualifiedClassName;

    public class _0OE implements _0sO {

        protected var _7E:Vector.<Class>;
        protected var _1Rv:Vector.<Class>;
        protected var _0A5:String;
        protected var _0Hl:Vector.<Class>;

        public function _0OE(_arg1:Vector.<Class>, _arg2:Vector.<Class>, _arg3:Vector.<Class>){
            if (((((!(_arg1)) || (!(_arg2)))) || (!(_arg3))))
            {
                throw (ArgumentError("TypeFilter parameters can not be null"));
            }
            this._7E = _arg1;
            this._1Rv = _arg2;
            this._0Hl = _arg3;
        }

        public function get _26j():Vector.<Class>{
            return (this._7E);
        }

        public function get Rl():Vector.<Class>{
            return (this._1Rv);
        }

        public function get Wv():String{
            return ((this._0A5 = ((this._0A5) || (this._0OF()))));
        }

        public function get _0UO():Vector.<Class>{
            return (this._0Hl);
        }

        public function matches(_arg1):Boolean{
            var _local2:uint = this._7E.length;
            while (_local2--)
            {
                if (!(_arg1 is this._7E[_local2]))
                {
                    return (false);
                }
            }
            _local2 = this._0Hl.length;
            while (_local2--)
            {
                if ((_arg1 is this._0Hl[_local2]))
                {
                    return (false);
                }
            }
            if ((((this._1Rv.length == 0)) && ((((this._7E.length > 0)) || ((this._0Hl.length > 0))))))
            {
                return (true);
            }
            _local2 = this._1Rv.length;
            while (_local2--)
            {
                if ((_arg1 is this._1Rv[_local2]))
                {
                    return (true);
                }
            }
            return (false);
        }

        protected function _0Ag(_arg1:Vector.<Class>):Vector.<String>{
            var _local2:String;
            var _local3:Vector.<String> = new <String>[];
            var _local4:uint = _arg1.length;
            var _local5:uint;
            while (_local5 < _local4)
            {
                _local2 = getQualifiedClassName(_arg1[_local5]);
                _local3[_local3.length] = _local2;
                _local5++;
            }
            _local3.sort(this.tT);
            return (_local3);
        }

        protected function _0OF():String{
            var _local1:Vector.<String> = this._0Ag(this._26j);
            var _local2:Vector.<String> = this._0Ag(this.Rl);
            var _local3:Vector.<String> = this._0Ag(this._0UO);
            return (((((("all _of: " + _local1.toString()) + ", any _of: ") + _local2.toString()) + ", none _of: ") + _local3.toString()));
        }

        protected function tT(_arg1:String, _arg2:String):int{
            if (_arg1 < _arg2)
            {
                return (1);
            }
            return (-1);
        }


    }
}//package rK

