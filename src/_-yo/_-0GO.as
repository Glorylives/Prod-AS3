// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.0GO

package yo{
    import flash.utils.IDataOutput;

    public class 0GO extends 0j1 {

        public var guildName_:String;

        public function 0GO(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeUTF(this.guildName_);
        }

        override public function toString():String{
            return (formatToString("JOINGUILD", "guildName_"));
        }


    }
}//package yo

