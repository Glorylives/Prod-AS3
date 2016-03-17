// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Ct.YardUpgraderView

package Ct{
    import flash.display.Sprite;
    import 0uE.IJ;
    import 0IN.1qO;
    import 0IN.h;
    import _CU._13j;
    import 0uE.qZ;
    import 0uE.KC;
    import flash.display.DisplayObject;
    import _Jy._1HZ;
    import 5z.0FX;
    import 1n4.1cA;
    import flash.text.TextFormatAlign;
    import 1PB.cO;

    public class YardUpgraderView extends Sprite {

        private const background:IJ = 1qO.0cN(h.1h9, 392);
        private const r4:_13j = 1qO.1H-(0xFFFFFF, 18, true);
        private const 08-:_13j = 1qO.1H-(0xB3B3B3, 13, false);
        private const b0:_13j = 1qO.1H-(16777103, 16, true);
        private const Si:qZ = 0IN.1qO.2-j("YardUpgraderView.upgrade", 357);
        private const 1tf:KC = 1qO.19W(h.1h9);
        private const 22E:DisplayObject = new YardUpgraderView.L4();
        private const 1rw:1UM = new 1UM();
        public const closed:_1HZ = new _1HZ();

        private var L4:Class;
        public var 0Or:_1HZ;
        public var 1jE:_1HZ;
        private var vo:0FX;

        public function YardUpgraderView(){
            this.L4 = Tl;
            super();
        }

        public function init(_arg1:0FX):void{
            this.vo = _arg1;
            this.1tf.clicked.add(this.1qf);
            this.15N();
            this.Y-();
            this.04K();
            this.Fl();
            this.1bZ();
        }

        private function 15N():void{
            this.0Or = this.Si.q1;
            this.1jE = this.Si.0su;
            this.Si.1vA(this.vo.0m9);
            this.Si.0RN(this.vo.02o);
        }

        private function Y-():void{
            this.r4.setStringBuilder(new 1cA().setParams("YardUpgraderView.title"));
            this.b0.setStringBuilder(new 1cA().setParams(this.1b(this.vo.wK)));
            this.08-.setStringBuilder(new 1cA().setParams("YardUpgraderView.info"));
            this.08-.setTextWidth((h.1h9 - 40)).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER);
            this.1rw.1tF("YardUpgraderView.currentMax", this.1b(this.vo.22J));
        }

        private function 1b(_arg1:String):String{
            return ((("{" + _arg1) + "}"));
        }

        private function 1qf():void{
            this.closed.dispatch();
        }

        public function destroy():void{
            this.Si.1yi.remove(this.1Xa);
        }

        public function 1PT(_arg1:int):void{
            this.Si.0RN(_arg1);
        }

        public function G2(_arg1:int):void{
            this.Si.1vA(_arg1);
        }

        private function dp(_arg1:Boolean):void{
            this.1tf.disabled = _arg1;
            this.Si.r3(_arg1);
        }

        private function Fl():void{
            this.22E.y = 31;
            addChild(this.background);
            addChild(this.r4);
            addChild(this.b0);
            addChild(this.08-);
            addChild(this.Si);
            addChild(this.1tf);
            addChild(this.22E);
            addChild(this.1rw);
        }

        private function 1bZ():void{
            this.cp();
            this.22E.y = 30;
            this.1rw.x = 11;
            this.1rw.y = 300;
        }

        private function cp():void{
            this.x = ((stage.stageWidth - this.width) * 0.5);
            this.y = ((stage.stageHeight - this.height) * 0.5);
        }

        private function 04K():void{
            var _local1:cO = new cO();
            _local1.push(this.r4.textChanged);
            _local1.push(this.08-.textChanged);
            _local1.push(this.b0.textChanged);
            _local1.complete.addOnce(this.FO);
            this.Si.1yi.add(this.1Xa);
        }

        private function FO():void{
            this.r4.x = ((h.1h9 - this.r4.width) * 0.5);
            this.08-.x = ((h.1h9 - this.08-.width) * 0.5);
            this.b0.x = ((h.1h9 - this.b0.width) * 0.5);
            this.r4.y = 20;
            this.08-.y = 229;
            this.b0.y = 269;
        }

        private function 1Xa():void{
            this.Si.x = ((h.1h9 - this.Si.width) / 2);
        }


    }
}//package Ct

