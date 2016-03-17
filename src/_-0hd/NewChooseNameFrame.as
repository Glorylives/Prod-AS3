// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0hd.NewChooseNameFrame

package 0hd{
    import _Jy._1HZ;
    import AO.du;
    import flash.events.MouseEvent;

    public class NewChooseNameFrame extends Frame {

        public const choose:_1HZ = new _1HZ();
        public const cancel:_1HZ = new _1HZ();

        private var name_:pv;

        public function NewChooseNameFrame(){
            super(du.PI, du.04x, du.0As, "/newChooseName");
            this.name_ = new pv(du.ou, false);
            this.name_.inputText_.restrict = "A-Za-z";
            var _local1:int = 10;
            this.name_.inputText_.maxChars = _local1;
            I2(this.name_);
            26I(du.0n-, {maxChars:_local1});
            26I(du.TF);
            26I(du.0zG);
            0er.addEventListener(MouseEvent.CLICK, this.onCancel);
            9u.addEventListener(MouseEvent.CLICK, this.21F);
        }

        private function 21F(_arg1:MouseEvent):void{
            this.choose.dispatch(this.name_.text());
        }

        private function onCancel(_arg1:MouseEvent):void{
            this.cancel.dispatch();
        }

        public function 07n(_arg1:String):void{
            this.name_.07n(_arg1);
        }


    }
}//package 0hd

