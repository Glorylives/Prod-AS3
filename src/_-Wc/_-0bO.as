// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Wc.0bO

package Wc{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import com.company.ui.eG;
    import com.company.assembleegameclient.ui.0DJ;
    import com.company.assembleegameclient.ui.1nN;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.display.Shape;
    import flash.display.Graphics;
    import flash.events.Event;
    import AO.du;
    import flash.events.MouseEvent;
    import __AS3__.vec.*;
    import Wc.*;

    class 0bO extends Sprite {

        public static const r-:int = 400;
        public static const 12i:int = 400;

        private const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[0bO.1F4, 0bO.0B9, 0bO.path_, com.company.util._tu.END_FILL, com.company.util._tu.1l4];

        private var text_:String;
        public var w_:int;
        public var h_:int;
        private var 0i7:eG;
        private var 1Nq:Sprite;
        private var VQ:0DJ;
        private var A6:1nN;
        private var uJ:1nN;
        private var 0B9:GraphicsSolidFill;
        private var outlineFill_:GraphicsSolidFill;
        private var 1F4:GraphicsStroke;
        private var path_:GraphicsPath;

        public function 0bO(_arg1:String){
            this.0B9 = new GraphicsSolidFill(0x333333, 1);
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this.1F4 = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            this.text_ = _arg1;
            this.1Nq = new Sprite();
            var _local2:Shape = new Shape();
            var _local3:Graphics = _local2.graphics;
            _local3.beginFill(0);
            _local3.drawRect(0, 0, r-, 12i);
            _local3.endFill();
            this.1Nq.addChild(_local2);
            this.1Nq.mask = _local2;
            addChild(this.1Nq);
            this.0i7 = new eG(16, 0xB3B3B3, true, r-, 12i);
            this.0i7.border = false;
            this.0i7.mouseEnabled = true;
            this.0i7.multiline = true;
            this.0i7.wordWrap = true;
            this.0i7.text = _arg1;
            this.0i7.1zx();
            this.0i7.addEventListener(Event.CHANGE, this.0T4);
            this.0i7.addEventListener(Event.SCROLL, this.0T4);
            this.1Nq.addChild(this.0i7);
            this.VQ = new 0DJ(16, (12i - 4));
            this.VQ.x = (r- + 6);
            this.VQ.y = 0;
            this.VQ.1OQ(400, this.0i7.height);
            this.VQ.addEventListener(Event.CHANGE, this.ef);
            addChild(this.VQ);
            this.w_ = (r- + 26);
            this.A6 = new 1nN(14, du.04x, 120);
            this.A6.x = 4;
            this.A6.y = (12i + 4);
            this.A6.addEventListener(MouseEvent.CLICK, this.onCancel);
            addChild(this.A6);
            this.uJ = new 1nN(14, du.0qc, 120);
            this.uJ.x = (this.w_ - 124);
            this.uJ.y = (12i + 4);
            this.uJ.addEventListener(MouseEvent.CLICK, this.1q0);
            this.uJ.textChanged.add(this.ec);
            addChild(this.uJ);
        }

        private function ec():void{
            this.h_ = ((12i + this.uJ.height) + 8);
            x = ((800 / 2) - (this.w_ / 2));
            y = ((600 / 2) - (this.h_ / 2));
            graphics.clear();
            _tu.ln(this.path_);
            _tu.0S-(-6, -6, (this.w_ + 12), (this.h_ + 12), 4, [1, 1, 1, 1], this.path_);
            graphics.drawGraphicsData(this.graphicsData_);
            this.VQ.1OQ(12i, this.0i7.textHeight, false);
        }

        public function 1UU():String{
            return (this.0i7.text);
        }

        private function ef(_arg1:Event):void{
            this.0i7.scrollV = (1 + (this.VQ.0md() * this.0i7.maxScrollV));
        }

        private function onCancel(_arg1:Event):void{
            dispatchEvent(new Event(Event.CANCEL));
        }

        private function 1q0(_arg1:Event):void{
            dispatchEvent(new Event(Event.COMPLETE));
        }

        private function 0T4(_arg1:Event):void{
            if (this.VQ == null)
            {
                return;
            };
            this.VQ.1OQ(12i, this.0i7.textHeight, false);
            if (this.0i7.maxScrollV == 1)
            {
                this.VQ.Gx(0);
            } else
            {
                this.VQ.Gx(((this.0i7.scrollV - 1) / (this.0i7.maxScrollV - 1)));
            };
        }


    }
}//package Wc

