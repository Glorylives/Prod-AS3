// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.0-A

package 1zG{
    import flash.utils.IDataInput;

    public class 0-A extends 11g {

        public var name_:String;

        public function 0-A(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.name_ = _arg1.readUTF();
        }

        override public function toString():String{
            return (formatToString("TRADEREQUESTED", "name_"));
        }


    }
}//package 1zG

