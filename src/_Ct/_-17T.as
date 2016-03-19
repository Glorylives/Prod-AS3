// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.17T

package Ct{
    import 1uF.1Mf;
    import 5z.zL;
    import 5z.0TC;
    import 1qg.0io;
    import 0YY.1Mx;
    import 0YY.0FI;
    import _0OG._22M;
    import 5z.0tK;
    import 2--.0xA;
    import g0._Tz;
    import 5z.1TV;
    import 1r4.1kP;

    public class 17T extends 1Mf {

        [Inject]
        public var view:18G;
        [Inject]
        public var 1G5:zL;
        [Inject]
        public var 1UK:0TC;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var 071:1Mx;
        [Inject]
        public var 0tR:0FI;
        [Inject]
        public var kf:_22M;


        override public function initialize():void{
            this.view.init();
            var _local1:0tK = ((this.1UK.06h) ? this.1UK.06h : this.1G5.1tI());
            this.view.IS(((_local1) ? _local1.0S1 : null), ((_local1) ? _local1.087() : 0));
            this.view.1oD.add(this.21K);
            this.view.closed.add(this.1qf);
            this.view.1jE.add(this.1cQ);
            this.view.0Or.add(this.0ED);
            this.071.add(this.0o-);
        }

        private function 0o-():void{
            this.view.4T();
        }

        override public function destroy():void{
            this.view.1oD.remove(this.21K);
            this.view.1jE.remove(this.1cQ);
            this.view.0Or.remove(this.0ED);
        }

        private function 1qf():void{
            this.1UK.clear();
            this.view.closed.remove(this.1qf);
        }

        private function 21K():void{
            this.1UK.caller = 18G;
            this.0n2.dispatch(this.kf.getInstance(0xA));
        }

        private function 1cQ(_arg1:int):void{
            var _local2:Tz;
            _local2 = new Tz();
            _local2.objectId_ = this.1UK.n-;
            _local2.objectType_ = this.1UK.1f0;
            _local2.08N = this.1UK.26l;
            var _local3:1TV = new 1TV(this.1UK.06h.try (), _local2, 1kP.1--);
            this.0tR.dispatch(_local3);
        }

        private function 0ED(_arg1:int):void{
            var _local2:Tz = new Tz();
            _local2.objectId_ = this.1UK.n-;
            _local2.objectType_ = this.1UK.1f0;
            _local2.08N = this.1UK.26l;
            var _local3:1TV = new 1TV(this.1UK.06h.try (), _local2, 1kP.0Z8);
            this.0tR.dispatch(_local3);
        }


    }
}//package Ct

