// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Ux.BeginnersPackageOfferDialog

package 0Ux{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU._13j;
    import 1n4.1cA;
    import XF.lY;
    import flash.events.MouseEvent;
    import N6.0PD;

    public class BeginnersPackageOfferDialog extends Sprite {

        public static const 1we:String = "BeginnersPackageOfferDialog.dayLeft";
        public static const 023:String = "BeginnersPackageOfferDialog.daysLeft";

        public static var yc:Class = 0h4;

        public var close:_1HZ;
        public var buy:_1HZ;
        private var 2X:_13j;

        public function BeginnersPackageOfferDialog(){
            this.lg();
            this.0Db();
            this.1gH();
            this.4j();
        }

        public function 15P(_arg1:int):void{
            var _local2:String = (((_arg1 > 1)) ? 023 : 1we);
            this.2X.setStringBuilder(new 1cA().setParams(_local2, {days:_arg1}));
        }

        public function 9L():void{
            x = ((stage.stageWidth - width) * 0.5);
            y = ((stage.stageHeight - height) * 0.5);
        }

        private function lg():void{
            addChild(new yc());
        }

        private function 0Db():void{
            this.2X = new _13j().setSize(14).setColor(0xE3C900);
            this.2X.setBold(true);
            this.2X.x = 307;
            this.2X.y = 380;
            addChild(this.2X);
        }

        private function 4j():void{
            var _local1:Sprite = this.00-(270, 400, 150, 40);
            this.buy = new lY(_local1, MouseEvent.CLICK);
        }

        private function 1gH():void{
            var _local1:Sprite = this.00-(550, 30, 30, 30);
            this.close = new lY(_local1, MouseEvent.CLICK);
        }

        private function 00-(_arg1:int, _arg2:int, _arg3:int, _arg4:int):Sprite{
            var _local5:0PD = new 0PD(_arg1, _arg2, _arg3, _arg4);
            addChild(_local5);
            return (_local5);
        }


    }
}//package 0Ux

