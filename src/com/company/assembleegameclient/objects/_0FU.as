// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.0FU

package com.company.assembleegameclient.objects{
import _1n4._1Jo;
import _1n4._1bS;

public class _0FU {

        public static const fO:RegExp = /(.+)\s\((.+)\)/;


        public function parse(_arg1:String):String{
            var _local2:Array = _arg1.match(fO);
            if (_local2 == null)
            {
                return (this._095(_arg1));
            };
            return (this._10G(_local2));
        }

        private function _095(_arg1:String):String{
            if ((((_arg1.charAt(0) == "{")) && ((_arg1.charAt((_arg1.length - 1)) == "}"))))
            {
                return (_arg1);
            };
            return ((("{" + _arg1) + "}"));
        }

        private function _10G(_arg1:Array):String{
            var _local2 = (("{" + _arg1[1]) + "}");
            if (_arg1.length > 1)
            {
                _local2 = (_local2 + ((" (" + _arg1[2]) + ")"));
            };
            return (_local2);
        }

        public function makeBuilder(_arg1:String):_1Jo{
            return (new _1bS().setPattern(this.parse(_arg1)));
        }


    }
}//package com.company.assembleegameclient.objects

