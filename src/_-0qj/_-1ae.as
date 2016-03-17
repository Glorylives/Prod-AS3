// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.1ae

package 0qj{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import 1PB.cO;
    import flash.display.DisplayObject;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.filters.DropShadowFilter;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import __AS3__.vec.*;

    public class 1ae extends Sprite {

        private const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[1ae.1F4, 1ae.0B9, 1ae.path_, com.company.util._tu.END_FILL, com.company.util._tu.1l4];
        protected const 1he:cO = new cO();

        private var background_:uint;
        private var Kh:Number;
        private var 01i:uint;
        private var OG:Number;
        private var 1on:Boolean;
        private var xT:Boolean = false;
        private var Yb:Boolean = false;
        public var Vz:int;
        public var r0:int;
        private var 0hW:DisplayObject;
        private var 0B9:GraphicsSolidFill;
        private var outlineFill_:GraphicsSolidFill;
        private var 1F4:GraphicsStroke;
        private var path_:GraphicsPath;

        public function 1ae(_arg1:uint, _arg2:Number, _arg3:uint, _arg4:Number, _arg5:Boolean=true){
            this.0B9 = new GraphicsSolidFill(0, 1);
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this.1F4 = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            this.background_ = _arg1;
            this.Kh = _arg2;
            this.01i = _arg3;
            this.OG = _arg4;
            this.1on = _arg5;
            mouseEnabled = false;
            mouseChildren = false;
            filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16)];
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.1he.complete.add(this.5t);
        }

        private function 5t():void{
            this.alignUI();
            this.draw();
            this.position();
        }

        protected function alignUI():void{
        }

        public function 0tW(_arg1:DisplayObject):void{
            if (_arg1)
            {
                this.0hW = _arg1;
                this.0hW.addEventListener(MouseEvent.ROLL_OUT, this.1ie);
            };
        }

        public function 1QR():void{
            if (this.0hW)
            {
                this.0hW.removeEventListener(MouseEvent.ROLL_OUT, this.1ie);
                if (parent)
                {
                    parent.removeChild(this);
                };
                this.0hW = null;
            };
        }

        public function 1xG():void{
            this.xT = true;
            this.Yb = false;
        }

        public function 123():void{
            this.Yb = true;
            this.xT = false;
        }

        private function 1ie(_arg1:MouseEvent):void{
            this.1QR();
        }

        private function onAddedToStage(_arg1:Event):void{
            if (this.1he.isEmpty())
            {
                this.draw();
            };
            if (this.1on)
            {
                this.position();
                addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            };
        }

        private function onRemovedFromStage(_arg1:Event):void{
            if (this.1on)
            {
                removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            };
        }

        private function onEnterFrame(_arg1:Event):void{
            this.position();
        }

        protected function position():void{
            if (stage == null)
            {
                return;
            };
            if (((((!(this.xT)) && ((stage.mouseX < (stage.stageWidth / 2))))) || (this.Yb)))
            {
                x = (stage.mouseX + 12);
            } else
            {
                x = ((stage.mouseX - width) - 1);
            };
            if (x < 12)
            {
                x = 12;
            };
            if (((((!(this.xT)) && ((stage.mouseY < (stage.stageHeight / 3))))) || (this.Yb)))
            {
                y = (stage.mouseY + 12);
            } else
            {
                y = ((stage.mouseY - height) - 1);
            };
            if (y < 12)
            {
                y = 12;
            };
        }

        public function draw():void{
            this.0B9.color = this.background_;
            this.0B9.alpha = this.Kh;
            this.outlineFill_.color = this.01i;
            this.outlineFill_.alpha = this.OG;
            graphics.clear();
            this.Vz = width;
            this.r0 = height;
            _tu.ln(this.path_);
            _tu.0S-(-6, -6, (this.Vz + 12), (this.r0 + 12), 4, [1, 1, 1, 1], this.path_);
            graphics.drawGraphicsData(this.graphicsData_);
        }


    }
}//package 0qj

