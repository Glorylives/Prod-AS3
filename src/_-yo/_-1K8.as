// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.1K8

package yo{
    import flash.utils.IDataOutput;

    public class 1K8 extends 0j1 {

        public var 1ug:uint;
        public var 1su:uint;

        public function 1K8(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeByte(this.1ug);
            _arg1.writeInt(this.1su);
        }


    }
}//package yo

