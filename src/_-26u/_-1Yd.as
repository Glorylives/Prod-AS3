// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//26u.1Yd

package 26u{
    import 1zG.11g;
    import flash.utils.IDataInput;

    public class 1Yd extends 11g {

        public var petName:String;
        public var 169:int;

        public function 1Yd(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.petName = _arg1.readUTF();
            this.169 = _arg1.readInt();
        }


    }
}//package 26u

