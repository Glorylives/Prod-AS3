// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.148

package BG{
    import 1uF.1Mf;
    import aq.Account;
    import 1qg.0io;
    import 0eZ.5l;
    import 12X.0KD;
    import AO.du;

    public class 148 extends 1Mf {

        [Inject]
        public var account:Account;
        [Inject]
        public var view:MoneyChangerPanel;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 1yT:5l;


        override public function initialize():void{
            this.view.1DL.add(this.20t);
        }

        override public function destroy():void{
            this.view.1DL.remove(this.20t);
        }

        private function 20t():void{
            if (this.account.0D3())
            {
                this.1yT.dispatch();
            } else
            {
                this.0n2.dispatch(new 0KD(du.1GP));
            };
        }


    }
}//package BG

