﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//mx.core.FlexBitmap

package mx.core{
    import flash.display.Bitmap;
    import mx.utils.NameUtil;
    import flash.display.BitmapData;

    public class FlexBitmap extends Bitmap {

        mx_internal static const VERSION:String = "4.6.0.23_201";

        public function FlexBitmap(_arg1:BitmapData=null, _arg2:String="auto", _arg3:Boolean=false){
            super(_arg1, _arg2, _arg3);
            try
            {
                name = NameUtil.createUniqueName(this);
            } catch(e:Error)
            {
            };
        }

        override public function toString():String{
            return (NameUtil.displayObjectToString(this));
        }


    }
}//package mx.core

