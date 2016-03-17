// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1t6.Dd

package 1t6{
    import 1uF.1Mf;
    import 1qg.11S;
    import _Jy._1HZ;

    public class Dd extends 1Mf {

        [Inject]
        public var 1WQ:0DY;
        [Inject]
        public var 25R:11S;
        private var 0LN:_1HZ;


        override public function initialize():void{
            this.0LN = this.1WQ.PC();
            this.0LN.add(this.D2);
        }

        private function D2():void{
            this.25R.dispatch();
        }

        override public function destroy():void{
            this.0LN.remove(this.D2);
        }


    }
}//package 1t6

