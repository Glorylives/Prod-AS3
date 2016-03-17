// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1zG.1Tg

package 1zG{
    import _0OG._22M;
    import 1r4.0nf;
    import 5z.0tK;
    import 5z.zL;
    import 0YY.x;

    public class 1Tg {

        [Inject]
        public var kf:_22M;
        private var 0IG:0nf;
        private var message:0-r;
        private var 0M3:0tK;
        private var 1WZ:0tK;


        public function 1Z0(_arg1:0-r):void{
            this.message = _arg1;
            this.0IG = new 0nf();
            this.1Iz();
            this.0R3(_arg1);
            this.0U2();
        }

        private function 1Iz():void{
            var _local1:zL = this.kf.getInstance(zL);
            this.0M3 = _local1.0It(this.message.08Q);
            this.0M3.1es(this.message.1uS);
            this.0IG.0M3 = this.0M3;
        }

        private function 0R3(_arg1:0-r):void{
            this.1WZ = 0tK.clone(this.0M3);
            this.1WZ.1es(_arg1.1Fw);
            this.0IG.1WZ = this.1WZ;
        }

        private function 0U2():void{
            var _local1:x = this.kf.getInstance(x);
            _local1.dispatch(this.0IG);
        }


    }
}//package 1zG

