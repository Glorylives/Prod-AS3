// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1e9

package 1zG{
    import flash.utils.IDataInput;

    public class 1e9 extends 11g {

        public var serial_:int;

        public function 1e9(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.serial_ = _arg1.readInt();
        }

        override public function toString():String{
            return (formatToString("PING", "serial_"));
        }


    }
}//package 1zG

