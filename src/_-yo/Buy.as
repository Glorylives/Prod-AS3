// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.Buy

package yo{
    import flash.utils.IDataOutput;

    public class Buy extends 0j1 {

        public var objectId_:int;
        public var quantity_:int;

        public function Buy(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.objectId_);
            _arg1.writeInt(this.quantity_);
        }

        override public function toString():String{
            return (formatToString("BUY", "objectId_", "quantity_"));
        }


    }
}//package yo

