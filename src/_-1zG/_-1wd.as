// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1wd

package 1zG{
    import flash.display.BitmapData;
    import flash.utils.IDataInput;

    public class 1wd extends 11g {

        public var accountId_:String;
        public var charId_:int;
        public var killedBy_:String;
        public var 0Mg:int;
        public var 24N:int;
        public var 1LW:Boolean;
        public var background:BitmapData;

        public function 1wd(_arg1:uint, _arg2:Function){
            super(_arg1, _arg2);
        }

        public function 0na():void{
            ((this.background) && (this.background.dispose()));
            this.background = null;
        }

        override public function parseFromInput(_arg1:IDataInput):void{
            this.accountId_ = _arg1.readUTF();
            this.charId_ = _arg1.readInt();
            this.killedBy_ = _arg1.readUTF();
            this.24N = _arg1.readInt();
            this.0Mg = _arg1.readInt();
            this.1LW = !((this.0Mg == -1));
        }

        override public function toString():String{
            return (formatToString("DEATH", "accountId_", "charId_", "killedBy_"));
        }


    }
}//package 1zG

