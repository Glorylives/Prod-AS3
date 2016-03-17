// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB. get

package 1UB{
    import 1uF.1Mf;
    import _0OG._22M;
    import 1qg.11S;
    import zf.1M6;
    import Wn.0In;
    import 0Uq.1E7;
    import Wn.1Ev;

    public class  get extends 1Mf {

        [Inject]
        public var kf:_22M;
        [Inject]
        public var view:ArenaLeaderboard;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var RM:1M6;
        [Inject]
        public var 1RS:0In;


        override public function initialize():void{
            this.RM.add(this.N7);
            this.view.0vk.add(this.eM);
            this.view.close.add(this.D2);
            this.view.init();
        }

        override public function destroy():void{
            this.1RS.w2();
            this.RM.remove(this.N7);
            this.view.destroy();
        }

        private function D2():void{
            this.closeDialogs.dispatch();
        }

        private function eM(_arg1:1Ev):void{
            var _local2:1E7;
            if (_arg1.Hd())
            {
                this.view.1_ZS(_arg1.0iF());
            } else
            {
                _local2 = this.kf.getInstance(1E7);
                _local2.filter = _arg1;
                _local2.start();
            };
        }

        private function N7():void{
            this.view.7g();
        }


    }
}//package 1UB

