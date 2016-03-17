// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0hd.0pS

package 0hd{
    import _Jy._1HZ;
    import com.company.assembleegameclient.game.nx;
    import AO.du;
    import flash.events.MouseEvent;

    public class 0pS extends Frame {

        public const cancel:_1HZ = new _1HZ();
        public const choose:_1HZ = new _1HZ(String);

        public var ja:nx;
        public var 0wm:Boolean;
        private var 1rL:pv;

        public function 0pS(_arg1:nx, _arg2:Boolean){
            super(du.PI, du.04x, du.0As, "/chooseName");
            this.ja = _arg1;
            this.0wm = _arg2;
            this.1rL = new pv(du.Oo, false);
            this.1rL.inputText_.restrict = "A-Za-z";
            var _local3:int = 10;
            this.1rL.inputText_.maxChars = _local3;
            I2(this.1rL);
            26I(du.0n-, {maxChars:_local3});
            26I(du.TF);
            26I(du.0zG);
            0er.addEventListener(MouseEvent.CLICK, this.onCancel);
            9u.addEventListener(MouseEvent.CLICK, this.21F);
        }

        private function onCancel(_arg1:MouseEvent):void{
            this.cancel.dispatch();
        }

        private function 21F(_arg1:MouseEvent):void{
            this.choose.dispatch(this.1rL.text());
            disable();
        }

        public function 07n(_arg1:String):void{
            this.1rL.07n(_arg1);
        }


    }
}//package 0hd

