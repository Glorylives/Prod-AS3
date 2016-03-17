// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.1g9

package 0sC{
    import 1uF.1Mf;
    import 10x.QE;
    import 1qg.0io;
    import 1qg.11S;
    import 1Bg.1AE;
    import aq.Account;
    import _0BB.Fu;
    import _04_._1JZ;
    import AO.du;

    public class 1g9 extends 1Mf {

        [Inject]
        public var view:14Y;
        [Inject]
        public var change:QE;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var 1Lj:1AE;
        [Inject]
        public var account:Account;
        private var newPassword:String;


        override public function initialize():void{
            this.view.change.add(this.1c0);
            this.1Lj.add(this.0ys);
        }

        override public function destroy():void{
            this.view.change.remove(this.1c0);
            this.1Lj.remove(this.0ys);
        }

        private function 1c0():void{
            var _local1:Fu;
            var _local2:Object;
            if (((((this.0Ec()) && (this.1pD()))) && (this.YF())))
            {
                this.view.0qp();
                this.view.disable();
                _local1 = _1JZ.0JF().getInstance(Fu);
                _local2 = {};
                _local2.password = this.view.password_.text();
                this.newPassword = this.view.rr.text();
                _local2.newPassword = this.view.rr.text();
                _local2.guid = this.account.getUserId();
                _local1.sendRequest("/account/changePassword", _local2);
                _local1.complete.addOnce(this.onComplete);
            };
        }

        private function 0Ec():Boolean{
            var _local1 = (this.view.password_.text().length >= 5);
            if (!_local1)
            {
                this.view.password_.07n(du.18m);
            };
            return (_local1);
        }

        private function 1pD():Boolean{
            var _local1 = (this.view.rr.text().length >= 10);
            if (!_local1)
            {
                this.view.rr.07n(du.4r);
            };
            return (_local1);
        }

        private function YF():Boolean{
            var _local1 = (this.view.rr.text() == this.view.96.text());
            if (!_local1)
            {
                this.view.96.07n(du.jw);
            };
            return (_local1);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (!_arg1)
            {
                this.0ys(_arg2);
            } else
            {
                this.account.19R(this.account.getUserId(), this.newPassword);
                this.closeDialogs.dispatch();
            };
        }

        private function 0ys(_arg1:String):void{
            this.view.rr.07n(_arg1);
            this.view.0Eb();
        }


    }
}//package 0sC

