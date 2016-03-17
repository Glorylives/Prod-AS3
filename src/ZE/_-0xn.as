// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//ZE.0xn

package ZE{
    import 1PB.cO;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1nN;
    import flash.utils.Timer;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import 1n4.1WS;
    import flash.events.MouseEvent;
    import flash.events.TimerEvent;
    import com.company.assembleegameclient.game.nx;
    import flash.events.Event;

    public class 0xn extends Panel {

        private const 1he:cO = new cO();

        public var name_:String;
        private var X:_13j;
        private var guildName_:String;
        private var 1TE:_13j;
        private var XJ:1nN;
        private var 19p:1nN;
        private var 1u4:Timer;

        public function 0xn(_arg1:nx, _arg2:String, _arg3:String){
            super(_arg1);
            this.name_ = _arg2;
            this.guildName_ = _arg3;
            this.X = new _13j().setSize(16).setColor(0xFFFFFF).setTextWidth(WIDTH).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true);
            this.X.setStringBuilder(new 1cA().setParams(du.1Oo, {playerName:_arg2}).setPrefix('<p align="center">').setPostfix("</p>"));
            this.X.filters = [new DropShadowFilter(0, 0, 0)];
            this.X.y = 0;
            addChild(this.X);
            this.1TE = new _13j().setSize(16).setColor(0xFFFFFF).setTextWidth(WIDTH).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
            this.1TE.setStringBuilder(new 1WS((('<p align="center">' + this.guildName_) + "</p>")));
            this.1TE.filters = [new DropShadowFilter(0, 0, 0)];
            this.1TE.y = 20;
            addChild(this.1TE);
            this.XJ = new 1nN(16, du.vY);
            this.XJ.addEventListener(MouseEvent.CLICK, this.dN);
            this.1he.push(this.XJ.textChanged);
            addChild(this.XJ);
            this.19p = new 1nN(16, du.0kL);
            this.19p.addEventListener(MouseEvent.CLICK, this.17j);
            this.1he.push(this.19p.textChanged);
            addChild(this.19p);
            this.1u4 = new Timer((20 * 1000), 1);
            this.1u4.start();
            this.1u4.addEventListener(TimerEvent.TIMER, this.13c);
            this.1he.complete.addOnce(this.alignUI);
        }

        private function alignUI():void{
            this.XJ.x = ((WIDTH / 4) - (this.XJ.width / 2));
            this.XJ.y = ((HEIGHT - this.XJ.height) - 4);
            this.19p.x = (((3 * WIDTH) / 4) - (this.19p.width / 2));
            this.19p.y = ((HEIGHT - this.19p.height) - 4);
        }

        private function 13c(_arg1:TimerEvent):void{
            dispatchEvent(new Event(Event.COMPLETE));
        }

        private function dN(_arg1:MouseEvent):void{
            dispatchEvent(new Event(Event.COMPLETE));
        }

        private function 17j(_arg1:MouseEvent):void{
            gs_.gsc_.joinGuild(this.guildName_);
            dispatchEvent(new Event(Event.COMPLETE));
        }


    }
}//package ZE

