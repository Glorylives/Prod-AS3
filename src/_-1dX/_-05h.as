// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1dX.05h

package 1dX{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 0Ix.1sA;
    import 0Ix.1UX;
    import 0Ix.HN;

    public class 05h extends Sprite {

        public const 1FW:_1HZ = new _1HZ();

        public var 0g7:1Ai;
        public var 25s:1Ai;

        public function 05h(){
            addChild(1sA.lg());
            this.0g7 = new 1UX(this);
            this.25s = new HN(this);
            alpha = 0;
        }

        public function play():void{
            this.0g7.0mq(this.cV);
            this.0g7.start();
        }

        private function cV():void{
            this.1FW.dispatch();
            this.25s.start();
        }


    }
}//package 1dX

