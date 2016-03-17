// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util.1wL

package com.company.util{
    public class 1wL {

        public static const 0hL:RegExp = /^[A-Z0-9._%+-]+@(?:[A-Z0-9-]+\.)+[A-Z]{2,4}$/i;


        public static function 0xF(_arg1:String):Boolean{
            return (Boolean(_arg1.match(0hL)));
        }


    }
}//package com.company.util

