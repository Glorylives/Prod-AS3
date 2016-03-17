// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1RM.BattleSummaryText

package 1RM{
    import flash.display.Sprite;
    import _CU.sb;
    import 1n4.1cA;
    import AO.du;
    import 1n4.1WS;
    import flash.filters.DropShadowFilter;

    public class BattleSummaryText extends Sprite {

        private var Yi:sb;
        private var Tg:sb;
        private var 2X:sb;

        public function BattleSummaryText(_arg1:String, _arg2:int, _arg3:int){
            this.Yi = this.qn();
            this.Tg = this.1v6();
            this.2X = this.1v6();
            super();
            this.Yi.setStringBuilder(new 1cA().setParams(_arg1));
            this.Tg.setStringBuilder(new 1cA().setParams(du.0Qj, {waveNumber:(_arg2 - 1)}));
            this.2X.setStringBuilder(new 1WS(this.05W(_arg3)));
            this.align();
        }

        private function align():void{
            this.Yi.x = ((width / 2) - (this.Yi.width / 2));
            this.Tg.y = (this.Yi.height + 10);
            this.Tg.x = ((width / 2) - (this.Tg.width / 2));
            this.2X.y = ((this.Tg.y + this.Tg.height) + 5);
            this.2X.x = ((width / 2) - (this.2X.width / 2));
        }

        private function 05W(_arg1:int):String{
            var _local2:int = (_arg1 / 60);
            var _local3:int = (_arg1 % 60);
            var _local4:String = (((_local2 < 10)) ? "0" : "");
            _local4 = (_local4 + (_local2 + ":"));
            _local4 = (_local4 + (((_local3 < 10)) ? "0" : ""));
            _local4 = (_local4 + _local3);
            return (_local4);
        }

        private function qn():sb{
            var _local1:sb;
            _local1 = new sb();
            _local1.setSize(16).setBold(true).setColor(0xFFFFFF);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            addChild(_local1);
            return (_local1);
        }

        private function 1v6():sb{
            var _local1:sb = new sb();
            _local1.setSize(14).setBold(true).setColor(0xB3B3B3);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            addChild(_local1);
            return (_local1);
        }


    }
}//package 1RM

