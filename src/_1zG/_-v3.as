// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.v3

package 1zG{
    import 1E8.1kN;
    import flash.utils.IDataInput;

    public class v3 extends 1kN {

        public var type:int;

        public function v3(_arg1:uint, _arg2:Function=null){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.type = _arg1.readInt();
        }


    }
}//package 1zG

