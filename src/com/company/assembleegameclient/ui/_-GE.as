// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.GE

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import 1yL.OK;
    import _CU._13j;
    import flash.filters.DropShadowFilter;

    public class GE extends Sprite {

        private var 1q9:OK;
        private var textField:_13j;

        public function GE(){
            this.textField = this.1Pj();
            this.textField.x = 5;
            this.1q9 = new OK(this.textField);
            addChild(this.1q9);
            this.1q9.update(100000);
            graphics.lineStyle(2, 0xFFFFFF);
            graphics.beginFill(0x363636);
            graphics.drawRoundRect(0, 0, 150, 25, 10);
            filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16, 1)];
        }

        public function update(_arg1:Number):void{
            this.1q9.update(_arg1);
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


    }
}//package com.company.assembleegameclient.ui

