// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0hd.CreateGuildFrame

package 0hd{
    import _Jy._1HZ;
    import com.company.assembleegameclient.game.GameSprite;
    import AO.du;
    import flash.events.MouseEvent;
    import F7.04M;
    import com.company.assembleegameclient.objects.Player;
    import _04_._1JZ;
    import gx.1Nb;
    import com.company.assembleegameclient.parameters.Parameters;

    public class CreateGuildFrame extends Frame {

        public const close:_1HZ = new _1HZ();

        private var name_:pv;
        private var gs_:GameSprite;

        public function CreateGuildFrame(_arg1:GameSprite){
            super(du.aC, du.04x, du.0YF, "/createGuild");
            this.gs_ = _arg1;
            this.name_ = new pv(du.2i, false);
            this.name_.inputText_.restrict = "A-Za-z ";
            var _local2:int = 20;
            this.name_.inputText_.maxChars = _local2;
            I2(this.name_);
            26I(du.0n-, {maxChars:_local2});
            26I(du.TF);
            26I(du.1bP);
            0er.addEventListener(MouseEvent.CLICK, this.onCancel);
            9u.addEventListener(MouseEvent.CLICK, this.1am);
        }

        private function onCancel(_arg1:MouseEvent):void{
            this.close.dispatch();
        }

        private function 1am(_arg1:MouseEvent):void{
            this.gs_.addEventListener(04M.1W2, this.0OR);
            this.gs_.gsc_.createGuild(this.name_.text());
            disable();
        }

        private function 0OR(_arg1:04M):void{
            var _local2:Player;
            this.gs_.removeEventListener(04M.1W2, this.0OR);
            if (_arg1.success_)
            {
                _local2 = _1JZ.0JF().getInstance(1Nb).player;
                if (_local2 != null)
                {
                    _local2.1iQ = (_local2.1iQ - Parameters.0QE);
                }
                this.close.dispatch();
            } else
            {
                this.name_.07n(_arg1.1pm, _arg1.0kR);
                0Eb();
            }
        }


    }
}//package 0hd

