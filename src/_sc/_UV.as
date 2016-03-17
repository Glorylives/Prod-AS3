// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//sc._UV

package _sc{

import flash.utils.Dictionary;
import gx.Wl;
import i0.SsInternal;
import flash.utils.getQualifiedClassName;
import _0OG._22M;

import zr._1yq;

public class _UV extends _0je {

        private var D0:String;
        private var _0Wl:String;
        private var iw:Boolean;

        public function _UV(_arg1:String, _arg2:String, _arg3:Boolean, _arg4:Dictionary){
            this.D0 = _arg2;
            this._0Wl = _arg1;
            this.iw = _arg3;
            this.injectParameters = _arg4;
        }

        override public function applyInjection(_arg1:Object, _arg2:Class, _arg3:_22M):void{
            var _local4:_1yq = _arg3.SsInternal::Mu(this._0Wl);
            if (!_local4)
            {
                if (this.iw)
                {
                    return;
                };
                throw (new d5((((((((('Injector is missing a mapping to handle injection into property "' + this.D0) + '" _of object "') + _arg1) + '" with type "') + getQualifiedClassName(_arg2)) + '". Target dependency: "') + this.0Wl) + '"')));
            };
            _arg1[this.D0] = _local4.apply(_arg2, _arg3, injectParameters);
        }


    }
}//package _sc

