// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.Currency

package com.company.assembleegameclient.util{
    public class Currency {

        public static const INVALID:int = -1;
        public static const 1Jg:int = 0;
        public static const FAME:int = 1;
        public static const py:int = 2;
        public static const Ls:int = 3;


        public static function 19M(_arg1:int):String{
            switch (_arg1)
            {
                case 1Jg:
                    return ("Gold");
                case FAME:
                    return ("Fame");
                case py:
                    return ("Guild Fame");
                case Ls:
                    return ("Fortune Token");
            };
            return ("");
        }


    }
}//package com.company.assembleegameclient.util

