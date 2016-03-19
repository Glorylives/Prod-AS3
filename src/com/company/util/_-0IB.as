// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util.0IB

package com.company.util{
    import flash.display.DisplayObjectContainer;
    import flash.display.DisplayObject;

    public class 0IB {


        public static function 0pa(_arg1:DisplayObjectContainer, _arg2:DisplayObject):void{
            if (((((!((_arg1 == null))) && (!((_arg2 == null))))) && (!(_arg1.contains(_arg2)))))
            {
                _arg1.addChild(_arg2);
            }
        }

        public static function 13h(_arg1:DisplayObjectContainer, _arg2:DisplayObject):void{
            if (((((!((_arg1 == null))) && (!((_arg2 == null))))) && (_arg1.contains(_arg2))))
            {
                _arg1.removeChild(_arg2);
            }
        }


    }
}//package com.company.util

