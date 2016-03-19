// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Wc.fd

package Wc{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import com.company.ui._eG;
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
    import com.company.util.0Yz;
    import flash.events.Event;
    import AO.du;
    import flash.events.MouseEvent;
    import __AS3__.vec.*;
    import Wc.*;

    class fd extends Sprite {

        public static const r-:int = 400;
        public static const 12i:int = 400;
        private static const 0ak:RegExp = /((https?|ftp):((\/\/)|(\\\\))+[\w\d:#@%\/;$()~_?\+-=\\\.&]*)/g;

        private const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[fd.1F4, fd.0B9, fd.path_, com.company.util._tu.END_FILL, com.company.util._tu.1l4];

        private var text_:String;
        public var w_:int;
        public var h_:int;
        private var 0i7:_eG;
        private var 1Nq:Sprite;
        private var VQ:0DJ;
        private var 21s:1nN;
        private var 1ZA:1nN;
        private var 0B9:GraphicsSolidFill;
        private var outlineFill_:GraphicsSolidFill;
        private var 1F4:GraphicsStroke;
        private var path_:GraphicsPath;

        public function fd(_arg1:String, _arg2:Boolean){
            this.0B9 = new GraphicsSolidFill(0x333333, 1);
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this.1F4 = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            this.text_ = _arg1;
            this.1Nq = new Sprite();
            var _local3:Shape = new Shape();
            var _local4:Graphics = _local3.graphics;
            _local4.beginFill(0);
            _local4.drawRect(0, 0, r-, 12i);
            _local4.endFill();
            this.1Nq.addChild(_local3);
            this.1Nq.mask = _local3;
            addChild(this.1Nq);
            var _local5:String = 0Yz.escape(_arg1);
            _local5 = _local5.replace(0ak, ('<font color="#7777EE"><a href="$1" target="_blank">' + "$1</a></font>"));
            this.0i7 = new _eG(16, 0xB3B3B3, false, r-, 0);
            this.0i7.border = false;
            this.0i7.mouseEnabled = true;
            this.0i7.multiline = true;
            this.0i7.wordWrap = true;
            this.0i7.htmlText = _local5;
            this.0i7.1zx();
            this.1Nq.addChild(this.0i7);
            var _local6 = (this.0i7.height > 400);
            if (_local6)
            {
                this.VQ = new 0DJ(16, (12i - 4));
                this.VQ.x = (r- + 6);
                this.VQ.y = 0;
                this.VQ.1OQ(400, this.0i7.height);
                this.VQ.addEventListener(Event.CHANGE, this.ef);
                addChild(this.VQ);
            };
            this.w_ = (r- + ((_local6) ? 26 : 0));
            this.21s = new 1nN(14, du.24J, 120);
            this.21s.x = 4;
            this.21s.y = (12i + 4);
            this.21s.addEventListener(MouseEvent.CLICK, this.1Y-);
            addChild(this.21s);
            this.21s.visible = _arg2;
            this.1ZA = new 1nN(14, du.1lg, 120);
            this.1ZA.x = (this.w_ - 124);
            this.1ZA.y = (12i + 4);
            this.1ZA.addEventListener(MouseEvent.CLICK, this.D2);
            this.1ZA.textChanged.addOnce(this.ec);
            addChild(this.1ZA);
        }

        private function ec():void{
            this.h_ = ((12i + this.1ZA.height) + 8);
            x = ((800 / 2) - (this.w_ / 2));
            y = ((600 / 2) - (this.h_ / 2));
            graphics.clear();
            _tu.ln(this.path_);
            _tu.0S-(-6, -6, (this.w_ + 12), (this.h_ + 12), 4, [1, 1, 1, 1], this.path_);
            graphics.drawGraphicsData(this.graphicsData_);
        }

        private function ef(_arg1:Event):void{
            this.0i7.y = (-(this.VQ.0md()) * (this.0i7.height - 400));
        }

        private function 1Y-(_arg1:Event):void{
            dispatchEvent(new Event(Event.CHANGE));
        }

        private function D2(_arg1:Event):void{
            dispatchEvent(new Event(Event.COMPLETE));
        }


    }
}//package Wc

