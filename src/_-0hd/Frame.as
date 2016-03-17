// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0hd.Frame

package 0hd{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1im;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import flash.events.Event;
    import flash.text.TextFieldAutoSize;
    import 0sC.1xl;
    import flash.display.DisplayObject;
    import com.company.googleanalytics.GA;
    import __AS3__.vec.*;

    public class Frame extends Sprite {

        private static const zA:Number = 17;

        private const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[Frame.0B9, Frame.path2_, com.company.util._tu.END_FILL, Frame.1tg, Frame.path1_, com.company.util._tu.END_FILL, Frame.1F4, Frame.path2_, com.company.util._tu.1l4];

        public var 064:_13j;
        public var 0er:1im;
        public var 9u:1im;
        public var ZM:String;
        public var 0gy:Vector.<pv>;
        public var 0S9:Vector.<1im>;
        public var w_:int = 288;
        public var h_:int = 100;
        private var 1tg:GraphicsSolidFill;
        private var 0B9:GraphicsSolidFill;
        private var outlineFill_:GraphicsSolidFill;
        private var 1F4:GraphicsStroke;
        private var path1_:GraphicsPath;
        private var path2_:GraphicsPath;

        public function Frame(_arg1:String, _arg2:String, _arg3:String, _arg4:String="", _arg5:int=288){
            this.0gy = new Vector.<pv>();
            this.0S9 = new Vector.<1im>();
            this.1tg = new GraphicsSolidFill(0x4D4D4D, 1);
            this.0B9 = new GraphicsSolidFill(0x363636, 1);
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this.1F4 = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.path1_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this.path2_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            this.w_ = _arg5;
            this.064 = new _13j().setSize(13).setColor(0xB3B3B3);
            this.064.setStringBuilder(new 1cA().setParams(_arg1));
            this.064.filters = [new DropShadowFilter(0, 0, 0)];
            this.064.x = 5;
            this.064.y = 3;
            this.064.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            addChild(this.064);
            this.1Mr(_arg2);
            this.PF(_arg3);
            this.ZM = _arg4;
            filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        }

        private function 1Mr(_arg1:String):void{
            this.0er = new 1im(18, true, _arg1);
            if (_arg1 != "")
            {
                this.0er.buttonMode = true;
                this.0er.x = 109;
                addChild(this.0er);
            };
        }

        private function PF(_arg1:String):void{
            this.9u = new 1im(18, true, _arg1);
            if (_arg1 != "")
            {
                this.9u.buttonMode = true;
                this.9u.x = ((this.w_ - this.9u.width) - 26);
                this.9u.setAutoSize(TextFieldAutoSize.RIGHT);
                addChild(this.9u);
            };
        }

        public function 0Bj(_arg1:1xl):void{
            addChild(_arg1);
            _arg1.y = (this.h_ - 60);
            _arg1.x = 17;
            this.h_ = (this.h_ + _arg1.getHeight());
        }

        public function I2(_arg1:pv):void{
            this.0gy.push(_arg1);
            addChild(_arg1);
            _arg1.y = (this.h_ - 60);
            _arg1.x = 17;
            this.h_ = (this.h_ + pv.HEIGHT);
        }

        public function 0-C(_arg1:1im):void{
            this.0S9.push(_arg1);
            _arg1.x = zA;
            addChild(_arg1);
            this.positionText(_arg1);
        }

        public function 0Gq(_arg1:DisplayObject, _arg2:int=8):void{
            addChild(_arg1);
            _arg1.y = (this.h_ - 66);
            _arg1.x = _arg2;
            this.h_ = (this.h_ + _arg1.height);
        }

        public function 26I(_arg1:String, _arg2:Object=null):void{
            var text:_13j;
            var position:Function;
            var plainText:String = _arg1;
            var tokens = _arg2;
            position = function ():void{
                positionText(text);
                draw();
            };
            text = new _13j().setSize(12).setColor(0xFFFFFF);
            text.setStringBuilder(new 1cA().setParams(plainText, tokens));
            text.filters = [new DropShadowFilter(0, 0, 0)];
            text.textChanged.add(position);
            addChild(text);
        }

        protected function positionText(_arg1:DisplayObject):void{
            _arg1.y = (this.h_ - 66);
            _arg1.x = zA;
            this.h_ = (this.h_ + 20);
        }

        public function 0sK(_arg1:String):void{
            var _local2:_13j = new _13j().setSize(20).setColor(0xB2B2B2).setBold(true);
            _local2.setStringBuilder(new 1cA().setParams(_arg1));
            _local2.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            addChild(_local2);
            _local2.y = (this.h_ - 60);
            _local2.x = 15;
            this.h_ = (this.h_ + 40);
        }

        public function Sv(_arg1:0xG):void{
            addChild(_arg1);
            _arg1.y = (this.h_ - 66);
            _arg1.x = zA;
            this.h_ = (this.h_ + 44);
        }

        public function IV(_arg1:0Ia):void{
            addChild(_arg1);
            _arg1.y = (this.h_ - 66);
            _arg1.x = 18;
            this.h_ = (this.h_ + _arg1.height);
        }

        public function 1e-(_arg1:int):void{
            this.h_ = (this.h_ + _arg1);
        }

        public function disable():void{
            var _local1:1im;
            mouseEnabled = false;
            mouseChildren = false;
            for each (_local1 in this.0S9)
            {
                _local1.hs(0xB3B3B3);
            };
            this.0er.hs(0xB3B3B3);
            this.9u.hs(0xB3B3B3);
        }

        public function 0Eb():void{
            var _local1:1im;
            mouseEnabled = true;
            mouseChildren = true;
            for each (_local1 in this.0S9)
            {
                _local1.hs(0xFFFFFF);
            };
            this.0er.hs(0xFFFFFF);
            this.9u.hs(0xFFFFFF);
        }

        protected function onAddedToStage(_arg1:Event):void{
            this.draw();
            x = ((stage.stageWidth / 2) - ((this.w_ - 6) / 2));
            y = ((stage.stageHeight / 2) - (height / 2));
            if (this.0gy.length > 0)
            {
                stage.focus = this.0gy[0].inputText_;
            };
            ((this.ZM) && (GA.global().trackPageview(this.ZM)));
        }

        protected function draw():void{
            graphics.clear();
            _tu.ln(this.path1_);
            _tu.0S-(-6, -6, this.w_, (20 + 12), 4, [1, 1, 0, 0], this.path1_);
            _tu.ln(this.path2_);
            _tu.0S-(-6, -6, this.w_, this.h_, 4, [1, 1, 1, 1], this.path2_);
            this.0er.y = (this.h_ - 52);
            this.9u.y = (this.h_ - 52);
            graphics.drawGraphicsData(this.graphicsData_);
        }


    }
}//package 0hd

