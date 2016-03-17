// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.Oi

package 1zG{
    import flash.utils.IDataInput;

    public class Oi extends 11g {

        public var success_:Boolean;
        public var lineBuilderJSON:String;

        public function Oi(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.success_ = _arg1.readBoolean();
            this.lineBuilderJSON = _arg1.readUTF();
        }

        override public function toString():String{
            return (formatToString("CREATEGUILDRESULT", "success_", "lineBuilderJSON"));
        }


    }
}//package 1zG

