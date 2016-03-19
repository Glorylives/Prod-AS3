// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.NameChangerPanelMediator

package BG{
    import 1uF.1Mf;
    import aq.Account;
    import 1qg.0io;
    import 1ay.tG;
    import 0hd.0pS;
    import 12X.0KD;
    import AO.du;

    public class NameChangerPanelMediator extends 1Mf {

        [Inject]
        public var account:Account;
        [Inject]
        public var view:NameChangerPanel;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 057:tG;


        override public function initialize():void{
            this.view.chooseName.add(this.pE);
            this.057.add(this.0N);
        }

        override public function destroy():void{
            this.view.chooseName.remove(this.pE);
            this.057.remove(this.0N);
        }

        private function pE():void{
            if (this.account.0D3())
            {
                this.0n2.dispatch(new 0pS(this.view.gs_, this.view.Z0));
            } else
            {
                this.0n2.dispatch(new 0KD(du.1WP));
            }
        }

        private function 0N(_arg1:String):void{
            this.view.088(_arg1);
        }


    }
}//package BG

