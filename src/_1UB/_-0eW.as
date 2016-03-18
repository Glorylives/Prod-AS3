// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1UB.0eW

package 1UB{
    import flash.display.Sprite;
    import 1PB.cO;
    import flash.display.DisplayObjectContainer;
    import 0uE.IJ;
    import 1RM.0nj;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1nN;
    import XF.1eq;
    import flash.events.MouseEvent;
    import 1js.1sT;
    import with.26q;
    import 1n4.1cA;
    import flash.text.TextFieldAutoSize;
    import flash.display.BitmapData;

    public class 0eW extends Sprite {

        public static const WIDTH:int = 274;
        public static const HEIGHT:int = 338;
        public static const TITLE:String = "ArenaQueryPanel.title";
        public static const CLOSE:String = "Close.text";
        public static const 02U:String = "ArenaQueryDialog.info";
        public static const BACK:String = "Screens.back";

        private const 1QE:cO = 0eW.1kK();
        private const container:DisplayObjectContainer = 0eW.makeContainer();
        private const background:IJ = 0eW.lg();
        private const host:0nj = 0eW.0T8();
        private const title:_13j = 0eW.Kr();
        private const 1MK:1nN = 0eW.0ue();
        public const 14x:1eq = new XF.1eq(0eW.1MK, flash.events.MouseEvent.CLICK);


        private function 1kK():cO{
            var _local1:cO = new cO();
            _local1.complete.addOnce(this.PY);
            return (_local1);
        }

        private function PY():void{
            var _local1:1sT = new 1sT();
            _local1.layout(WIDTH, this.1MK);
        }

        private function makeContainer():DisplayObjectContainer{
            var _local1:Sprite;
            _local1 = new Sprite();
            _local1.x = ((800 - WIDTH) / 2);
            _local1.y = ((600 - HEIGHT) / 2);
            addChild(_local1);
            return (_local1);
        }

        private function lg():IJ{
            var _local1:IJ = new IJ();
            _local1.draw(WIDTH, HEIGHT);
            _local1.UK(IJ.HORIZONTAL_DIVISION, 34);
            this.container.addChild(_local1);
            return (_local1);
        }

        private function 0T8():0nj{
            var _local1:0nj;
            _local1 = new 0nj();
            _local1.x = 20;
            _local1.y = 50;
            this.container.addChild(_local1);
            return (_local1);
        }

        private function Kr():_13j{
            var _local1:_13j;
            _local1 = 26q.1H-(0xFFFFFF, 18, true);
            _local1.setStringBuilder(new 1cA().setParams(TITLE));
            _local1.setAutoSize(TextFieldAutoSize.CENTER);
            _local1.x = (WIDTH / 2);
            _local1.y = 24;
            this.container.addChild(_local1);
            return (_local1);
        }

        private function 0ue():1nN{
            var _local1:1nN;
            _local1 = new 1nN(16, BACK, 80);
            this.container.addChild(_local1);
            this.1QE.push(_local1.textChanged);
            _local1.y = 292;
            return (_local1);
        }

        private function 1gH():1nN{
            var _local1:1nN;
            _local1 = new 1nN(16, CLOSE, 110);
            _local1.y = 292;
            this.container.addChild(_local1);
            this.1QE.push(_local1.textChanged);
            return (_local1);
        }

        public function mM(_arg1:BitmapData):void{
            this.host.mM(_arg1);
        }


    }
}//package 1UB

