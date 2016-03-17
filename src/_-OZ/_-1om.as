// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//OZ.1om

package OZ{
    import flash.display.Sprite;
    import flash.utils.Timer;
    import _CU._13j;
    import _Jy._1HZ;
    import flash.filters.DropShadowFilter;
    import flash.filters.GlowFilter;
    import 1n4.1WS;
    import 0gd.GTween;
    import flash.events.TimerEvent;

    public class 1om extends Sprite {

        public static const 0qr:int = 8;

        public var 0Bu:int = 0;
        public var 26k:Timer;
        public var text:_13j;
        public var background:0DR;
        public var zi:_1HZ;
        public var cy:Number = -1;

        public function 1om(){
            this.zi = new _1HZ();
            super();
            this.text = new _13j().setSize(40).setColor(0xFFFFFF).setBold(true);
            this.text.filters = [new DropShadowFilter(0, 0, 0), new GlowFilter(0xFFFF00, 1, 1.5, 1.5, 4.5, 1)];
            this.text.setStringBuilder(new 1WS(("" + this.0Bu)));
            addChild(this.text);
            this.text.visible = false;
        }

        public function start(_arg1:int=5):void{
            if (((!((this.text == null))) && (!((this.text.parent == null)))))
            {
                removeChild(this.text);
            };
            this.text.setStringBuilder(new 1WS(("" + _arg1)));
            this.text.alpha = 0.5;
            this.text.scaleX = 1;
            this.text.scaleY = 1;
            this.text.visible = true;
            new GTween(this.text, 0.25, {
                scaleX:1.25,
                scaleY:1.25,
                alpha:1
            });
            addChild(this.text);
            this.0Bu = _arg1;
            this.26k = new Timer(1000, _arg1);
            this.26k.addEventListener(TimerEvent.TIMER, this.0Iv);
            this.26k.start();
        }

        public function end():void{
            if (((!((this.background == null))) && (!((this.background.parent == null)))))
            {
                removeChild(this.background);
            };
            if (((!((this.text == null))) && (!((this.text.parent == null)))))
            {
                removeChild(this.text);
            };
            this.0Bu = 0;
            this.zi.dispatch();
            if (this.26k != null)
            {
                this.26k.removeEventListener(TimerEvent.TIMER, this.0Iv);
                this.26k.reset();
            };
        }

        public function remove():void{
            if (((!((this.background == null))) && (!((this.background.parent == null)))))
            {
                removeChild(this.background);
            };
            if (((!((this.text == null))) && (!((this.text.parent == null)))))
            {
                removeChild(this.text);
            };
            this.0Bu = 0;
            this.26k.removeEventListener(TimerEvent.TIMER, this.0Iv);
            this.26k.reset();
        }

        public function R5():Boolean{
            return (!((this.0Bu == 0)));
        }

        public function 0Iv(_arg1:TimerEvent):void{
            this.0Bu--;
            if (this.0Bu == 0)
            {
                this.end();
            } else
            {
                this.text.setStringBuilder(new 1WS(("" + this.0Bu)));
                this.text.alpha = 0.5;
                this.text.scaleX = 1;
                this.text.scaleY = 1;
                if ((((this.0Bu == 9)) || ((this.0Bu == 99))))
                {
                    this.0Ff();
                };
                new GTween(this.text, 0.25, {
                    scaleX:1.25,
                    scaleY:1.25,
                    alpha:1
                });
            };
        }

        public function setXPos(_arg1:Number):void{
            this.cy = _arg1;
            this.x = (this.cy - ((this.width * 1.25) / 2));
        }

        public function 0Ff():void{
            this.x = (this.cy - ((this.width * 1.25) / 2));
        }

        public function setYPos(_arg1:Number):void{
            this.y = (_arg1 - ((this.height * 1.25) / 2));
        }

        public function getCenterX():Number{
            return ((this.x + (this.width / 2)));
        }

        public function getCenterY():Number{
            return ((this.y + (this.height / 2)));
        }


    }
}//package OZ

