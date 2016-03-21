// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.0Ja

package _1UB{
import _AO._du;

import flash.display.Sprite;
    import _CU.sb;
    import _1n4._1cA;
    import flash.filters.DropShadowFilter;

    public class _0Ja extends Sprite {

        private const Tg:sb = _0oM();
        private const _0Tf:_1cA = new _1cA();


        private function _0oM():sb{
            var _local1:sb = new sb();
            _local1.setSize(24).setBold(true).setColor(0xFFFFFF);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            addChild(_local1);
            return (_local1);
        }

        public function _1dj(_arg1:int):void{
            this.Tg.setStringBuilder(this._0Tf.setParams(_du._1mC, {waveNumber:_arg1}));
        }


    }
}//package 1UB

