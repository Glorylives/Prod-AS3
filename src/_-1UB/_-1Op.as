// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.1Op

package 1UB{
    import 1uF.1Mf;
    import 1qg.11S;
    import 1E8.Rc;
    import 0qs.J1;
    import 0xo.lZ;
    import Wn.1ot;
    import gx.1Nb;
    import lq.117;
    import 0eZ.5l;
    import 1nR.nw;
    import 1r4.1T2;

    public class 1Op extends 1Mf {

        [Inject]
        public var view:ContinueOrQuitDialog;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var 1GI:Rc;
        [Inject]
        public var 27M:J1;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var 15a:1ot;
        [Inject]
        public var 0j3:1Nb;
        [Inject]
        public var 0B7:117;
        [Inject]
        public var 1yT:5l;


        override public function initialize():void{
            this.0B7.add(this.tU);
            this.view.quit.add(this.1Kq);
            this.view.1Py.add(this.tz);
            this.view.init(this.15a.1Ui.R, this.0j3.player.credits_);
        }

        private function tU():void{
            this.view.dm(false);
        }

        override public function destroy():void{
            this.0B7.remove(this.tU);
            this.view.quit.remove(this.1Kq);
            this.view.1Py.remove(this.tz);
            this.view.destroy();
        }

        private function tz(_arg1:int, _arg2:int):void{
            var _local3:nw;
            if (this.0j3.player.credits_ >= _arg2)
            {
                this.closeDialogs.dispatch();
                _local3 = (this.27M.lh(1T2.ENTER_ARENA) as nw);
                _local3.currency = _arg1;
                this.1GI.sendMessage(_local3);
            } else
            {
                this.view.dm(true);
                this.1yT.dispatch();
            };
        }

        private function 1Kq():void{
            this.closeDialogs.dispatch();
            this.11u.ja.gsc_.escape();
        }


    }
}//package 1UB

