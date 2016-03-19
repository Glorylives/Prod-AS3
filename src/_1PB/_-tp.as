// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.tp

package 1PB{
    import 1uF.1Mf;
    import _1aA.01l;
    import aq.Account;
    import WZ.0Te;
    import 1Bg.1hy;
    import 1Bg.of;
    import 12X.0u5;
    import 0sC.as;
    import 2D.0vh;
    import Av.KabamAccountInfoView;
    import 1tr.0SX;
    import 1ki.KongregateAccountInfoView;
    import 0Dt.5c;
    import 1ih.0AH;
    import 1PV.6M;
    import 0qj.1ae;

    public class tp extends 1Mf {

        [Inject]
        public var view:01l;
        [Inject]
        public var account:Account;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var X4:1hy;
        [Inject]
        public var up:of;


        override public function initialize():void{
            this.view.tooltip.add(this.1CZ);
            this.view.d3(this.SP.z4());
            this.view.xd(this.SP.R0(), this.SP.0uW());
            this.view.OA(this.SV());
        }

        private function SV():0u5{
            var _local1:0u5;
            switch (this.account.Gc())
            {
                case 0vh.1hw:
                    _local1 = new as();
                    break;
                case 0SX.1hw:
                    _local1 = new KabamAccountInfoView();
                    break;
                case 5c.1hw:
                    _local1 = new KongregateAccountInfoView();
                    break;
                case 6M.1hw:
                    _local1 = new 0AH();
                    break;
            }
            return (_local1);
        }

        override public function destroy():void{
            this.view.tooltip.remove(this.1CZ);
            this.up.dispatch();
        }

        private function 1CZ(_arg1:1ae):void{
            this.X4.dispatch(_arg1);
        }


    }
}//package 1PB

