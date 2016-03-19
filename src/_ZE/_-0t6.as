// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ZE.0t6

package _ZE{
    import flash.display.Sprite;
    import com.company.assembleegameclient.game.GameSprite;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.objects.18p;
    import flash.events.Event;
    import h0.1mR;

    public class 0t6 extends Sprite {

        public static const 1rt:Number = 1;

        public var gs_:GameSprite;
        public var player_:Player;
        public var w_:int;
        public var h_:int;
        public var 0Om:Panel = null;
        public var 1Qw:18p = null;
        public var 1AK:0lo;
        private var 0E4:Panel;
        public var 0RY:Function;

        public function 0t6(_arg1:GameSprite, _arg2:Player, _arg3:int, _arg4:int){
            this.gs_ = _arg1;
            this.player_ = _arg2;
            this.w_ = _arg3;
            this.h_ = _arg4;
            this.1AK = new 0lo(_arg1);
        }

        public function setOverride(_arg1:Panel):void{
            if (this.0E4 != null)
            {
                this.0E4.removeEventListener(Event.COMPLETE, this.onComplete);
            }
            this.0E4 = _arg1;
            this.0E4.addEventListener(Event.COMPLETE, this.onComplete);
        }

        public function redraw():void{
            this.0Om.draw();
        }

        public function draw():void{
            var _local1:18p;
            var _local2:Panel;
            if (this.0E4 != null)
            {
                this.0OM(this.0E4);
                this.0Om.draw();
                return;
            }
            _local1 = this.0RY();
            if ((((this.0Om == null)) || (!((_local1 == this.1Qw)))))
            {
                this.1Qw = _local1;
                if (this.1Qw != null)
                {
                    _local2 = this.1Qw.getPanel(this.gs_);
                    this.1AK = new 0lo(this.gs_);
                } else
                {
                    _local2 = this.1AK;
                }
                this.0OM(_local2);
            }
            if (this.0Om)
            {
                this.0Om.draw();
            }
        }

        private function onComplete(_arg1:Event):void{
            if (this.0E4 != null)
            {
                this.0E4.removeEventListener(Event.COMPLETE, this.onComplete);
                this.0E4 = null;
            }
            this.0OM(null);
            this.draw();
        }

        public function 0OM(_arg1:Panel):void{
            if (_arg1 != this.0Om)
            {
                ((this.0Om) && (removeChild(this.0Om)));
                this.0Om = _arg1;
                ((this.0Om) && (this.0qS()));
            }
        }

        private function 0qS():void{
            if ((this.0Om is 1mR))
            {
                this.0Om.x = ((this.w_ - this.0Om.width) * 0.5);
                this.0Om.y = 8;
            } else
            {
                this.0Om.x = 6;
                this.0Om.y = 8;
            }
            addChild(this.0Om);
        }


    }
}//package _ZE

