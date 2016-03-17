// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1Qf

package 1zG{
    import flash.utils.IDataInput;

    public class 1Qf extends 11g {

        public var name_:String;
        public var value_:int;

        public function 1Qf(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.name_ = _arg1.readUTF();
            this.value_ = _arg1.readInt();
        }

        override public function toString():String{
            return (formatToString("CLIENTSTAT", "name_", "value_"));
        }


    }
}//package 1zG

