// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.ZU

package yo{
    import flash.utils.IDataOutput;

    public class ZU extends 0j1 {

        public var text_:String;

        public function ZU(_arg1:uint, _arg2:Function){
            this.text_ = new String();
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeUTF(this.text_);
        }

        override public function toString():String{
            return (formatToString("PLAYERTEXT", "text_"));
        }


    }
}//package yo

