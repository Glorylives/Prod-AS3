// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.23W

package 1zG{
    import flash.utils.IDataInput;

    public class 23W extends 11g {

        public var cleanPasswordStatus:int;

        public function 23W(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.cleanPasswordStatus = _arg1.readInt();
        }

        override public function toString():String{
            return (formatToString("PASSWORDPROMPT", "cleanPasswordStatus"));
        }


    }
}//package 1zG

