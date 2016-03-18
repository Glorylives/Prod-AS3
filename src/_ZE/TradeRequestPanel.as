// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ZE.TradeRequestPanel

package _ZE{
    import _CU._13j;
    import com.company.assembleegameclient.ui.1nN;
    import flash.utils.Timer;
    import 1n4.1cA;
    import AO.du;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import flash.events.TimerEvent;
    import 1PB.cO;
    import com.company.assembleegameclient.game.nx;
    import flash.events.Event;

    public class TradeRequestPanel extends Panel {

        public var name_:String;
        private var X:_13j;
        private var XJ:1nN;
        private var 19p:1nN;
        private var 1u4:Timer;

        public function TradeRequestPanel(_arg1:nx, _arg2:String){
            super(_arg1);
            this.name_ = _arg2;
            this.X = new _13j().setSize(18).setColor(0xFFFFFF).setTextWidth(WIDTH);
            this.X.setStringBuilder(new 1cA().setParams(du.Lw, {name:_arg2}));
            this.X.setBold(true);
            this.X.setWordWrap(true).setMultiLine(true);
            this.X.setAutoSize(TextFieldAutoSize.CENTER);
            this.X.filters = [new DropShadowFilter(0, 0, 0)];
            this.X.y = 0;
            addChild(this.X);
            this.XJ = new 1nN(16, du.4R);
            this.XJ.addEventListener(MouseEvent.CLICK, this.dN);
            addChild(this.XJ);
            this.19p = new 1nN(16, du.I-);
            this.19p.addEventListener(MouseEvent.CLICK, this.17j);
            addChild(this.19p);
            this.1u4 = new Timer((20 * 1000), 1);
            this.1u4.start();
            this.1u4.addEventListener(TimerEvent.TIMER, this.13c);
            var _local3:cO = new cO();
            _local3.pushArgs(this.XJ.textChanged, this.19p.textChanged);
            _local3.complete.addOnce(this.onComplete);
        }

        private function onComplete():void{
            this.XJ.x = ((WIDTH / 4) - (this.XJ.width / 2));
            this.19p.x = (((3 * WIDTH) / 4) - (this.19p.width / 2));
            this.XJ.y = ((HEIGHT - this.XJ.height) - 4);
            this.19p.y = ((HEIGHT - this.19p.height) - 4);
        }

        private function 13c(_arg1:TimerEvent):void{
            dispatchEvent(new Event(Event.COMPLETE));
        }

        private function dN(_arg1:MouseEvent):void{
            dispatchEvent(new Event(Event.COMPLETE));
        }

        private function 17j(_arg1:MouseEvent):void{
            gs_.gsc_.requestTrade(this.name_);
            dispatchEvent(new Event(Event.COMPLETE));
        }


    }
}//package _ZE

