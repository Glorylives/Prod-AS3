// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.BoostPanel

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import flash.utils.Timer;
    import com.company.assembleegameclient.objects.Player;
    import flash.events.TimerEvent;
    import flash.display.Bitmap;
    import _CU._13j;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import 1PB.cO;
    import 1n4.1Jo;

    public class BoostPanel extends Sprite {

        public const F9:_1HZ = new _1HZ();
        private const SPACE:uint = 40;

        private var timer:Timer;
        private var player:Player;
        private var 1Dx:iK;
        private var 0ua:iK;
        private var 03I:int;

        public function BoostPanel(_arg1:Player){
            this.player = _arg1;
            this.1AW();
            this.1E4();
            this.UB();
        }

        private function UB():void{
            this.timer = new Timer(1000);
            this.timer.addEventListener(TimerEvent.TIMER, this.update);
            this.timer.start();
        }

        private function update(_arg1:TimerEvent):void{
            this.1y-(this.1Dx, this.player.198);
            this.1y-(this.0ua, this.player.0OA);
        }

        private function 1y-(_arg1:iK, _arg2:int):void{
            if (_arg1)
            {
                if (_arg2)
                {
                    _arg1.setTime(_arg2);
                } else
                {
                    this.1Z();
                    this.1E4();
                }
            }
        }

        private function 1AW():void{
            var _local2:Bitmap;
            var _local3:_13j;
            var _local1:BitmapData = TextureRedrawer.redraw(AssetLibrary.1JR("lofiInterfaceBig", 22), 20, true, 0);
            _local2 = new Bitmap(_local1);
            _local2.x = -3;
            _local2.y = -1;
            addChild(_local2);
            _local3 = new _13j().setSize(16).setColor(0xFF00);
            _local3.setBold(true);
            _local3.setStringBuilder(new 1cA().setParams(du.0xa));
            _local3.setMultiLine(true);
            _local3.mouseEnabled = true;
            _local3.filters = [new DropShadowFilter(0, 0, 0)];
            _local3.x = 20;
            _local3.y = 4;
            addChild(_local3);
        }

        private function 11y():void{
            graphics.clear();
            graphics.lineStyle(2, 0xFFFFFF);
            graphics.beginFill(0x333333);
            graphics.drawRoundRect(0, 0, 150, (height + 5), 10);
            this.F9.dispatch();
        }

        private function 1E4():void{
            this.03I = 25;
            var _local1:cO = new cO();
            this.RL(_local1);
            this.08c(_local1);
            if (_local1.isEmpty())
            {
                this.11y();
            } else
            {
                _local1.complete.addOnce(this.11y);
            }
        }

        private function 08c(_arg1:cO):void{
            if (this.player.198)
            {
                this.1Dx = this.1x0(new 1cA().setParams(du.1yF), this.player.198);
                this.u6(_arg1, this.1Dx);
            }
        }

        private function RL(_arg1:cO):void{
            var _local2:String;
            if (this.player.0OA)
            {
                _local2 = "1.5x";
                this.0ua = this.1x0(new 1cA().setParams(du.1X8, {rate:_local2}), this.player.0OA);
                this.u6(_arg1, this.0ua);
            }
        }

        private function u6(_arg1:cO, _arg2:iK):void{
            _arg1.push(_arg2.textChanged);
            addChild(_arg2);
            _arg2.y = this.03I;
            _arg2.x = 10;
            this.03I = (this.03I + this.SPACE);
        }

        private function 1Z():void{
            if (((this.1Dx) && (this.1Dx.parent)))
            {
                removeChild(this.1Dx);
            }
            if (((this.0ua) && (this.0ua.parent)))
            {
                removeChild(this.0ua);
            }
            this.1Dx = null;
            this.0ua = null;
        }

        private function 1x0(_arg1:1Jo, _arg2:int):iK{
            var _local3:iK = new iK();
            _local3.0Ro(_arg1);
            _local3.setTime(_arg2);
            return (_local3);
        }


    }
}//package com.company.assembleegameclient.ui

