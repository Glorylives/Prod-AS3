// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.24I

package 2--{
    import flash.display.Sprite;
    import 0uE.IJ;
    import 0IN.1qO;
    import _CU._13j;
    import flash.display.DisplayObject;
    import com.company.assembleegameclient.ui.1nN;
    import _Jy._1HZ;
    import flash.display.Bitmap;
    import flash.events.MouseEvent;
    import 1n4.1cA;
    import AO.du;
    import 1PB.cO;

    public class 24I extends Sprite {

        private const background:IJ = 1qO.218(289, 279);
        private const r4:_13j = 1qO.1H-(0xFFFFFF, 18, true);
        private const 0BJ:_13j = 1qO.1H-(16777103, 16, true);
        private const 0w5:DisplayObject = new 24I.1uy();
        private const 1IP:1nN = new 1nN(16, "Pets.sendToYard", 120);
        public const closed:_1HZ = new _1HZ();

        private var 1uy:Class;
        var skinType:int;
        private var 1tY:Bitmap;
        private var petName:String;

        public function 24I(_arg1:String, _arg2:int){
            this.1uy = 1Vm;
            super();
            this.petName = _arg1;
            this.skinType = _arg2;
            this.1IP.addEventListener(MouseEvent.MOUSE_DOWN, this.0es);
        }

        private function 0es(_arg1:MouseEvent):void{
            this.closed.dispatch();
        }

        public function init(_arg1:Bitmap):void{
            this.1tY = _arg1;
            this.Y-();
            this.04K();
            this.Fl();
            this.1bZ();
        }

        private function Y-():void{
            this.r4.setStringBuilder(new 1cA().setParams(du.0qU));
            this.0BJ.setStringBuilder(new 1cA().setParams(this.petName));
        }

        private function 1qf():void{
            this.closed.dispatch();
        }

        private function Fl():void{
            this.0w5.y = 31;
            addChild(this.background);
            addChild(this.r4);
            addChild(this.0BJ);
            addChild(this.0w5);
            addChild(this.1IP);
            addChild(this.1tY);
        }

        private function 1bZ():void{
            this.cp();
            this.1tY.x = ((287 - this.1tY.width) * 0.5);
            this.0w5.x = 1;
            this.0w5.y = 32;
            this.1tY.x = (this.1tY.x - 5);
            this.1tY.y = 41;
        }

        private function cp():void{
            this.x = ((stage.stageWidth - this.width) * 0.5);
            this.y = ((stage.stageHeight - this.height) * 0.5);
        }

        private function 04K():void{
            var _local1:cO = new cO();
            _local1.push(this.r4.textChanged);
            _local1.push(this.0BJ.textChanged);
            _local1.complete.addOnce(this.FO);
            this.1IP.textChanged.add(this.1Xa);
        }

        private function 1Xa():void{
            this.1IP.x = ((287 - this.1IP.width) * 0.5);
            this.1IP.y = 240;
        }

        private function FO():void{
            this.r4.x = ((287 - this.r4.width) * 0.5);
            this.r4.y = 23;
            this.0BJ.x = ((287 - this.0BJ.width) * 0.5);
            this.0BJ.y = 230;
        }


    }
}//package 2--

