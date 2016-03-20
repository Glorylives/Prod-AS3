// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//3S.GuildPlayerList

package _3S{
import _0q4._0DJ;

import _AO._du;

import _aq.Account;

import com.company.assembleegameclient.ui._0DJ_;
import com.company.util._1X3;

import flash.display.Sprite;
    import _0BB._Fu;
    import _CU._13j;
    import com.company.ui._eG;
    import flash.display.Bitmap;
    import flash.display.Shape;
    import _1n4._1cA;
    import flash.filters.DropShadowFilter;
    import flash.text.TextFieldAutoSize;
    import _04_._1JZ;
    import flash.display.Graphics;
    import com.company.assembleegameclient.util.GuildUtil;
    import flash.events.Event;

    public class GuildPlayerList extends Sprite {

        private var zY:int;
        private var _0aO:int;
        private var _0EQ:String;
        private var _0U4:int;
        private var _0LR:_Fu;
        private var YT:_13j;
        private var _064:_eG;
        private var cg:_eG;
        private var _2f:Bitmap;
        private var _0mg:Shape;
        private var _1Nq:Sprite;
        private var _0Hn:Sprite;
        private var _0dk:_13j;
        private var VQ:_0DJ_;

        public function GuildPlayerList(_arg1:int, _arg2:int, _arg3:String="", _arg4:int=0){
            this.zY = _arg1;
            this._0aO = _arg2;
            this._0EQ = _arg3;
            this._0U4 = _arg4;
            this.YT = new _13j().setSize(22).setColor(0xB3B3B3);
            this.YT.setBold(true);
            this.YT.setStringBuilder(new _1cA().setParams(_du._1d3));
            this.YT.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.YT.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_13j.MIDDLE);
            this.YT.x = (800 / 2);
            this.YT.y = 550;
            addChild(this.YT);
            var _local5:Account = _1JZ._0JF().getInstance(Account);
            var _local6:Object = {
                num:_arg1,
                offset:_arg2
            }
            _1X3._1J7(_local6, _local5._1Y());
            this._0LR = _1JZ._0JF().getInstance(_Fu);
            this._0LR._1Je(2);
            this._0LR.complete.addOnce(this.onComplete);
            this._0LR.sendRequest("/guild/listMembers", _local6);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.RB(_arg2);
            } else
            {
                this._1Nc(_arg2);
            }
        }

        private function RB(_arg1:String):void{
            this.build(XML(_arg1));
        }

        private function _1Nc(_arg1:String):void{
        }

        private function build(_arg1:XML):void{
            var _local2:Graphics;
            var _local5:XML;
            var _local6:int;
            var _local7:Boolean;
            var _local8:int;
            var _local9:_Te;
            removeChild(this.YT);
            this._064 = new _eG(32, 0xB3B3B3, false, 0, 0);
            this._064.setBold(true);
            this._064.text = _arg1.@name;
            this._064._1zx();
            this._064.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this._064.y = 24;
            this._064.x = ((stage.stageWidth / 2) - (this._064.width / 2));
            addChild(this._064);
            this.cg = new _eG(22, 0xFFFFFF, false, 0, 0);
            this.cg.text = _arg1.CurrentFame;
            this.cg._1zx();
            this.cg.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.cg.x = (0x0300 - this.cg.width);
            this.cg.y = ((32 / 2) - (this.cg.height / 2));
            addChild(this.cg);
            this._2f = new Bitmap(GuildUtil._1aD(40));
            this._2f.x = 760;
            this._2f.y = ((32 / 2) - (this._2f.height / 2));
            addChild(this._2f);
            this._0mg = new Shape();
            _local2 = this._0mg.graphics;
            _local2.clear();
            _local2.lineStyle(2, 0x545454);
            _local2.moveTo(0, 100);
            _local2.lineTo(stage.stageWidth, 100);
            _local2.lineStyle();
            addChild(this._0mg);
            this._1Nq = new Sprite();
            this._1Nq.x = 10;
            this._1Nq.y = 110;
            var _local3:Shape = new Shape();
            _local2 = _local3.graphics;
            _local2.beginFill(0);
            _local2.drawRect(0, 0, _Te.WIDTH, 430);
            _local2.endFill();
            this._1Nq.addChild(_local3);
            this._1Nq.mask = _local3;
            addChild(this._1Nq);
            this._0Hn = new Sprite();
            var _local4:int;
            for each (_local5 in _arg1.Member)
            {
                _local7 = (this._0EQ == _local5.Name);
                _local8 = _local5.Rank;
                _local9 = new _Te(((this._0aO + _local4) + 1), _local5.Name, _local5.Rank, _local5.Fame, _local7, this._0U4);
                _local9.y = (_local4 * _Te.HEIGHT);
                this._0Hn.addChild(_local9);
                _local4++;
            }
            _local6 = (GuildUtil._0jA - (this._0aO + _local4));
            this._0dk = new _13j().setSize(22).setColor(0xB3B3B3);
            this._0dk.setStringBuilder(new _1cA().setParams(_du._01w, {openSlots:_local6}));
            this._0dk.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this._0dk.setAutoSize(TextFieldAutoSize.CENTER);
            this._0dk.x = (_Te.WIDTH / 2);
            this._0dk.y = (_local4 * _Te.HEIGHT);
            this._0Hn.addChild(this._0dk);
            this._1Nq.addChild(this._0Hn);
            if (this._0Hn.height > 400)
            {
                this.VQ = new _0DJ_(16, 400);
                this.VQ.x = ((800 - this.VQ.width) - 4);
                this.VQ.y = 104;
                this.VQ._1OQ(400, this._0Hn.height);
                this.VQ.addEventListener(Event.CHANGE, this.ef);
                addChild(this.VQ);
            }
        }

        private function ef(_arg1:Event):void{
            this._0Hn.y = (-(this.VQ._0md()) * (this._0Hn.height - 400));
        }


    }
}//package 3S

