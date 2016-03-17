// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.1gi

package 0sC{
    import 1uF.1Mf;
    import 10x.QE;
    import 1qg.0io;
    import 1Bg.1AE;
    import qs.0U8;
    import AO.du;
    import 1cI.9f;

    public class 1gi extends 1Mf {

        [Inject]
        public var view:WebChangePasswordDialog;
        [Inject]
        public var change:QE;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 1Lj:1AE;


        override public function initialize():void{
            this.view.change.add(this.1c0);
            this.view.cancel.add(this.onCancel);
            this.1Lj.add(this.0ys);
        }

        override public function destroy():void{
            this.view.change.remove(this.1c0);
            this.view.cancel.remove(this.onCancel);
            this.1Lj.remove(this.0ys);
        }

        private function onCancel():void{
            this.0n2.dispatch(new WebAccountDetailDialog());
        }

        private function 1c0():void{
            var _local1:0U8;
            if (((((this.0Ec()) && (this.1pD()))) && (this.YF())))
            {
                this.view.disable();
                this.view.0qp();
                _local1 = new 0U8();
                _local1.1pf = this.view.password_.text();
                _local1.newPassword = this.view.rr.text();
                this.change.dispatch(_local1);
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

        private function 0ys(_arg1:9f):void{
            this.view.07n(_arg1.error);
            this.view.0Eb();
        }


    }
}//package 0sC

