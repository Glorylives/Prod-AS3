// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.0Ja

package 1UB{
    import flash.display.Sprite;
    import _CU.sb;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import AO.du;

    public class 0Ja extends Sprite {

        private const Tg:sb = 0Ja.0oM();
        private const 0Tf:1cA = new 1cA();


        private function 0oM():sb{
            var _local1:sb = new sb();
            _local1.setSize(24).setBold(true).setColor(0xFFFFFF);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            addChild(_local1);
            return (_local1);
        }

        public function 1dj(_arg1:int):void{
            this.Tg.setStringBuilder(this.0Tf.setParams(du.1mC, {waveNumber:_arg1}));
        }


    }
}//package 1UB

