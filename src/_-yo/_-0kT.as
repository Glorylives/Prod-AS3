// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//yo.0kT

package yo{
    import g0.1tk;
    import flash.utils.IDataOutput;

    public class 0kT extends 0j1 {

        public var time_:int;
        public var position_:1tk;

        public function 0kT(_arg1:uint, _arg2:Function){
            this.position_ = new 1tk();
            super(_arg1, _arg2);
        }

        override public function writeToOutput(_arg1:IDataOutput):void{
            _arg1.writeInt(this.time_);
            this.position_.writeToOutput(_arg1);
        }

        override public function toString():String{
            return (formatToString("AOEACK", "time_", "position_"));
        }


    }
}//package yo

