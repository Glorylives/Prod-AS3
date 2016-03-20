// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1lm

package _1zG{
    import flash.utils.IDataInput;

    public class _1lm extends _11g {

        public var tier:int;
        public var goal:String;
        public var description:String;
        public var image:String;

        public function _1lm(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.tier = _arg1.readInt();
            this.goal = _arg1.readUTF();
            this.description = _arg1.readUTF();
            this.image = _arg1.readUTF();
        }

        override public function toString():String{
            return (formatToString("QUESTFETCHRESPONSE", "tier", "goal", "description", "image"));
        }


    }
}//package 1zG

