// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.1XP

package yo{
    import flash.utils.IDataOutput;

    public class 1XP extends 0j1 {

        public var time_:int;

        public function 1XP(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.time_);
        }

        override public function toString():String{
            return (formatToString("GOTOACK", "time_"));
        }


    }
}//package yo

