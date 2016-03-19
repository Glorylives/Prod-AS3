// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.CaretakerQueryDialog

package 2--{
    import flash.display.Sprite;
    import 1PB.cO;
    import flash.display.DisplayObjectContainer;
    import 0uE.IJ;
    import 0uE.1I7;
    import _CU._13j;
    import 0uE.0t8;
    import com.company.assembleegameclient.ui.1nN;
    import _Jy._1HZ;
    import XF.lY;
    import flash.events.MouseEvent;
    import 1js.1sT;
    import 0IN.1qO;
    import 1n4.1cA;
    import flash.text.TextFieldAutoSize;
    import flash.display.BitmapData;

    public class CaretakerQueryDialog extends Sprite {

        public static const WIDTH:int = 274;
        public static const HEIGHT:int = 428;
        public static const TITLE:String = "CaretakerQueryDialog.title";
        public static const 02U:String = "CaretakerQueryDialog.query";
        public static const CLOSE:String = "Close.text";
        public static const BACK:String = "Screens.back";
        public static const WH:Array = [{
            category:"CaretakerQueryDialog.category_petYard",
            info:"CaretakerQueryDialog.info_petYard"
        }, {
            category:"CaretakerQueryDialog.category_pets",
            info:"CaretakerQueryDialog.info_pets"
        }, {
            category:"CaretakerQueryDialog.category_abilities",
            info:"CaretakerQueryDialog.info_abilities"
        }, {
            category:"CaretakerQueryDialog.category_feedingPets",
            info:"CaretakerQueryDialog.info_feedingPets"
        }, {
            category:"CaretakerQueryDialog.category_fusingPets",
            info:"CaretakerQueryDialog.info_fusingPets"
        }, {
            category:"CaretakerQueryDialog.category_evolution",
            info:"CaretakerQueryDialog.info_evolution"
        }];

        private const 1QE:cO = CaretakerQueryDialog.1kK();
        private const container:DisplayObjectContainer = CaretakerQueryDialog.makeContainer();
        private const background:IJ = CaretakerQueryDialog.lg();
        private const caretaker:1I7 = CaretakerQueryDialog.VV();
        private const title:_13j = CaretakerQueryDialog.Kr();
        private const 1zt:0t8 = CaretakerQueryDialog.vO();
        private const 1MK:1nN = CaretakerQueryDialog.0ue();
        private const 1tf:1nN = CaretakerQueryDialog.1gH();
        public const closed:_1HZ = new XF.lY(CaretakerQueryDialog.1tf, flash.events.MouseEvent.CLICK);


        private function 1kK():cO{
            var _local1:cO = new cO();
            _local1.complete.addOnce(this.PY);
            return (_local1);
        }

        private function PY():void{
            var _local1:1sT = new 1sT();
            _local1.layout(WIDTH, this.1tf);
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

        private function VV():1I7{
            var _local1:1I7;
            _local1 = new 1I7();
            _local1.x = 20;
            _local1.y = 50;
            this.container.addChild(_local1);
            return (_local1);
        }

        private function Kr():_13j{
            var _local1:_13j;
            _local1 = 1qO.1H-(0xFFFFFF, 18, true);
            _local1.setStringBuilder(new 1cA().setParams(TITLE));
            _local1.setAutoSize(TextFieldAutoSize.CENTER);
            _local1.x = (WIDTH / 2);
            _local1.y = 24;
            this.container.addChild(_local1);
            return (_local1);
        }

        private function 0ue():1nN{
            var _local1:1nN = new 1nN(16, BACK, 80);
            _local1.y = 382;
            _local1.visible = false;
            _local1.addEventListener(MouseEvent.CLICK, this.0K2);
            this.container.addChild(_local1);
            this.1QE.push(_local1.textChanged);
            return (_local1);
        }

        private function 0K2(_arg1:MouseEvent):void{
            this.caretaker.s8();
            this.1zt.visible = true;
            this.1tf.visible = true;
            this.1MK.visible = false;
        }

        private function 1gH():1nN{
            var _local1:1nN = new 1nN(16, CLOSE, 110);
            _local1.y = 382;
            this.container.addChild(_local1);
            this.1QE.push(_local1.textChanged);
            return (_local1);
        }

        private function vO():0t8{
            var _local1:0t8 = new 0t8(WH);
            _local1.x = 20;
            _local1.y = 110;
            _local1.selected.add(this.0Gz);
            this.container.addChild(_local1);
            this.1QE.push(_local1.ready);
            return (_local1);
        }

        private function 0Gz(_arg1:String):void{
            this.1zt.visible = false;
            this.1tf.visible = false;
            this.1MK.visible = true;
            this.caretaker.1Bk(_arg1);
        }

        public function 0Pe(_arg1:BitmapData):void{
            this.caretaker.0Pe(_arg1);
        }


    }
}//package 2--

