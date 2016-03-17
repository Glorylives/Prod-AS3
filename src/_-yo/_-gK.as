// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.gK

package yo{
    import flash.utils.IDataOutput;

    public class gK extends 0j1 {

        public var charId_:int;
        public var isFromArena_:Boolean;

        public function gK(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.charId_);
            _arg1.writeBoolean(this.isFromArena_);
        }

        override public function toString():String{
            return (formatToString("LOAD", "charId_", "isFromArena_"));
        }


    }
}//package yo

