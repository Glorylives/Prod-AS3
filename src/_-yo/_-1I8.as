// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.1I8

package yo{
    import com.company.assembleegameclient.objects.Player;
    import flash.utils.IDataOutput;

    public class 1I8 extends 0j1 {

        public var skinID:int;
        public var player:Player;

        public function 1I8(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.skinID);
        }

        override public function consume():void{
            super.consume();
            this.player = null;
        }

        override public function toString():String{
            return (formatToString("RESKIN", "skinID"));
        }


    }
}//package yo

