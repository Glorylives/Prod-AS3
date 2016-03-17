// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1nR.nw

package 1nR{
    import yo.0j1;
    import flash.utils.IDataOutput;

    public class nw extends 0j1 {

        public var currency:int;

        public function nw(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.currency);
        }

        override public function toString():String{
            return (formatToString("ENTER_ARENA", "currency"));
        }


    }
}//package 1nR

