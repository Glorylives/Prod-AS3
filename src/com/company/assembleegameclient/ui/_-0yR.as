// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.0yR

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import flash.display.Shape;
    import _CU.sb;

    import flash.display.IGraphicsData;
    import flash.utils.getTimer;
    import flash.text.TextFieldAutoSize;
    import _CU._13j;
    import 1n4.1cA;
    import AO.du;
    import com.company.util._tu;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;


    public class 0yR extends 1Ri {

        private static const 1II:int = 2999;
        private static const 0yd:int = 0;
        private static const 0i3:int = 1;
        private static const 04J:int = 2;
        private static const 196:int = 3;

        public var 0y-:Sprite;
        public var 0T5:Shape;
        public var pl:sb;
        public var h_:int;
        private var 0z4:int;
        private var 02-:int;
        private var Ll:Vector.<IGraphicsData>;
        private var outlineGraphicsData_:Vector.<IGraphicsData>;

        public function 0yR(_arg1:int, _arg2:int=0){
            super(_arg2);
            this.16b();
            this.02- = getTimer();
            this.pl = new sb();
            this.pl.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE);
            this.pl.setSize(_arg1).setColor(0x363636).setBold(true);
            this.pl.setStringBuilder(new 1cA().setParams(du.1wU));
            w_ = (((_arg2)!=0) ? _arg2 : (this.pl.width + 12));
            this.h_ = (this.pl.height + 8);
            this.pl.x = (w_ / 2);
            this.pl.y = (this.h_ / 2);
            _tu.ln(path_);
            _tu.0S-(0, 0, w_, (this.pl.height + 8), 4, [1, 1, 1, 1], path_);
            this.0y- = this.0eu();
            addChild(this.0y-);
            addChild(this.pl);
            this.draw();
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            addEventListener(MouseEvent.CLICK, this.0eJ);
        }

        private function 16b():void{
            var _local1:GraphicsSolidFill = new GraphicsSolidFill(0xBFBFBF, 1);
            this.Ll = new <IGraphicsData>[_local1, path_, _tu.END_FILL];
            var _local2:GraphicsSolidFill = new GraphicsSolidFill(0xFFFFFF, 1);
            var _local3:GraphicsStroke = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, _local2);
            this.outlineGraphicsData_ = new <IGraphicsData>[_local3, path_, _tu.1l4];
        }

        public function reset():void{
            this.02- = getTimer();
            this.0z4 = 0yd;
            this.setEnabled(false);
            this.1wG(du.1wU);
        }

        public function disable():void{
            this.0z4 = 196;
            this.setEnabled(false);
            this.1wG(du.1wU);
        }

        private function 1wG(_arg1:String):void{
            this.pl.setStringBuilder(new 1cA().setParams(_arg1));
        }

        private function setEnabled(_arg1:Boolean):void{
            if (_arg1 == mouseEnabled)
            {
                return;
            }
            mouseEnabled = _arg1;
            mouseChildren = _arg1;
            graphicsData_[0] = ((_arg1) ? 0dT : 1pM);
            this.draw();
        }

        private function onAddedToStage(_arg1:Event):void{
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            this.reset();
            this.draw();
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onEnterFrame(_arg1:Event):void{
            this.draw();
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            0dT.color = 16768133;
            this.draw();
        }

        private function onRollOut(_arg1:MouseEvent):void{
            0dT.color = 0xFFFFFF;
            this.draw();
        }

        private function 0eJ(_arg1:MouseEvent):void{
            this.0z4 = 04J;
            this.setEnabled(false);
            this.1wG(du.C1);
        }

        private function 0eu():Sprite{
            var _local1:Sprite = new Sprite();
            var _local2:Sprite = new Sprite();
            var _local3:Shape = new Shape();
            _local3.graphics.clear();
            _local3.graphics.drawGraphicsData(this.Ll);
            _local2.addChild(_local3);
            this.0T5 = new Shape();
            _local2.addChild(this.0T5);
            _local2.mask = this.0T5;
            _local1.addChild(_local2);
            var _local4:Shape = new Shape();
            _local4.graphics.clear();
            _local4.graphics.drawGraphicsData(this.outlineGraphicsData_);
            _local1.addChild(_local4);
            return (_local1);
        }

        private function 0DQ(_arg1:Number):void{
            this.0T5.graphics.clear();
            this.0T5.graphics.beginFill(0xBFBFBF);
            this.0T5.graphics.drawRect(0, 0, (w_ * _arg1), this.h_);
            this.0T5.graphics.endFill();
        }

        private function draw():void{
            var _local1:int;
            var _local2:Number;
            _local1 = getTimer();
            if (this.0z4 == 0yd)
            {
                if ((_local1 - this.02-) >= 1II)
                {
                    this.0z4 = 0i3;
                    this.setEnabled(true);
                }
            }
            switch (this.0z4)
            {
                case 0yd:
                    this.0y-.visible = true;
                    _local2 = ((_local1 - this.02-) / 1II);
                    this.0DQ(_local2);
                    break;
                case 196:
                case 0i3:
                case 04J:
                    this.0y-.visible = false;
                    break;
            }
            graphics.clear();
            graphics.drawGraphicsData(graphicsData_);
        }


    }
}//package com.company.assembleegameclient.ui

