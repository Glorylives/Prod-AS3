﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0oP.JSON

package 0oP{
    public class JSON {


        public static function encode(_arg1:Object):String{
            var _local2:0PG = new 0PG(_arg1);
            return (_local2.getString());
        }

        public static function decode(_arg1:String){
            var _local2:Ua = new Ua(_arg1);
            return (_local2.getValue());
        }


    }
}//package 0oP

