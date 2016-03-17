// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1oP.1ux

package 1oP{
    import flash.display.Sprite;
    import _CU._13j;
    import _Jy._1HZ;
    import flash.filters.DropShadowFilter;
    import 1n4.1cA;
    import AO.du;

    public class 1ux extends Sprite {

        private const ny:_13j = 1ux.makeText();
        private const 1pz = 1ux.aV();
        public const 0xh:_1HZ = new _1HZ();

        private var 16a:Class;

        public function 1ux(){
            this.16a = O3;
            super();
        }

        private function makeText():_13j{
            var _local1:_13j;
            _local1 = new _13j().setSize(16).setColor(0xB3B3B3).setBold(true);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            _local1.setStringBuilder(new 1cA().setParams(du.i));
            _local1.textChanged.addOnce(this.layout);
            addChild(_local1);
            return (_local1);
        }

        private function aV(){
            var _local1:* = new this.16a();
            addChild(_local1);
            return (_local1);
        }

        public function layout():void{
            this.ny.y = (((height / 2) - (this.ny.height / 2)) + 1);
            this.1pz.x = (this.ny.x + this.ny.width);
            this.0xh.dispatch();
        }


    }
}//package 1oP

