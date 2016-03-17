// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//3S.Te

package 3S{
    import flash.display.Sprite;
    import flash.geom.ColorTransform;
    import _CU._13j;
    import flash.display.Bitmap;
    import 1n4.1WS;
    import flash.filters.DropShadowFilter;
    import flash.text.TextFieldAutoSize;
    import com.company.assembleegameclient.util.GuildUtil;
    import 1n4.1cA;
    import flash.events.MouseEvent;
    import com.company.rotmg.graphics.DeleteXGraphic;
    import flash.display.Graphics;
    import com.company.util.MoreColorUtil;
    import 1t6.Dialog;
    import AO.du;
    import _04_._1JZ;
    import 1qg.0io;
    import 3S.01E;
    import 1qg.11S;
    import flash.events.Event;
    import 3S.*;

    class Te extends Sprite {

        public static const WIDTH:int = 756;
        public static const HEIGHT:int = 32;
        protected static const 0Zb:ColorTransform = new ColorTransform(1, (220 / 0xFF), (133 / 0xFF));

        private var name_:String;
        private var qw:int;
        private var 1Ba:_13j;
        private var nameText_:_13j;
        private var cg:_13j;
        private var 2f:Bitmap;
        private var 13e:Bitmap;
        private var gZ:_13j;
        private var 1EN:Sprite;
        private var 1Wh:Sprite;
        private var 1Ng:Sprite;

        public function Te(_arg1:int, _arg2:String, _arg3:int, _arg4:int, _arg5:Boolean, _arg6:int){
            var _local7:uint;
            super();
            this.name_ = _arg2;
            this.qw = _arg3;
            _local7 = 0xB3B3B3;
            if (_arg5)
            {
                _local7 = 16564761;
            };
            this.1Ba = new _13j().setSize(22).setColor(_local7);
            this.1Ba.setStringBuilder(new 1WS((_arg1.toString() + ".")));
            this.1Ba.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.1Ba.x = (60 - this.1Ba.width);
            this.1Ba.y = 4;
            addChild(this.1Ba);
            this.nameText_ = new _13j().setSize(22).setColor(_local7);
            this.nameText_.setStringBuilder(new 1WS(_arg2));
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.nameText_.x = 100;
            this.nameText_.y = 4;
            addChild(this.nameText_);
            this.cg = new _13j().setSize(22).setColor(_local7);
            this.cg.setAutoSize(TextFieldAutoSize.RIGHT);
            this.cg.setStringBuilder(new 1WS(_arg4.toString()));
            this.cg.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.cg.x = 408;
            this.cg.y = 4;
            addChild(this.cg);
            this.2f = new Bitmap(GuildUtil.1aD(40));
            this.2f.x = 400;
            this.2f.y = ((HEIGHT / 2) - (this.2f.height / 2));
            addChild(this.2f);
            this.13e = new Bitmap(GuildUtil.CW(_arg3, 20));
            this.13e.x = 548;
            this.13e.y = ((HEIGHT / 2) - (this.13e.height / 2));
            addChild(this.13e);
            this.gZ = new _13j().setSize(22).setColor(_local7);
            this.gZ.setStringBuilder(new 1cA().setParams(GuildUtil.0Wv(_arg3)));
            this.gZ.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
            this.gZ.setVerticalAlign(_13j.MIDDLE);
            this.gZ.x = 580;
            this.gZ.y = (HEIGHT / 2);
            addChild(this.gZ);
            if (GuildUtil.Ff(_arg6, _arg3))
            {
                this.1EN = this.n(true);
                this.0hr(this.1EN);
                this.1EN.addEventListener(MouseEvent.CLICK, this.1kk);
                this.1EN.x = (670 + 6);
                this.1EN.y = (HEIGHT / 2);
                addChild(this.1EN);
            };
            if (GuildUtil.1sY(_arg6, _arg3))
            {
                this.1Wh = this.n(false);
                this.0hr(this.1Wh);
                this.1Wh.addEventListener(MouseEvent.CLICK, this.0G5);
                this.1Wh.x = (700 + 6);
                this.1Wh.y = (HEIGHT / 2);
                addChild(this.1Wh);
            };
            if (GuildUtil.0DD(_arg6, _arg3))
            {
                this.1Ng = new DeleteXGraphic();
                this.0hr(this.1Ng);
                this.1Ng.addEventListener(MouseEvent.CLICK, this.1v7);
                this.1Ng.x = 730;
                this.1Ng.y = ((HEIGHT / 2) - (this.1Ng.height / 2));
                addChild(this.1Ng);
            };
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
            };
            return (_local2);
        }

        private function 0hr(_arg1:Sprite):void{
            _arg1.addEventListener(MouseEvent.MOUSE_OVER, this.nn);
            _arg1.addEventListener(MouseEvent.ROLL_OUT, this.0mf);
        }

        private function nn(_arg1:MouseEvent):void{
            var _local2:Sprite = (_arg1.currentTarget as Sprite);
            _local2.transform.colorTransform = 0Zb;
        }

        private function 0mf(_arg1:MouseEvent):void{
            var _local2:Sprite = (_arg1.currentTarget as Sprite);
            _local2.transform.colorTransform = MoreColorUtil.identity;
        }

        private function 1kk(_arg1:MouseEvent):void{
            var _local2:String = GuildUtil.0Wv(GuildUtil.1OO(this.qw));
            var _local3:Dialog = new Dialog("", "", du.1ut, du.26e, "/promote");
            _local3.12Z(du.13s, {
                name:this.name_,
                rank:_local2
            });
            _local3.0mh(new 1cA().setParams(du.1Ue, {name:this.name_}));
            _local3.addEventListener(Dialog.LEFT_BUTTON, this.Ya);
            _local3.addEventListener(Dialog.RIGHT_BUTTON, this.1vR);
            _1JZ.0JF().getInstance(0io).dispatch(_local3);
        }

        private function 1vR(_arg1:Event):void{
            dispatchEvent(new 01E(01E.SET_RANK, this.name_, GuildUtil.1OO(this.qw)));
            _1JZ.0JF().getInstance(11S).dispatch();
        }

        private function 0G5(_arg1:MouseEvent):void{
            var _local2:String = GuildUtil.0Wv(GuildUtil.1M3(this.qw));
            var _local3:Dialog = new Dialog("", "", du.0Ij, du.12o, "/demote");
            _local3.12Z(du.0zK, {
                name:this.name_,
                rank:_local2
            });
            _local3.0mh(new 1cA().setParams(du.0nn, {name:this.name_}));
            _local3.addEventListener(Dialog.LEFT_BUTTON, this.Ya);
            _local3.addEventListener(Dialog.RIGHT_BUTTON, this.0Oh);
            _1JZ.0JF().getInstance(0io).dispatch(_local3);
        }

        private function 0Oh(_arg1:Event):void{
            dispatchEvent(new 01E(01E.SET_RANK, this.name_, GuildUtil.1M3(this.qw)));
            _1JZ.0JF().getInstance(11S).dispatch();
        }

        private function 1v7(_arg1:MouseEvent):void{
            var _local2:Dialog = new Dialog("", "", du.lz, du.0R6, "/removeFromGuild");
            _local2.12Z(du.11p, {name:this.name_});
            _local2.0mh(new 1cA().setParams(du.break, {name:this.name_}));
            _local2.addEventListener(Dialog.LEFT_BUTTON, this.Ya);
            _local2.addEventListener(Dialog.RIGHT_BUTTON, this.07R);
            _1JZ.0JF().getInstance(0io).dispatch(_local2);
        }

        private function 07R(_arg1:Event):void{
            _1JZ.0JF().getInstance(11S).dispatch();
            dispatchEvent(new 01E(01E.REMOVE_MEMBER, this.name_));
        }

        private function Ya(_arg1:Event):void{
            _1JZ.0JF().getInstance(11S).dispatch();
        }


    }
}//package 3S

