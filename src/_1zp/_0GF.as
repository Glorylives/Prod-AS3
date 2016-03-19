// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp.0GF

package _1zp{
    import flash.display.Sprite;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import _1n4._1Jo;
    import _CU._13j;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import flash.display.GraphicsStroke;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import flash.display.Graphics;

    public class _0GF extends Sprite {

        public static const WIDTH:int = 80;
        public static const HEIGHT:int = 32;

        private const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[internalFill_, _1F4, path_, com.company.util._tu._1l4, com.company.util._tu.END_FILL];

        public var _4B:Vector.<_1Jo>;
        public var _1i5:Array;
        public var _1Uv:int = -1;
        public var labelText_:_13j;
        private var over_:Boolean = false;
        private var color:Number = 0xFFFFFF;
        private var internalFill_:GraphicsSolidFill;
        private var _0wb:GraphicsSolidFill;
        private var T1:GraphicsSolidFill;
        private var path_:GraphicsPath;
        private var _1F4:GraphicsStroke;

        public function _0GF(_arg1:Vector.<_1Jo>, _arg2:Array, _arg3:Object, _arg4:Number=0xFFFFFF){
            this.internalFill_ = new GraphicsSolidFill(0x333333, 1);
            this._0wb = new GraphicsSolidFill(0xB3B3B3, 1);
            this.T1 = new GraphicsSolidFill(0x444444, 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this._1F4 = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.T1);
            super();
            this.color = _arg4;
            this._4B = _arg1;
            this._1i5 = _arg2;
            this.labelText_ = new _13j().setSize(16).setColor(_arg4);
            this.labelText_.x = (WIDTH / 2);
            this.labelText_.y = (HEIGHT / 2);
            this.labelText_.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE);
            this.labelText_.setBold(true);
            this.labelText_.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            addChild(this.labelText_);
            this.setValue(_arg3);
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            addEventListener(MouseEvent.CLICK, this._0eJ);
        }

        public function setValue(_arg1, _arg2:Boolean=true):void{
            var _local3:int;
            while (_local3 < this._1i5.length)
            {
                if (_arg1 == this._1i5[_local3])
                {
                    if (_local3 == this._1Uv)
                    {
                        return;
                    }
                    this._1Uv = _local3;
                    break;
                }
                _local3++;
            }
            this.setSelected(this._1Uv);
            if (_arg2)
            {
                dispatchEvent(new Event(Event.CHANGE));
            }
        }

        public function value(){
            return (this._1i5[this._1Uv]);
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.over_ = true;
            this._0aJ();
        }

        private function onRollOut(_arg1:MouseEvent):void{
            this.over_ = false;
            this._0aJ();
        }

        private function _0eJ(_arg1:MouseEvent):void{
            this.setSelected(((this._1Uv + 1) % this._1i5.length));
            dispatchEvent(new Event(Event.CHANGE));
        }

        private function _0aJ():void{
            tu.ln(this.path_);
            _tu._0S(0, 0, WIDTH, HEIGHT, 4, [1, 1, 1, 1], this.path_);
            this._1F4.fill = ((this.over_) ? this._0wb : this.T1);
            graphics.drawGraphicsData(this.graphicsData_);
            var _local1:Graphics = graphics;
            _local1.clear();
            _local1.drawGraphicsData(this.graphicsData_);
        }

        private function setSelected(_arg1:int):void{
            this._1Uv = _arg1;
            if ((((this._1Uv < 0)) || ((this._1Uv >= this._4B.length))))
            {
                this._1Uv = 0;
            }
            this._1wG(this._4B[this._1Uv]);
        }

        private function _1wG(_arg1:_1Jo):void{
            this.labelText_.setStringBuilder(_arg1);
            this._0aJ();
        }


    }
}//package _1zp

