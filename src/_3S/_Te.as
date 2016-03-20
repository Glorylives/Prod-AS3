// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//3S.Te

package _3S{
    import flash.display.Sprite;
    import flash.geom.ColorTransform;
    import _CU._13j;
    import flash.display.Bitmap;
    import _1n4._1WS;
    import flash.filters.DropShadowFilter;
    import flash.text.TextFieldAutoSize;
    import com.company.assembleegameclient.util.GuildUtil;
    import _1n4._1cA;
    import flash.events.MouseEvent;
    import com.company.rotmg.graphics.DeleteXGraphic;
    import flash.display.Graphics;
    import com.company.util.MoreColorUtil;
    import _1t6.Dialog;
    import _AO._du;
    import _04_._1JZ;
    import _1qg._0io;
    import _3S._01E;
    import _1qg._11S;
    import flash.events.Event;
    import _3S.*;

    class _Te extends Sprite {

        public static const WIDTH:int = 756;
        public static const HEIGHT:int = 32;
        protected static const _0Zb:ColorTransform = new ColorTransform(1, (220 / 0xFF), (133 / 0xFF));

        private var name_:String;
        private var qw:int;
        private var _1Ba:_13j;
        private var nameText_:_13j;
        private var cg:_13j;
        private var _2f:Bitmap;
        private var _13e:Bitmap;
        private var gZ:_13j;
        private var _1EN:Sprite;
        private var _1Wh:Sprite;
        private var _1Ng:Sprite;

        public function _Te(_arg1:int, _arg2:String, _arg3:int, _arg4:int, _arg5:Boolean, _arg6:int){
            var _local7:uint;
            super();
            this.name_ = _arg2;
            this.qw = _arg3;
            _local7 = 0xB3B3B3;
            if (_arg5)
            {
                _local7 = 16564761;
            }
            this._1Ba = new _13j().setSize(22).setColor(_local7);
            this._1Ba.setStringBuilder(new _1WS((_arg1.toString() + ".")));
            this._1Ba.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this._1Ba.x = (60 - this._1Ba.width);
            this._1Ba.y = 4;
            addChild(this._1Ba);
            this.nameText_ = new _13j().setSize(22).setColor(_local7);
            this.nameText_.setStringBuilder(new _1WS(_arg2));
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.nameText_.x = 100;
            this.nameText_.y = 4;
            addChild(this.nameText_);
            this.cg = new _13j().setSize(22).setColor(_local7);
            this.cg.setAutoSize(TextFieldAutoSize.RIGHT);
            this.cg.setStringBuilder(new _1WS(_arg4.toString()));
            this.cg.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.cg.x = 408;
            this.cg.y = 4;
            addChild(this.cg);
            this._2f = new Bitmap(GuildUtil._1aD(40));
            this._2f.x = 400;
            this._2f.y = ((HEIGHT / 2) - (this._2f.height / 2));
            addChild(this._2f);
            this._13e = new Bitmap(GuildUtil.CW(_arg3, 20));
            this._13e.x = 548;
            this._13e.y = ((HEIGHT / 2) - (this._13e.height / 2));
            addChild(this._13e);
            this.gZ = new _13j().setSize(22).setColor(_local7);
            this.gZ.setStringBuilder(new _1cA().setParams(GuildUtil._0Wv(_arg3)));
            this.gZ.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.gZ.setVerticalAlign(_13j.MIDDLE);
            this.gZ.x = 580;
            this.gZ.y = (HEIGHT / 2);
            addChild(this.gZ);
            if (GuildUtil.Ff(_arg6, _arg3))
            {
                this._1EN = this.n(true);
                this._0hr(this._1EN);
                this._1EN.addEventListener(MouseEvent.CLICK, this._1kk);
                this._1EN.x = (670 + 6);
                this._1EN.y = (HEIGHT / 2);
                addChild(this._1EN);
            }
            if (GuildUtil._1sY(_arg6, _arg3))
            {
                this._1Wh = this.n(false);
                this._0hr(this._1Wh);
                this._1Wh.addEventListener(MouseEvent.CLICK, this._0G5);
                this._1Wh.x = (700 + 6);
                this._1Wh.y = (HEIGHT / 2);
                addChild(this._1Wh);
            }
            if (GuildUtil._0DD(_arg6, _arg3))
            {
                this._1Ng = new DeleteXGraphic();
                this._0hr(this._1Ng);
                this._1Ng.addEventListener(MouseEvent.CLICK, this._1v7);
                this._1Ng.x = 730;
                this._1Ng.y = ((HEIGHT / 2) - (this._1Ng.height / 2));
                addChild(this._1Ng);
            }
        }

        private function n(_arg1:Boolean):Sprite{
            var _local2:Sprite = new Sprite();
            var _local3:Graphics = _local2.graphics;
            _local3.beginFill(0xFFFFFF);
            _local3.moveTo(-8, -6);
            _local3.lineTo(8, -6);
            _local3.lineTo(0, 6);
            _local3.lineTo(-8, -6);
            if (_arg1)
            {
                _local2.rotation = 180;
            }
            return (_local2);
        }

        private function _0hr(_arg1:Sprite):void{
            _arg1.addEventListener(MouseEvent.MOUSE_OVER, this.nn);
            _arg1.addEventListener(MouseEvent.ROLL_OUT, this._0mf);
        }

        private function nn(_arg1:MouseEvent):void{
            var _local2:Sprite = (_arg1.currentTarget as Sprite);
            _local2.transform.colorTransform = _0Zb;
        }

        private function _0mf(_arg1:MouseEvent):void{
            var _local2:Sprite = (_arg1.currentTarget as Sprite);
            _local2.transform.colorTransform = MoreColorUtil.identity;
        }

        private function _1kk(_arg1:MouseEvent):void{
            var _local2:String = GuildUtil._0Wv(GuildUtil._1OO(this.qw));
            var _local3:Dialog = new Dialog("", "", _du._1ut, _du._26e, "/promote");
            _local3._12Z(_du._13s, {
                name:this.name_,
                rank:_local2
            });
            _local3._0mh(new _1cA().setParams(_du._1Ue, {name:this.name_}));
            _local3.addEventListener(Dialog.LEFT_BUTTON, this.Ya);
            _local3.addEventListener(Dialog.RIGHT_BUTTON, this._1vR);
            _1JZ._0JF().getInstance(_0io).dispatch(_local3);
        }

        private function _1vR(_arg1:Event):void{
            dispatchEvent(new _01E(_01E.SET_RANK, this.name_, GuildUtil._1OO(this.qw)));
            _1JZ._0JF().getInstance(_11S).dispatch();
        }

        private function _0G5(_arg1:MouseEvent):void{
            var _local2:String = GuildUtil._0Wv(GuildUtil._1M3(this.qw));
            var _local3:Dialog = new Dialog("", "", _du._0Ij, _du._12o, "/demote");
            _local3._12Z(_du._0zK, {
                name:this.name_,
                rank:_local2
            });
            _local3._0mh(new _1cA().setParams(_du._0nn, {name:this.name_}));
            _local3.addEventListener(Dialog.LEFT_BUTTON, this.Ya);
            _local3.addEventListener(Dialog.RIGHT_BUTTON, this._0Oh);
            _1JZ._0JF().getInstance(_0io).dispatch(_local3);
        }

        private function _0Oh(_arg1:Event):void{
            dispatchEvent(new _01E(_01E.SET_RANK, this.name_, GuildUtil._1M3(this.qw)));
            _1JZ._0JF().getInstance(_11S).dispatch();
        }

        private function _1v7(_arg1:MouseEvent):void{
            var _local2:Dialog = new Dialog("", "", _du._lz, _du._0R6, "/removeFromGuild");
            _local2._12Z(_du._11p, {name:this.name_});
            _local2._0mh(new _1cA().setParams(_du._break, {name:this.name_}));
            _local2.addEventListener(Dialog.LEFT_BUTTON, this.Ya);
            _local2.addEventListener(Dialog.RIGHT_BUTTON, this._07R);
            _1JZ._0JF().getInstance(_0io).dispatch(_local2);
        }

        private function _07R(_arg1:Event):void{
            _1JZ._0JF().getInstance(_11S).dispatch();
            dispatchEvent(new _01E(_01E.REMOVE_MEMBER, this.name_));
        }

        private function Ya(_arg1:Event):void{
            _1JZ._0JF().getInstance(_11S).dispatch();
        }


    }
}//package 3S

