// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.F8

package 0QW{
    import flash.display.Sprite;

    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import 0QW.0VH;
    import com.company.assembleegameclient.ui.0DJ;
    import flash.display.Shape;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.events.Event;
    import flash.events.MouseEvent;

    import 0QW.*;

    class F8 extends Sprite {

        public static const WIDTH:int = 136;
        public static const HEIGHT:int = 480;
        private static const 157:int = 20;

        private const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[F8.1F4, F8.0B9, F8.path_, com.company.util._tu.END_FILL, com.company.util._tu.1l4];

        public var 07X:int;
        private var 22j:Sprite;
        public var selected_:0VH;
        private var VQ:0DJ;
        private var mask_:Shape;
        private var 0sz:Vector.<0VH>;
        private var outlineFill_:GraphicsSolidFill;
        private var 1F4:GraphicsStroke;
        private var 0B9:GraphicsSolidFill;
        private var path_:GraphicsPath;

        public function F8(_arg1:int){
            this.0sz = new Vector.<0VH>();
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this.1F4 = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.0B9 = new GraphicsSolidFill(0x363636, 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            this.07X = _arg1;
            this.0aJ();
            this.22j = new Sprite();
            this.22j.x = 4;
            this.22j.y = 6;
            addChild(this.22j);
            this.VQ = new 0DJ(157, (HEIGHT - 8), 0.1, this);
            this.VQ.x = ((WIDTH - 157) - 6);
            this.VQ.y = 4;
            this.VQ.addEventListener(Event.CHANGE, this.ef);
            var _local2:Shape = new Shape();
            _local2.graphics.beginFill(0);
            _local2.graphics.drawRect(0, 2, ((F8.WIDTH - 157) - 4), (F8.HEIGHT - 4));
            addChild(_local2);
            this.22j.mask = _local2;
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        public function 1MQ():int{
            return (this.selected_.type_);
        }

        public function 1lB(_arg1:int):void{
            var _local2:0VH;
            for each (_local2 in this.0sz)
            {
                if (_local2.type_ == _arg1)
                {
                    this.setSelected(_local2);
                    return;
                }
            }
        }

        protected function 1An(_arg1:0VH):void{
            var _local2:int;
            _local2 = this.0sz.length;
            _arg1.x = ((((_local2 % 2))==0) ? 0 : (2 + 0VH.WIDTH));
            _arg1.y = ((int((_local2 / 2)) * 0VH.HEIGHT) + 6);
            this.22j.addChild(_arg1);
            if (_local2 == 0)
            {
                this.setSelected(_arg1);
            }
            _arg1.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            this.0sz.push(_arg1);
        }

        protected function onMouseDown(_arg1:MouseEvent):void{
            var _local2:0VH = (_arg1.currentTarget as 0VH);
            this.setSelected(_local2);
        }

        protected function setSelected(_arg1:0VH):void{
            if (this.selected_ != null)
            {
                this.selected_.setSelected(false);
            }
            this.selected_ = _arg1;
            this.selected_.setSelected(true);
        }

        protected function ef(_arg1:Event):void{
            this.22j.y = (6 - (this.VQ.0md() * ((this.22j.height + 12) - HEIGHT)));
        }

        protected function onAddedToStage(_arg1:Event):void{
            this.VQ.1OQ(HEIGHT, this.22j.height);
            addChild(this.VQ);
        }

        protected function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        }

        private function 0aJ():void{
            tu.ln(this.path_);
            _tu.0S-(0, 0, WIDTH, HEIGHT, 4, [1, 1, 1, 1], this.path_);
            graphics.drawGraphicsData(this.graphicsData_);
        }


    }
}//package 0QW

