﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.RS

package yo{
    import flash.utils.IDataOutput;

    public class RS extends 0j1 {

        public var name_:String;

        public function RS(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeUTF(this.name_);
        }

        override public function toString():String{
            return (formatToString("CREATEGUILD", "name_"));
        }


    }
}//package yo

