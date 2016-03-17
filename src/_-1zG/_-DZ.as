// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.DZ

package 1zG{
    import flash.utils.IDataInput;

    public class DZ extends 11g {

        public var type:int;
        public var text:String;

        public function DZ(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.type = _arg1.readInt();
            this.text = _arg1.readUTF();
        }

        override public function toString():String{
            return (formatToString("GLOBAL_NOTIFICATION", "type", "text"));
        }


    }
}//package 1zG

