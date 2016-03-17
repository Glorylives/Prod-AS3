// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//02e.FD

package 02e{
    import aq.Account;
    import 1qg.0io;
    import 12X.0KD;
    import 0Fr.*;

    public class FD implements 23H {

        [Inject]
        public var account:Account;
        [Inject]
        public var 0n2:0io;


        public function approve():Boolean{
            var _local1:Boolean = this.account.0D3();
            ((_local1) || (this.26m()));
            return (_local1);
        }

        protected function getString():String{
            return ("");
        }

        private function 26m():void{
            this.0n2.dispatch(new 0KD(this.getString()));
        }


    }
}//package 02e

