// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1r9

package _1zG{
    import flash.utils.IDataInput;

    public class _1r9 extends _11g {

        public var success_:Boolean;
        public var errorText_:String;

        public function _1r9(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.success_ = _arg1.readBoolean();
            this.errorText_ = _arg1.readUTF();
        }

        override public function toString():String{
            return (formatToString("NAMERESULT", "success_", "errorText_"));
        }


    }
}//package 1zG

