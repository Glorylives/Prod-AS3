// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//OZ.1VE

package OZ{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import flash.display.Shape;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.display.GraphicsPath;
    import com.company.util._tu;
    import flash.display.IGraphicsData;
    import __AS3__.vec.Vector;
    import flash.display.Graphics;
    import __AS3__.vec.*;

    public class 1VE extends Sprite {

        public const n4:_1HZ = new _1HZ(Boolean);
        private const WIDTH:int = 28;
        private const HEIGHT:int = 28;

        private var 0z-:Shape;
        private var selected:Shape;

        public function 1VE(){
            addChild((this.0z- = this.1Lc()));
            addChild((this.selected = this.1ow()));
            this.setSelected(false);
        }

        public function setSelected(_arg1:Boolean):void{
            this.0z-.visible = !(_arg1);
            this.selected.visible = _arg1;
            this.n4.dispatch(_arg1);
        }

        private function 1Lc():Shape{
            var _local1:Shape = new Shape();
            this.ih(_local1.graphics);
            return (_local1);
        }

        private function 1ow():Shape{
            var _local1:Shape = new Shape();
            this.ih(_local1.graphics);
            this.tC(_local1.graphics);
            return (_local1);
        }

        private function ih(_arg1:Graphics):void{
            var _local2:GraphicsSolidFill = new GraphicsSolidFill(0, 0.01);
            var _local3:GraphicsSolidFill = new GraphicsSolidFill(0xFFFFFF, 1);
            var _local4:GraphicsStroke = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, _local3);
            var _local5:GraphicsPath = new GraphicsPath();
            _tu.0S-(0, 0, this.WIDTH, this.HEIGHT, 4, _tu.0TX, _local5);
            var _local6:Vector.<IGraphicsData> = new <IGraphicsData>[_local4, _local2, _local5, _tu.END_FILL, _tu.1l4];
            _arg1.drawGraphicsData(_local6);
        }

        private function tC(_arg1:Graphics):void{
            var _local2:GraphicsSolidFill = new GraphicsSolidFill(0xFFFFFF, 1);
            var _local3:GraphicsPath = new GraphicsPath();
            _tu.0S-(4, 4, (this.WIDTH - 8), (this.HEIGHT - 8), 2, _tu.0TX, _local3);
            var _local4:Vector.<IGraphicsData> = new <IGraphicsData>[_local2, _local3, _tu.END_FILL];
            _arg1.drawGraphicsData(_local4);
        }


    }
}//package OZ

