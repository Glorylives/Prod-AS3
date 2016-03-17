// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.iK

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import _CU._13j;
    import 1yL.OK;
    import _Jy._1HZ;
    import flash.filters.DropShadowFilter;
    import 1n4.1Jo;

    public class iK extends Sprite {

        private var 65:_13j;
        private var 1q9:OK;
        public var textChanged:_1HZ;

        public function iK(){
            this.0KF();
            this.textChanged = this.65.textChanged;
            this.65.x = 0;
            this.65.y = 0;
            var _local1:_13j = this.1Pj();
            this.1q9 = new OK(_local1);
            this.1q9.x = 0;
            this.1q9.y = 20;
            addChild(this.1q9);
            addChild(this.65);
        }

        private function 1Pj():_13j{
            var _local1:_13j;
            _local1 = new _13j().setSize(16).setColor(16777103);
            _local1.setBold(true);
            _local1.setMultiLine(true);
            _local1.mouseEnabled = true;
            _local1.filters = [new DropShadowFilter(0, 0, 0)];
            return (_local1);
        }

        private function 0KF():void{
            this.65 = new _13j().setSize(16).setColor(0xFFFFFF);
            this.65.setMultiLine(true);
            this.65.mouseEnabled = true;
            this.65.filters = [new DropShadowFilter(0, 0, 0)];
        }

        public function 0Ro(_arg1:1Jo):void{
            this.65.setStringBuilder(_arg1);
        }

        public function setTime(_arg1:Number):void{
            this.1q9.update(_arg1);
        }


    }
}//package com.company.assembleegameclient.ui

