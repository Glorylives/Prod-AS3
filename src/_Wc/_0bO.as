// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Wc.0bO

package _Wc{
import _0q4._0DJ;

import _AO._du;

import com.company.assembleegameclient.ui._0DJ_;

import flash.display.Sprite;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import com.company.ui._eG;
    import com.company.assembleegameclient.ui._1nN;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.display.Shape;
    import flash.display.Graphics;
    import flash.events.Event;
    import flash.events.MouseEvent;

    class _0bO extends Sprite {

        public static const _r:int = 400;
        public static const _12i:int = 400;

        private const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[_1F4, _0B9, path_, com.company.util._tu.END_FILL, com.company.util._tu._1l4];

        private var text_:String;
        public var w_:int;
        public var h_:int;
        private var _0i7:_eG;
        private var _1Nq:Sprite;
        private var VQ:_0DJ_;
        private var A6:_1nN;
        private var uJ:_1nN;
        private var _0B9:GraphicsSolidFill;
        private var outlineFill_:GraphicsSolidFill;
        private var _1F4:GraphicsStroke;
        private var path_:GraphicsPath;

        public function _0bO(_arg1:String){
            this._0B9 = new GraphicsSolidFill(0x333333, 1);
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this._1F4 = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            this.text_ = _arg1;
            this._1Nq = new Sprite();
            var _local2:Shape = new Shape();
            var _local3:Graphics = _local2.graphics;
            _local3.beginFill(0);
            _local3.drawRect(0, 0, _r, _12i);
            _local3.endFill();
            this._1Nq.addChild(_local2);
            this._1Nq.mask = _local2;
            addChild(this._1Nq);
            this._0i7 = new _eG(16, 0xB3B3B3, true, _r, _12i);
            this._0i7.border = false;
            this._0i7.mouseEnabled = true;
            this._0i7.multiline = true;
            this._0i7.wordWrap = true;
            this._0i7.text = _arg1;
            this._0i7._1zx();
            this._0i7.addEventListener(Event.CHANGE, this._0T4);
            this._0i7.addEventListener(Event.SCROLL, this._0T4);
            this._1Nq.addChild(this._0i7);
            this.VQ = new _0DJ_(16, (_12i - 4));
            this.VQ.x = (_r + 6);
            this.VQ.y = 0;
            this.VQ._1OQ(400, this._0i7.height);
            this.VQ.addEventListener(Event.CHANGE, this.ef);
            addChild(this.VQ);
            this.w_ = (_r + 26);
            this.A6 = new _1nN(14, _du._04x, 120);
            this.A6.x = 4;
            this.A6.y = (_12i + 4);
            this.A6.addEventListener(MouseEvent.CLICK, this.onCancel);
            addChild(this.A6);
            this.uJ = new _1nN(14, _du._0qc, 120);
            this.uJ.x = (this.w_ - 124);
            this.uJ.y = (_12i + 4);
            this.uJ.addEventListener(MouseEvent.CLICK, this._1q0);
            this.uJ.textChanged.add(this.ec);
            addChild(this.uJ);
        }

        private function ec():void{
            this.h_ = ((_12i + this.uJ.height) + 8);
            x = ((800 / 2) - (this.w_ / 2));
            y = ((600 / 2) - (this.h_ / 2));
            graphics.clear();
            _tu.ln(this.path_);
            _tu._0S(-6, -6, (this.w_ + 12), (this.h_ + 12), 4, [1, 1, 1, 1], this.path_);
            graphics.drawGraphicsData(this.graphicsData_);
            this.VQ._1OQ(_12i, this._0i7.textHeight, false);
        }

        public function _1UU():String{
            return (this._0i7.text);
        }

        private function ef(_arg1:Event):void{
            this._0i7.scrollV = (1 + (this.VQ._0md() * this._0i7.maxScrollV));
        }

        private function onCancel(_arg1:Event):void{
            dispatchEvent(new Event(Event.CANCEL));
        }

        private function _1q0(_arg1:Event):void{
            dispatchEvent(new Event(Event.COMPLETE));
        }

        private function _0T4(_arg1:Event):void{
            if (this.VQ == null)
            {
                return;
            }
            this.VQ._1OQ(_12i, this._0i7.textHeight, false);
            if (this._0i7.maxScrollV == 1)
            {
                this.VQ.Gx(0);
            } else
            {
                this.VQ.Gx(((this._0i7.scrollV - 1) / (this._0i7.maxScrollV - 1)));
            }
        }


    }
}//package Wc

