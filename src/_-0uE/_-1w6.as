// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.1w6

package 0uE{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import flash.display.GraphicsPathWinding;
    import flash.geom.ColorTransform;
    import __AS3__.vec.*;

    public class 1w6 extends Sprite {

        private const 2c:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[1w6.1G, 1w6.mp, com.company.util._tu.END_FILL];

        private var 1G:GraphicsSolidFill;
        private var mp:GraphicsPath;

        public function 1w6(){
            this.1G = new GraphicsSolidFill(0xFFFFFF, 1);
            this.mp = new GraphicsPath(new Vector.<int>(), new Vector.<Number>(), GraphicsPathWinding.NON_ZERO);
            super();
            this.setColor(0x666666);
        }

        public function setColor(_arg1:uint):void{
            graphics.clear();
            _tu.ln(this.mp);
            this.1G.color = _arg1;
            this.24v();
            _tu.drawRect(26, 11.5, 24, 19, this.mp);
            graphics.drawGraphicsData(this.2c);
        }

        public function 1ZU(_arg1:Boolean):void{
            var _local2:ColorTransform = transform.colorTransform;
            _local2.color = ((_arg1) ? 16777103 : 0x545454);
            transform.colorTransform = _local2;
        }

        private function 24v():void{
            this.mp.moveTo(0, 20);
            this.mp.lineTo(26, 0);
            this.mp.lineTo(26, 40);
            this.mp.lineTo(0, 20);
            graphics.drawGraphicsData(this.2c);
        }


    }
}//package 0uE

