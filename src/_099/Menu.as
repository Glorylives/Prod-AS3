// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//099.Menu

package 099{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.filters.DropShadowFilter;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import flash.geom.Rectangle;
    import com.company.util.Ck;
    import __AS3__.vec.*;
    import 1PB.*;

    public class Menu extends Sprite implements 0Ge {

        private const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[Menu.1F4, Menu.0B9, Menu.path_, com.company.util._tu.END_FILL, com.company.util._tu.1l4];

        private var 0B9:GraphicsSolidFill;
        private var outlineFill_:GraphicsSolidFill;
        private var 1F4:GraphicsStroke;
        private var path_:GraphicsPath;
        private var background_:uint;
        private var 01i:uint;
        protected var 1lj:int;

        public function Menu(_arg1:uint, _arg2:uint){
            this.0B9 = new GraphicsSolidFill(0, 1);
            this.outlineFill_ = new GraphicsSolidFill(0, 1);
            this.1F4 = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            this.background_ = _arg1;
            this.01i = _arg2;
            this.1lj = 40;
            filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16)];
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        protected function 6h(_arg1:1Nr):void{
            _arg1.x = 8;
            _arg1.y = this.1lj;
            addChild(_arg1);
            this.1lj = (this.1lj + 28);
        }

        protected function onAddedToStage(_arg1:Event):void{
            this.draw();
            this.position();
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        }

        protected function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            removeEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        }

        protected function onEnterFrame(_arg1:Event):void{
            if (stage == null)
            {
                return;
            };
            var _local2:Rectangle = getRect(stage);
            var _local3:Number = Ck.18O(_local2, stage.mouseX, stage.mouseY);
            if (_local3 > 40)
            {
                this.remove();
            };
        }

        private function position():void{
            if (stage == null)
            {
                return;
            };
            if (stage.mouseX < (stage.stageWidth / 2))
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
            if (stage.mouseY < (stage.stageHeight / 3))
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

        protected function onRollOut(_arg1:Event):void{
            this.remove();
        }

        public function remove():void{
            if (parent != null)
            {
                parent.removeChild(this);
            };
        }

        protected function draw():void{
            this.0B9.color = this.background_;
            this.outlineFill_.color = this.01i;
            graphics.clear();
            _tu.ln(this.path_);
            _tu.0S-(-6, -6, Math.max(154, (width + 12)), (height + 12), 4, [1, 1, 1, 1], this.path_);
            graphics.drawGraphicsData(this.graphicsData_);
        }


    }
}//package 099

