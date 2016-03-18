// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Cr.L9

package 1Cr{
    import flash.display.Sprite;
    import 0uE.KC;
    import 0IN.1qO;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import _Jy._1HZ;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1nN;
    import 0hd.pv;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.events.Event;
    import 0-O.181;
    import flash.events.MouseEvent;
    import flash.events.FocusEvent;
    import 0-O.21H;
    import AO.du;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import com.company.ui._eG;
    import flash.text.TextFormatAlign;
    import __AS3__.vec.*;
    import 1t6.*;

    public class L9 extends Sprite implements 0DY {

        public static const r-:int = 500;
        public static const 12i:int = 500;
        public static const hS:int = 490;
        public static const 176:int = 40;

        private const 1tf:KC = 1qO.19W(r-);
        private const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[L9.1F4, L9.0B9, L9.path_, com.company.util._tu.END_FILL, com.company.util._tu.1l4];

        public var 1tT:_1HZ;
        public var WY;
        public var 15G;
        public var 1D7:1pi;
        public var Mm:int;
        public var Xv:int;
        private var 0iU:_13j;
        private var 0xy:_13j;
        private var r:_13j;
        private var Tb:1nN;
        private var QP:1nN;
        private var 19G:pv;
        private var 14Q:9v;
        private var 0HH:9v;
        private var 0zd:String;
        private var 0B9:GraphicsSolidFill;
        private var outlineFill_:GraphicsSolidFill;
        private var 1F4:GraphicsStroke;
        private var path_:GraphicsPath;

        public function L9(){
            this.1tT = new _1HZ();
            this.WY = new _1HZ(String, String);
            this.15G = new _1HZ(String);
            this.0B9 = new GraphicsSolidFill(0x333333, 1);
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this.1F4 = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
        }

        public function init(_arg1:Vector.<181>, _arg2:Vector.<181>, _arg3:String):void{
            this.Mm = r-;
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.1D7 = new 1pi(r-, 12i);
            this.1D7.0IV.add(this.1Et);
            addChild(this.1D7);
            this.08U();
            this.1Ej();
            addChild(this.1tf);
            this.0aJ();
            this.0zd = _arg3;
            this.51(_arg1, _arg2);
            this.1D7.0ik(0);
        }

        public function destroy():void{
            while (numChildren > 0)
            {
                this.removeChildAt((numChildren - 1));
            };
            this.Tb.removeEventListener(MouseEvent.CLICK, this.1Kj);
            this.Tb = null;
            this.1D7.destroy();
            this.1D7 = null;
            this.19G.removeEventListener(FocusEvent.FO_CUS_IN, this.5j);
            this.19G = null;
            this.14Q = null;
            this.0HH = null;
        }

        public function 00y(_arg1:Vector.<181>, _arg2:String):void{
            var _local3:181;
            var _local4:0QO;
            var _local5:int;
            this.0xy.visible = (_arg1.length <= 0);
            _local5 = (this.14Q.014() - _arg1.length);
            while (_local5 > 0)
            {
                this.14Q.removeChildAt((this.14Q.014() - 1));
                _local5--;
            };
            _local5 = 0;
            while (_local5 < this.14Q.014())
            {
                _local3 = _arg1.pop();
                if (_local3 != null)
                {
                    _local4 = (this.14Q.getChildAt(_local5) as 0QO);
                    _local4.update(_local3, _arg2);
                };
                _local5++;
            };
            for each (_local3 in _arg1)
            {
                _local4 = new 1DQ(_local3, hS, 176, _arg2);
                _local4.WY.add(this.017);
                _local4.x = 2;
                this.14Q.vL(_local4);
            };
            _arg1.length = 0;
            _arg1 = null;
        }

        public function 279(_arg1:Vector.<181>):void{
            var _local2:181;
            var _local3:0QO;
            var _local4:int;
            this.1D7.1jp(1, _arg1.length);
            this.r.visible = (_arg1.length == 0);
            _local4 = (this.0HH.014() - _arg1.length);
            while (_local4 > 0)
            {
                this.0HH.removeChildAt((this.0HH.014() - 1));
                _local4--;
            };
            _local4 = 0;
            while (_local4 < this.0HH.014())
            {
                _local2 = _arg1.pop();
                if (_local2 != null)
                {
                    _local3 = (this.0HH.getChildAt(_local4) as 0QO);
                    _local3.update(_local2, "");
                };
                _local4++;
            };
            for each (_local2 in _arg1)
            {
                _local3 = new tj(_local2, hS, 176);
                _local3.WY.add(this.017);
                this.0HH.vL(_local3);
            };
            _arg1.length = 0;
            _arg1 = null;
        }

        private function 08U():void{
            var _local1:Sprite = new Sprite();
            _local1.name = 21H.5A;
            this.19G = new pv(du.1gm, false);
            this.19G.x = 3;
            this.19G.y = 0;
            this.19G.addEventListener(FocusEvent.FO_CUS_IN, this.5j);
            _local1.addChild(this.19G);
            this.Tb = new 1nN(14, du.cI, 110);
            this.Tb.y = 30;
            this.Tb.x = 253;
            this.Tb.addEventListener(MouseEvent.CLICK, this.1Kj);
            _local1.addChild(this.Tb);
            this.QP = new 1nN(14, du.0fm, 110);
            this.QP.y = 30;
            this.QP.x = 380;
            this.QP.addEventListener(MouseEvent.CLICK, this.M);
            _local1.addChild(this.QP);
            this.0xy = new _13j().setSize(18).setColor(0xFFFFFF).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
            this.0xy.setStringBuilder(new 1cA().setParams(du.1ct));
            this.0xy.x = 250;
            this.0xy.y = 200;
            _local1.addChild(this.0xy);
            this.0iU = new _13j().setSize(16).setColor(0xFFFFFF).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
            this.0iU.x = 400;
            this.0iU.y = 0;
            _local1.addChild(this.0iU);
            this.14Q = new 9v(r-, (12i - 110));
            this.14Q.x = 3;
            this.14Q.y = 80;
            _local1.addChild(this.14Q);
            var _local2:_eG = new _eG(18, 0xFFFFFF, false, 100, 26);
            _local2.const(TextFormatAlign.CENTER);
            _local2.text = 21H.5A;
            this.1D7.Mg(_local2, _local1);
        }

        private function 1Ej():void{
            var _local1:Sprite;
            _local1 = new Sprite();
            _local1.name = 21H.0XG;
            this.0HH = new 9v(r-, (12i - 30));
            this.0HH.x = 3;
            _local1.addChild(this.0HH);
            this.r = new _13j().setSize(18).setColor(0xFFFFFF).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
            this.r.setStringBuilder(new 1cA().setParams(du.1Ce));
            this.r.x = 250;
            this.r.y = 200;
            _local1.addChild(this.r);
            var _local2:_eG = new _eG(18, 0xFFFFFF, false, 100, 26);
            _local2.text = 21H.0XG;
            _local2.const(TextFormatAlign.CENTER);
            this.1D7.Mg(_local2, _local1);
        }

        private function 51(_arg1:Vector.<181>, _arg2:Vector.<181>):void{
            this.0iU.setStringBuilder(new 1cA().setParams(du.0lT, {total:_arg1.length}));
            this.00y(_arg1, this.0zd);
            this.279(_arg2);
        }

        private function 1Et(_arg1:String):void{
            this.15G.dispatch(_arg1);
        }

        public function PC():_1HZ{
            return (this.1tT);
        }

        public function 0p7(_arg1:String, _arg2:Object=null):void{
            this.19G.07n(_arg1, _arg2);
        }

        private function 5j(_arg1:FocusEvent):void{
            this.19G.nC();
            this.19G.0qp();
            this.WY.dispatch(21H.0Tm, this.19G.text());
        }

        private function 1Kj(_arg1:MouseEvent):void{
            this.WY.dispatch(21H.o-, this.19G.text());
        }

        private function M(_arg1:MouseEvent):void{
            this.WY.dispatch(21H.0Tm, this.19G.text());
        }

        private function 017(_arg1:String, _arg2:String):void{
            this.WY.dispatch(_arg1, _arg2);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.destroy();
        }

        private function 0aJ():void{
            this.Xv = (12i + 8);
            x = ((800 / 2) - (this.Mm / 2));
            y = ((600 / 2) - (this.Xv / 2));
            graphics.clear();
            _tu.ln(this.path_);
            _tu.0S-(-6, -6, (this.Mm + 12), (this.Xv + 12), 4, [1, 1, 1, 1], this.path_);
            graphics.drawGraphicsData(this.graphicsData_);
        }


    }
}//package 1Cr

