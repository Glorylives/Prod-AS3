// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.tutorial.1KY

package com.company.assembleegameclient.tutorial{
import _1n4._1cA;

import flash.display.Sprite;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import flash.geom.Rectangle;
    import _CU._13j;
    import com.company.assembleegameclient.ui._1nN;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import flash.utils.getTimer;

    public class _1KY extends Sprite {

        public static const BORDER:int = 8;

        private const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[_1F4, _1Au, path_, com.company.util._tu.END_FILL, com.company.util._tu._1l4];

        private var tutorial_:Tutorial;
        private var rect_:Rectangle;
        private var _1gf:_13j;
        private var Kq:_1nN = null;
        private var startTime_:int;
        private var _1Au:GraphicsSolidFill;
        private var _1F4:GraphicsStroke;
        private var path_:GraphicsPath;

        public function _1KY(_arg1:Tutorial, _arg2:String, _arg3:Boolean, _arg4:Rectangle){
            this._1Au = new GraphicsSolidFill(0x363636, 1);
            this._1F4 = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, new GraphicsSolidFill(0xFFFFFF));
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            this.tutorial_ = _arg1;
            this.rect_ = _arg4.clone();
            x = this.rect_.x;
            y = this.rect_.y;
            this.rect_.x = 0;
            this.rect_.y = 0;
            this._1gf = new _13j().setSize(15).setColor(0xFFFFFF).setTextWidth((this.rect_.width - (4 * BORDER)));
            this._1gf.setStringBuilder(new _1cA().setParams(_arg2));
            this._1gf.x = (2 * BORDER);
            this._1gf.y = (2 * BORDER);
            if (_arg3)
            {
                this.Kq = new _1nN(18, "Next");
                this.Kq.addEventListener(MouseEvent.CLICK, this.yp);
                this.Kq.x = ((this.rect_.width - this.Kq.width) - 20);
                this.Kq.y = ((this.rect_.height - this.Kq.height) - 10);
            }
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function drawRect():void{
            var _local1:Number = Math.min(1, (0.1 + ((0.9 * (getTimer() - this.startTime_)) / 200)));
            if (_local1 == 1)
            {
                addChild(this._1gf);
                if (this.Kq != null)
                {
                    addChild(this.Kq);
                }
                removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            }
            var _local2:Rectangle = this.rect_.clone();
            _local2.inflate(((-((1 - _local1)) * this.rect_.width) / 2), ((-((1 - _local1)) * this.rect_.height) / 2));
            _tu.ln(this.path_);
            _tu._0S(_local2.x, _local2.y, _local2.width, _local2.height, 4, [1, 1, 1, 1], this.path_);
            graphics.clear();
            graphics.drawGraphicsData(this.graphicsData_);
        }

        private function onAddedToStage(_arg1:Event):void{
            this.startTime_ = getTimer();
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onEnterFrame(_arg1:Event):void{
            this.drawRect();
        }

        private function yp(_arg1:MouseEvent):void{
            this.tutorial_.doneAction(Tutorial._1oF);
        }


    }
}//package com.company.assembleegameclient.tutorial

