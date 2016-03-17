// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0xM.1OA

package 0xM{
    import 1uF.1Mf;
    import 1Bg.1hy;
    import 1Bg.of;
    import 0qj.1ae;

    public class 1OA extends 1Mf {

        [Inject]
        public var view:0YR;
        [Inject]
        public var X4:1hy;
        [Inject]
        public var up:of;


        override public function initialize():void{
            this.X4.add(this.kv);
            this.up.add(this.0CI);
        }

        override public function destroy():void{
            this.X4.remove(this.kv);
            this.up.remove(this.0CI);
        }

        private function kv(_arg1:1ae):void{
            this.view.show(_arg1);
        }

        private function 0CI():void{
            this.view.hide();
        }


    }
}//package 0xM

