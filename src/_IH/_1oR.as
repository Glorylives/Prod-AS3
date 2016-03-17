// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//IH.1oR

package _IH{

import flash.events.Event;

    public class _1oR extends Event {

        public static const xR:String = "preMappingCreate";
        public static const tv:String = "postMappingCreate";
        public static const _1cB:String = "preMappingChange";
        public static const _1F:String = "postMappingChange";
        public static const _0PX:String = "postMappingRemove";
        public static const _0zn:String = "mappingOverride";

        public var _2s:Class;
        public var _1Ar:String;
        public var mapping:_1s4;

        public function _1oR(_arg1:String, _arg2:Class, _arg3:String, _arg4:_1s4){
            super(_arg1);
            this._2s = _arg2;
            this._1Ar = _arg3;
            this.mapping = _arg4;
        }

        override public function clone():Event{
            return (new _1oR(type, this._2s, this._1Ar, this.mapping));
        }


    }
}//package IH

