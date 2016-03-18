// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.Vc

package 0QW{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import com.company.ui._eG;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.filters.DropShadowFilter;
    import flash.events.Event;
    import flash.geom.Rectangle;
    import com.company.assembleegameclient.map.0s6;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.map.T8;
    import __AS3__.vec.*;

    public class Vc extends Sprite {

        public static const WIDTH:int = 134;
        public static const HEIGHT:int = 120;
        private static const 27U:String = ".in { margin-left:10px; text-indent: -10px; }";

        private const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[Vc.1F4, Vc.0B9, Vc.path_, com.company.util._tu.END_FILL, com.company.util._tu.1l4];

        private var 1TR:1c1;
        private var 0hw:_eG;
        private var 02l:_eG;
        private var outlineFill_:GraphicsSolidFill;
        private var 1F4:GraphicsStroke;
        private var 0B9:GraphicsSolidFill;
        private var path_:GraphicsPath;

        public function Vc(_arg1:1c1){
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this.1F4 = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.0B9 = new GraphicsSolidFill(0x363636, 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            this.1TR = _arg1;
            this.0aJ();
            this.0hw = new _eG(12, 0xFFFFFF, false, (WIDTH - 10), 0);
            this.0hw.filters = [new DropShadowFilter(0, 0, 0)];
            this.0hw.y = 4;
            this.0hw.x = 4;
            addChild(this.0hw);
            this.02l = new _eG(12, 0xFFFFFF, false, (WIDTH - 10), 0);
            this.02l.wordWrap = true;
            this.02l.filters = [new DropShadowFilter(0, 0, 0)];
            this.02l.x = 4;
            this.02l.y = 36;
            addChild(this.02l);
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function onAddedToStage(_arg1:Event):void{
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }

        private function onEnterFrame(_arg1:Event):void{
            var _local2:Rectangle = this.1TR.1wH();
            this.0hw.text = ((("Position: " + _local2.x) + ", ") + _local2.y);
            if ((((_local2.width > 1)) || ((_local2.height > 1))))
            {
                this.0hw.text = (this.0hw.text + ((("\nRect: " + _local2.width) + ", ") + _local2.height));
            };
            this.0hw.1zx();
            var _local3:172 = this.1TR.0hm(_local2.x, _local2.y);
            var _local4:Vector.<int> = (((_local3 == null)) ? 1KM.10c : _local3.18A);
            var _local5:String = (((_local4[1KM.1Xh] == -1)) ? "None" : 0s6.Uq(_local4[1KM.1Xh]));
            var _local6:String = (((_local4[1KM.ti] == -1)) ? "None" : ObjectLibrary.Uq(_local4[1KM.ti]));
            var _local7:String = (((_local4[1KM.0eT] == -1)) ? "None" : T8.Uq(_local4[1KM.0eT]));
            this.02l.htmlText = (((((((("<span class='in'>" + "Ground: ") + _local5) + "\nObject: ") + _local6) + (((((_local3 == null)) || ((_local3.0hD == null)))) ? "" : ((" (" + _local3.0hD) + ")"))) + "\nRegion: ") + _local7) + "</span>");
            this.02l.1zx();
        }

        private function 0aJ():void{
            tu.ln(this.path_);
            _tu.0S-(0, 0, WIDTH, HEIGHT, 4, [1, 1, 1, 1], this.path_);
            graphics.drawGraphicsData(this.graphicsData_);
        }


    }
}//package 0QW

