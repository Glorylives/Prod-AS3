// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//sc.09S

package _sc
{
import _0OG._22M;

import avmplus.getQualifiedClassName;

import flash.utils.Dictionary;

import i0.SsInternal;

import zr._1yq;

use namespace SsInternal;

public class _09S extends _0je {

        private static const _17J:Array = [];

        protected var _1Cg:Array;
        protected var _0BD:int;
        private var _p:Boolean;
        private var _0EY:String;

        public function _09S(_arg1:String, _arg2:Array, _arg3:uint, _arg4:Boolean, _arg5:Dictionary){
            this._0EY = _arg1;
            this._1Cg = _arg2;
            this._0BD = _arg3;
            this._p = _arg4;
            this.injectParameters = _arg5;
        }

        override public function applyInjection(_arg1:Object, _arg2:Class, _arg3:_22M):void{
            var _local4:Array = this._0hl(_arg1, _arg2, _arg3);
            if (_local4.length >= this._0BD)
            {
                (_arg1[this._0EY] as Function).apply(_arg1, _local4);
            }
            _local4.length = 0;
        }

        protected function _0hl(_arg1:Object, _arg2:Class, _arg3:_22M):Array{
            var _local7:String;
            var _local8:_1yq;
            var _local4:int = this._1Cg.length;
            var _local5:Array = _17J;
            _local5.length = _local4;
            var _local6:int;
            while (_local6 < _local4)
            {
                _local7 = this._1Cg[_local6];
                _local8 = _arg3.SsInternal::Mu(_local7);
                if (!_local8)
                {
                    if ((((_local6 >= this._0BD)) || (this._p)))
                    {
                        break;
                    }
                    throw (new d5(((((((((('Injector is missing a mapping to handle injection into target "' + _arg1) + '" _of type "') + getQualifiedClassName(_arg2)) + '". \t\t\t\t\t\tTarget dependency: ') + _local7) + ", method: ") + this._0EY) + ", parameter: ") + (_local6 + 1))));
                }
                _local5[_local6] = _local8.apply(_arg2, _arg3, injectParameters);
                _local6++;
            }
            return (_local5);
        }


    }
}//package _sc

