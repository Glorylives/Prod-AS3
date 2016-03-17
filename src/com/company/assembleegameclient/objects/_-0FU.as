// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.0FU

package com.company.assembleegameclient.objects{
    import 1n4.1bS;
    import 1n4.1Jo;

    public class 0FU {

        public static const fO:RegExp = /(.+)\s\((.+)\)/;


        public function parse(_arg1:String):String{
            var _local2:Array = _arg1.match(fO);
            if (_local2 == null)
            {
                return (this.095(_arg1));
            };
            return (this.10G(_local2));
        }

        private function 095(_arg1:String):String{
            if ((((_arg1.charAt(0) == "{")) && ((_arg1.charAt((_arg1.length - 1)) == "}"))))
            {
                return (_arg1);
            };
            return ((("{" + _arg1) + "}"));
        }

        private function 10G(_arg1:Array):String{
            var _local2 = (("{" + _arg1[1]) + "}");
            if (_arg1.length > 1)
            {
                _local2 = (_local2 + ((" (" + _arg1[2]) + ")"));
            };
            return (_local2);
        }

        public function makeBuilder(_arg1:String):1Jo{
            return (new 1bS().setPattern(this.parse(_arg1)));
        }


    }
}//package com.company.assembleegameclient.objects

