// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//13t.003

package 13t{
    import flash.display.Sprite;
    import flash.display.DisplayObjectContainer;
    import _CU._13j;
    import __AS3__.vec.Vector;
    import flash.display.DisplayObject;
    import flash.display.MovieClip;
    import kabam.rotmg.assets.model.Animation;
    import flash.events.Event;
    import flash.text.TextFieldAutoSize;
    import 1n4.1cA;
    import 1PB.TitleView;
    import _04_._1JZ;
    import 1qg.0io;
    import 12X.lE;
    import 0sC.0Tp;
    import 0sC.0mL;
    import 0gd.GTween;
    import __AS3__.vec.*;

    public class 003 extends Sprite {

        public static const 04i:int = 5;
        public static const 0JO:Number = 0.58;

        private var screen:DisplayObjectContainer;
        private var 0EU:_13j;
        private var 0rv:Vector.<DisplayObject>;
        private var 0yA:MovieClip;
        private var Z7:String;
        private var 1JH:int;
        private var 1PO:Animation;

        public function 003():void{
            this.mx();
            this.0Lb();
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private function mx():void{
            var _local1:Sprite = new Sprite();
            _local1.graphics.beginFill(0);
            _local1.graphics.drawRect(0, 0, 800, 600);
            _local1.graphics.endFill();
            addChild(_local1);
        }

        private function 0Lb():void{
            var _local1:MovieClip;
            this.screen = new MapLoadingScreen();
            _local1 = (this.screen.getChildByName("mapNameContainer") as MovieClip);
            this.0EU = new _13j().setSize(30).setColor(0xFFFFFF);
            this.0EU.setBold(true);
            this.0EU.setAutoSize(TextFieldAutoSize.CENTER);
            this.0EU.x = _local1.x;
            this.0EU.y = _local1.y;
            this.screen.addChild(this.0EU);
            this.0yA = (this.screen.getChildByName("difficulty_indicators") as MovieClip);
            this.0rv = new Vector.<DisplayObject>(04i);
            var _local2:int = 1;
            while (_local2 <= 04i)
            {
                this.0rv[(_local2 - 1)] = this.0yA.getChildByName(("indicator_" + _local2));
                _local2++;
            };
            addChild(this.screen);
            this.06x();
        }

        public function 0EA(_arg1:String, _arg2:int):void{
            this.Z7 = ((_arg1) ? _arg1 : "");
            this.1JH = _arg2;
            this.06x();
        }

        private function 06x():void{
            var _local1:int;
            if (this.screen)
            {
                this.0EU.setStringBuilder(new 1cA().setParams(this.Z7));
                if (this.1JH <= 0)
                {
                    this.screen.getChildByName("bgGroup").visible = false;
                    this.0yA.visible = false;
                } else
                {
                    this.screen.getChildByName("bgGroup").visible = true;
                    this.0yA.visible = true;
                    _local1 = 0;
                    while (_local1 < 04i)
                    {
                        this.0rv[_local1].visible = (_local1 < this.1JH);
                        _local1++;
                    };
                };
            };
        }

        public function 1Fh(_arg1:Animation):void{
            this.1PO = _arg1;
            addChild(_arg1);
            _arg1.start();
            _arg1.x = ((399.5 - (_arg1.width * 0.5)) + 5);
            _arg1.y = (245.85 - (_arg1.height * 0.5));
        }

        public function disable():void{
            this.0Nu();
        }

        public function 0Cf():void{
            ((parent) && (parent.removeChild(this)));
        }

        private function 0Nu():void{
            if (TitleView.1Vq)
            {
                _1JZ.0JF().getInstance(0io).dispatch(new lE());
                TitleView.1Vq = false;
            } else
            {
                if (TitleView.p2)
                {
                    _1JZ.0JF().getInstance(0io).dispatch(new 0Tp());
                    TitleView.p2 = false;
                } else
                {
                    if (TitleView.1P1)
                    {
                        _1JZ.0JF().getInstance(0io).dispatch(new 0Tp(true));
                        TitleView.1P1 = false;
                    } else
                    {
                        if (TitleView.cC)
                        {
                            _1JZ.0JF().getInstance(0io).dispatch(new 0mL());
                            TitleView.cC = false;
                        };
                    };
                };
            };
            var _local1:GTween = new GTween(this, 0JO, {alpha:0});
            _local1.onComplete = this.19;
            mouseEnabled = false;
            mouseChildren = false;
        }

        private function 19(_arg1:GTween):void{
            ((parent) && (parent.removeChild(this)));
        }

        private function onRemovedFromStage(_arg1:Event):void{
            this.1PO.dispose();
        }


    }
}//package 13t

