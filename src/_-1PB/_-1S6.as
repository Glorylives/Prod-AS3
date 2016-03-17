// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.1S6

package 1PB{
    import flash.display.Sprite;
    import zD.1Zk;

    public class 1S6 extends Sprite {

        private static const hg:Array = [1, 0, 0, 1];
        private static const 199:Array = [0, 1, 1, 0];
        private static const 0SK:int = 4;

        private const Qs:Array = [hg, 199];

        public function 1S6(){
            var _local2:1Zk;
            super();
            var _local1:int;
            while (_local1 < 2)
            {
                _local2 = new 1Zk(this.Qs[_local1], _local1);
                _local2.x = (_local1 * (1Zk.0um + 0SK));
                addChild(_local2);
                _local1++;
            };
        }

    }
}//package 1PB

