// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//eC.0A3

package _eC{
import _1n4._1Jo;

import _9T._1zh;

import com.company.assembleegameclient.objects.GameObject;

    public class _0A3 extends _1zh {

        public var list:_4P;
        public var next:_0A3;
        public var MT:_1Jo;

        public function _0A3(_arg1:GameObject, _arg2:_1Jo, _arg3:uint, _arg4:int, _arg5:int=0){
            this.MT = _arg2;
            super(_arg1, _arg3, _arg4, _arg5);
            setStringBuilder(_arg2);
        }

        override public function dispose():void{
            this.list.shift();
        }


    }
}//package eC

