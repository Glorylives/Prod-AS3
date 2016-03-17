// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//3S.GuildPlayerList

package 3S{
    import flash.display.Sprite;
    import _0BB.Fu;
    import _CU._13j;
    import com.company.ui.eG;
    import flash.display.Bitmap;
    import flash.display.Shape;
    import com.company.assembleegameclient.ui.0DJ;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import flash.text.TextFieldAutoSize;
    import _04_._1JZ;
    import aq.Account;
    import com.company.util.1X3;
    import flash.display.Graphics;
    import com.company.assembleegameclient.util.GuildUtil;
    import flash.events.Event;

    public class GuildPlayerList extends Sprite {

        private var zY:int;
        private var 0aO:int;
        private var 0EQ:String;
        private var 0U4:int;
        private var 0LR:Fu;
        private var YT:_13j;
        private var 064:eG;
        private var cg:eG;
        private var 2f:Bitmap;
        private var 0mg:Shape;
        private var 1Nq:Sprite;
        private var 0Hn:Sprite;
        private var 0dk:_13j;
        private var VQ:0DJ;

        public function GuildPlayerList(_arg1:int, _arg2:int, _arg3:String="", _arg4:int=0){
            this.zY = _arg1;
            this.0aO = _arg2;
            this.0EQ = _arg3;
            this.0U4 = _arg4;
            this.YT = new _13j().setSize(22).setColor(0xB3B3B3);
            this.YT.setBold(true);
            this.YT.setStringBuilder(new 1cA().setParams(du.1d3));
            this.YT.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.YT.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE);
            this.YT.x = (800 / 2);
            this.YT.y = 550;
            addChild(this.YT);
            var _local5:Account = _1JZ.0JF().getInstance(Account);
            var _local6:Object = {
                num:_arg1,
                offset:_arg2
            };
            1X3.1J7(_local6, _local5.1Y());
            this.0LR = _1JZ.0JF().getInstance(Fu);
            this.0LR.1Je(2);
            this.0LR.complete.addOnce(this.onComplete);
            this.0LR.sendRequest("/guild/listMembers", _local6);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.RB(_arg2);
            } else
            {
                this.1Nc(_arg2);
            };
        }

        private function RB(_arg1:String):void{
            this.build(XML(_arg1));
        }

        private function 1Nc(_arg1:String):void{
        }

        private function build(_arg1:XML):void{
            var _local2:Graphics;
            var _local5:XML;
            var _local6:int;
            var _local7:Boolean;
            var _local8:int;
            var _local9:Te;
            removeChild(this.YT);
            this.064 = new eG(32, 0xB3B3B3, false, 0, 0);
            this.064.setBold(true);
            this.064.text = _arg1.@name;
            this.064.1zx();
            this.064.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.064.y = 24;
            this.064.x = ((stage.stageWidth / 2) - (this.064.width / 2));
            addChild(this.064);
            this.cg = new eG(22, 0xFFFFFF, false, 0, 0);
            this.cg.text = _arg1.CurrentFame;
            this.cg.1zx();
            this.cg.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.cg.x = (0x0300 - this.cg.width);
            this.cg.y = ((32 / 2) - (this.cg.height / 2));
            addChild(this.cg);
            this.2f = new Bitmap(GuildUtil.1aD(40));
            this.2f.x = 760;
            this.2f.y = ((32 / 2) - (this.2f.height / 2));
            addChild(this.2f);
            this.0mg = new Shape();
            _local2 = this.0mg.graphics;
            _local2.clear();
            _local2.lineStyle(2, 0x545454);
            _local2.moveTo(0, 100);
            _local2.lineTo(stage.stageWidth, 100);
            _local2.lineStyle();
            addChild(this.0mg);
            this.1Nq = new Sprite();
            this.1Nq.x = 10;
            this.1Nq.y = 110;
            var _local3:Shape = new Shape();
            _local2 = _local3.graphics;
            _local2.beginFill(0);
            _local2.drawRect(0, 0, Te.WIDTH, 430);
            _local2.endFill();
            this.1Nq.addChild(_local3);
            this.1Nq.mask = _local3;
            addChild(this.1Nq);
            this.0Hn = new Sprite();
            var _local4:int;
            for each (_local5 in _arg1.Member)
            {
                _local7 = (this.0EQ == _local5.Name);
                _local8 = _local5.Rank;
                _local9 = new Te(((this.0aO + _local4) + 1), _local5.Name, _local5.Rank, _local5.Fame, _local7, this.0U4);
                _local9.y = (_local4 * Te.HEIGHT);
                this.0Hn.addChild(_local9);
                _local4++;
            };
            _local6 = (GuildUtil.0jA - (this.0aO + _local4));
            this.0dk = new _13j().setSize(22).setColor(0xB3B3B3);
            this.0dk.setStringBuilder(new 1cA().setParams(du.01w, {openSlots:_local6}));
            this.0dk.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.0dk.setAutoSize(TextFieldAutoSize.CENTER);
            this.0dk.x = (Te.WIDTH / 2);
            this.0dk.y = (_local4 * Te.HEIGHT);
            this.0Hn.addChild(this.0dk);
            this.1Nq.addChild(this.0Hn);
            if (this.0Hn.height > 400)
            {
                this.VQ = new 0DJ(16, 400);
                this.VQ.x = ((800 - this.VQ.width) - 4);
                this.VQ.y = 104;
                this.VQ.1OQ(400, this.0Hn.height);
                this.VQ.addEventListener(Event.CHANGE, this.ef);
                addChild(this.VQ);
            };
        }

        private function ef(_arg1:Event):void{
            this.0Hn.y = (-(this.VQ.0md()) * (this.0Hn.height - 400));
        }


    }
}//package 3S

