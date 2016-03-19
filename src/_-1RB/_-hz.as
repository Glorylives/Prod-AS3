// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1RB.hz

package 1RB{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 8u.1QY;
    import _CU._13j;
    import flash.display.Bitmap;
    import h0.0Jr;
    import 1n4.1WS;
    import flash.filters.DropShadowFilter;
    import 0DE.14l;
    import com.company.util.0Rw;
    import com.company.assembleegameclient.ui.Slot;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.events.MouseEvent;

    public class hz extends Sprite {

        private static const VJ:int = 22;
        public static const WIDTH:int = 756;
        public static const HEIGHT:int = 56;

        public const selected:_1HZ = new _1HZ(1QY);

        private var 0nV:1QY;
        private var FU:_13j;
        private var Uv:Bitmap;
        private var 06B:_13j;
        private var 18q:0Jr;
        private var 1X4:_13j;
        private var Yc:Bitmap;
        private var 0Ga:Boolean;

        public function hz(_arg1:1QY){
            this.0nV = _arg1;
            this.249();
            this.1yp();
            this.l3();
            this.21-();
            this.E6();
            this.oL();
            this.1TG();
            this.draw();
        }

        private function 249():void{
            this.FU = new _13j().setSize(VJ).setColor(this.1kE());
            var _local1:String = (((this.0nV.0am)==-1) ? "---" : (this.0nV.0am.toString() + "."));
            this.FU.setBold(!((this.0nV.0am == -1)));
            this.FU.setStringBuilder(new 1WS(_local1));
            this.FU.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.FU.x = (82 - this.FU.width);
            this.FU.y = ((HEIGHT - VJ) * 0.5);
            addChild(this.FU);
        }

        private function 1yp():void{
            this.Uv = new Bitmap(this.0nV.character);
            this.Uv.x = 104;
            this.Uv.y = (((HEIGHT / 2) - (this.Uv.height / 2)) - 2);
            addChild(this.Uv);
        }

        private function l3():void{
            this.06B = new _13j().setSize(VJ).setColor(this.1kE());
            this.06B.setBold(true);
            this.06B.setStringBuilder(new 1WS(this.0nV.name));
            this.06B.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.06B.x = 170;
            this.06B.y = ((HEIGHT - VJ) * 0.5);
            addChild(this.06B);
        }

        private function 21-():void{
            var _local2:14l;
            this.18q = new 0Jr(null, this.0nV.0Jt, null);
            var _local1:0Rw = this.18q.Pr();
            while (_local1.3v())
            {
                _local2 = 14l(_local1.next());
                _local2.Q5(false);
            }
            this.18q.setItems(this.0nV.1AM);
            this.18q.x = 400;
            this.18q.y = ((HEIGHT / 2) - (Slot.HEIGHT / 2));
            addChild(this.18q);
        }

        private function E6():void{
            this.1X4 = new _13j().setSize(VJ).setColor(this.1kE());
            this.1X4.setBold(true);
            this.1X4.setStringBuilder(new 1WS(this.0nV.FY.toString()));
            this.1X4.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.1X4.x = (660 - this.1X4.width);
            this.1X4.y = ((HEIGHT - VJ) * 0.5);
            addChild(this.1X4);
        }

        private function oL():void{
            var _local1:BitmapData = AssetLibrary.1JR("lofiObj3", 224);
            this.Yc = new Bitmap(TextureRedrawer.redraw(_local1, 40, true, 0));
            this.Yc.x = 630;
            this.Yc.y = ((HEIGHT / 2) - (this.Yc.height / 2));
            addChild(this.Yc);
        }

        private function 1kE():uint{
            var _local1:uint;
            if (this.0nV.0Qz)
            {
                _local1 = 16564761;
            } else
            {
                if (this.0nV.0am == 1)
                {
                    _local1 = 16646031;
                } else
                {
                    _local1 = 0xFFFFFF;
                }
            }
            return (_local1);
        }

        private function 1TG():void{
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            addEventListener(MouseEvent.CLICK, this.0eJ);
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.0Ga = true;
            this.draw();
        }

        private function onRollOut(_arg1:MouseEvent):void{
            this.0Ga = false;
            this.draw();
        }

        private function 0eJ(_arg1:MouseEvent):void{
            this.selected.dispatch(this.0nV);
        }

        private function draw():void{
            graphics.clear();
            graphics.beginFill(0, ((this.0Ga) ? 0.4 : 0.001));
            graphics.drawRect(0, 0, WIDTH, HEIGHT);
            graphics.endFill();
        }


    }
}//package 1RB

