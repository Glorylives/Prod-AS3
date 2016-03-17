// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1C9.NA

package 1C9{
    import 1Hx.Mw;
    import aq.Account;
    import 0eZ.5l;
    import 1sW.ZK;
    import 1sW.1uj;
    import 1tr.0SX;
    import 2D.0vh;

    public class NA {

        [Inject]
        public var 13d:Mw;
        [Inject]
        public var account:Account;
        [Inject]
        public var data:XML;


        public function execute():void{
            this.13d.map(5l).0Hs(this.nG());
        }

        private function nG():Class{
            return (((this.0gv()) ? ZK : 1uj));
        }

        private function 0gv():Boolean{
            return ((((((((this.account is 0SX)) || ((this.account is 0vh)))) && ((this.data["UseExternalPayments"] == null)))) || (Boolean(int(this.data["UseExternalPayments"])))));
        }


    }
}//package 1C9

