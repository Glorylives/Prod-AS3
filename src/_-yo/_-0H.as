// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.0H

package yo{
    import flash.utils.IDataOutput;

    public class 0H extends 0j1 {

        public var serial_:int;
        public var time_:int;

        public function 0H(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.serial_);
            _arg1.writeInt(this.time_);
        }

        override public function toString():String{
            return (formatToString("PONG", "serial_", "time_"));
        }


    }
}//package yo

