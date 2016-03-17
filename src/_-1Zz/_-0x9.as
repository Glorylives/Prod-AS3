// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Zz.0x9

package 1Zz{
    import aq.Account;
    import WZ.0Te;
    import 1Bg.0oS;
    import 0UV.Xq;
    import 1qg.0io;
    import 0y3.0gx;
    import 0IW.025;
    import _1aA.CharacterSelectionAndNewsScreen;
    import gx.1KE;
    import 1PB.AgeVerificationDialog;

    public class 0x9 {

        private const 0bD:int = 782;

        [Inject]
        public var account:Account;
        [Inject]
        public var model:0Te;
        [Inject]
        public var fP:0oS;
        [Inject]
        public var 7V:Xq;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var servers:0gx;
        [Inject]
        public var xu:025;


        public function execute():void{
            if (!this.servers.1nF())
            {
                this.17I();
            } else
            {
                if (!this.account.0D3())
                {
                    this.0Zm();
                } else
                {
                    if (!this.model.00T())
                    {
                        this.RE();
                    } else
                    {
                        this.26y();
                    };
                };
            };
        }

        private function 26y():void{
            this.fP.dispatch(new CharacterSelectionAndNewsScreen());
        }

        private function 0Zm():void{
            this.7V.dispatch(this.1XW());
        }

        private function 1XW():1KE{
            var _local1:1KE = new 1KE();
            _local1.19j = true;
            _local1.charId = this.model.1Mk();
            _local1.0Pq = -1;
            _local1.0iT = true;
            return (_local1);
        }

        private function RE():void{
            this.0n2.dispatch(new AgeVerificationDialog());
        }

        private function 17I():void{
            this.0n2.dispatch(this.xu.1NB());
        }


    }
}//package 1Zz

