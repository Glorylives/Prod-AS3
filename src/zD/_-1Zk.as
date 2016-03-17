// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//zD.1Zk

package zD{
    import flash.display.Sprite;
    import XF.1eq;
    import _Jy._1HZ;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import _CU._13j;
    import flash.display.Bitmap;
    import flash.filters.ColorMatrixFilter;
    import flash.utils.Timer;
    import flash.geom.Point;
    import flash.display.BitmapData;
    import com.company.util._tu;
    import com.company.util.MoreColorUtil;
    import com.company.util.AssetLibrary;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.filters.DropShadowFilter;
    import flash.events.TimerEvent;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import flash.display.DisplayObject;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.parameters.Parameters;
    import 1n4.1WS;
    import __AS3__.vec.*;

    public class 1Zk extends Sprite {

        private static const 0CY:uint = 250;
        private static const 1Fa:int = 3;

        public static var 0um:int = 84;
        private static var 0cF:int = 24;
        private static var pi:int = 4;
        private static var 0re:int = 13;
        private static var Dt:int = -6;

        public var position:int;
        public var objectType:int;
        public var HF:1eq;
        public var tx:_1HZ;
        public var 1mM:_1HZ;
        private var 0vL:GraphicsSolidFill;
        private var 0BL:GraphicsSolidFill;
        private var 0Iu:GraphicsSolidFill;
        private var R4:GraphicsPath;
        private var 0ew:GraphicsPath;
        private var u4:Vector.<IGraphicsData>;
        private var 0H1:Vector.<IGraphicsData>;
        private var 1vi:Vector.<IGraphicsData>;
        private var text:_13j;
        private var K-:Bitmap;
        private var 1t0:Sprite;
        private var 06b:Bitmap;
        private var bg:Sprite;
        private var 1q-:ColorMatrixFilter;
        private var 1kH:Timer;
        private var cF:Point;
        private var sm:Boolean;
        private var eZ:Boolean;

        public function 1Zk(_arg1:Array, _arg2:int){
            var _local3:BitmapData;
            this.0vL = new GraphicsSolidFill(0x545454, 1);
            this.0BL = new GraphicsSolidFill(4078909, 1);
            this.0Iu = new GraphicsSolidFill(2368034, 1);
            this.R4 = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this.0ew = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this.u4 = new <IGraphicsData>[this.0vL, this.R4, _tu.END_FILL];
            this.0H1 = new <IGraphicsData>[this.0BL, this.R4, _tu.END_FILL];
            this.1vi = new <IGraphicsData>[this.0Iu, this.0ew, _tu.END_FILL];
            super();
            mouseChildren = false;
            this.position = _arg2;
            this.1q- = new ColorMatrixFilter(MoreColorUtil.1Z6);
            _local3 = AssetLibrary.1JR("lofiObj3", 225);
            _local3 = TextureRedrawer.redraw(_local3, 30, false, 0);
            this.text = new _13j().setSize(13).setColor(0xFFFFFF).setTextWidth(0um).setTextHeight(0cF);
            this.text.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            this.text.y = 4;
            this.K- = new Bitmap(_local3);
            this.K-.x = 52;
            this.K-.y = -6;
            this.K-.visible = false;
            this.bg = new Sprite();
            _tu.ln(this.R4);
            _tu.0S-(0, 0, 0um, 0cF, 4, _arg1, this.R4);
            _tu.0S-(2, 2, (0um - pi), (0cF - pi), 4, _arg1, this.0ew);
            this.bg.graphics.drawGraphicsData(this.0H1);
            this.bg.graphics.drawGraphicsData(this.1vi);
            addChild(this.bg);
            addChild(this.K-);
            addChild(this.text);
            this.1t0 = new Sprite();
            this.1kH = new Timer(0CY, 1);
            this.1kH.addEventListener(TimerEvent.TIMER_COMPLETE, this.OI);
            addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.HF = new 1eq(this, MouseEvent.CLICK, MouseEvent);
            this.tx = new _1HZ();
            this.1mM = new _1HZ(DisplayObject);
        }

        public function Va(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:int=-1):void{
            var _local6:int;
            var _local7:BitmapData;
            var _local8:Bitmap;
            if (_arg4 != -1)
            {
                this.objectType = _arg4;
                if (this.06b != null)
                {
                    removeChild(this.06b);
                };
                _local7 = ObjectLibrary.getRedrawnTextureFromType(_arg4, 55, false);
                this.06b = new Bitmap(_local7);
                this.06b.y = -11;
                addChild(this.06b);
                _local7 = ObjectLibrary.getRedrawnTextureFromType(_arg4, 80, true);
                _local8 = new Bitmap(_local7);
                _local8.x = (_local8.x - 30);
                _local8.y = (_local8.y - 30);
                this.1t0.addChild(_local8);
            };
            var _local5 = (_arg1 > 0);
            if (_local5)
            {
                this.1-d(String(_arg1));
                _local6 = 0re;
                this.bg.graphics.clear();
                this.bg.graphics.drawGraphicsData(this.u4);
                this.text.x = ((0um / 2) + 5);
            } else
            {
                this.1-d(String(_arg2));
                _local6 = Dt;
                this.bg.graphics.clear();
                this.bg.graphics.drawGraphicsData(this.0H1);
                this.bg.graphics.drawGraphicsData(this.1vi);
                this.text.x = ((this.K-.x - this.text.width) + 6);
            };
            if (this.06b)
            {
                this.06b.x = _local6;
            };
            if (!_local5)
            {
                if (Parameters.data_.contextualPotionBuy)
                {
                    this.text.setColor(0xFFFFFF);
                    this.K-.filters = [];
                    this.K-.visible = true;
                } else
                {
                    this.text.setColor(0xAAAAAA);
                    this.K-.filters = [this.1q-];
                    this.K-.visible = true;
                };
            } else
            {
                this.text.setColor(0xFFFFFF);
                this.K-.filters = [];
                this.K-.visible = false;
            };
        }

        public function 1-d(_arg1:String):void{
            this.text.setStringBuilder(new 1WS(_arg1));
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.oz(false);
        }

        private function onMouseUp(_arg1:MouseEvent):void{
            if (this.eZ)
            {
                return;
            };
            if (_arg1.shiftKey)
            {
                this.oz(false);
                this.tx.dispatch();
            } else
            {
                if (!this.sm)
                {
                    this.oz(true);
                } else
                {
                    this.oz(false);
                    this.tx.dispatch();
                };
            };
        }

        private function onMouseDown(_arg1:MouseEvent):void{
            if (!this.K-.visible)
            {
                this.1EC(_arg1);
            };
        }

        private function oz(_arg1:Boolean):void{
            this.sm = _arg1;
            if (this.sm)
            {
                this.1kH.reset();
                this.1kH.start();
            } else
            {
                this.1kH.stop();
            };
        }

        private function 1EC(_arg1:MouseEvent):void{
            this.cF = new Point(_arg1.stageX, _arg1.stageY);
            addEventListener(MouseEvent.MOUSE_MOVE, this.HT);
            addEventListener(MouseEvent.MOUSE_OUT, this.1pe);
            addEventListener(MouseEvent.MOUSE_UP, this.1pe);
        }

        private function 1pe(_arg1:MouseEvent):void{
            removeEventListener(MouseEvent.MOUSE_MOVE, this.HT);
            removeEventListener(MouseEvent.MOUSE_OUT, this.1pe);
            removeEventListener(MouseEvent.MOUSE_UP, this.1pe);
        }

        private function HT(_arg1:MouseEvent):void{
            var _local2:Number = (_arg1.stageX - this.cF.x);
            var _local3:Number = (_arg1.stageY - this.cF.y);
            var _local4:Number = Math.sqrt(((_local2 * _local2) + (_local3 * _local3)));
            if (_local4 > 1Fa)
            {
                this.1pe(null);
                this.oz(false);
                this.gE();
            };
        }

        private function OI(_arg1:TimerEvent):void{
            this.oz(false);
        }

        private function gE():void{
            this.eZ = true;
            this.1t0.startDrag(true);
            stage.addChild(this.1t0);
            this.1t0.addEventListener(MouseEvent.MOUSE_UP, this.KP);
        }

        private function KP(_arg1:MouseEvent):void{
            this.eZ = false;
            this.1t0.stopDrag();
            this.1t0.x = this.cF.x;
            this.1t0.y = this.cF.y;
            stage.removeChild(this.1t0);
            this.1t0.removeEventListener(MouseEvent.MOUSE_UP, this.KP);
            this.1mM.dispatch(this.1t0.dropTarget);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this.oz(false);
            this.1pe(null);
            if (this.eZ)
            {
                this.1t0.stopDrag();
            };
        }


    }
}//package zD

