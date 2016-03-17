// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//111.0qL

package 111{
    import flash.display.Sprite;
    import flash.display.DisplayObjectContainer;
    import flash.display.DisplayObject;
    import flash.display.Graphics;
    import flash.events.Event;

    public class 0qL extends Sprite {

        private var background:Sprite;
        private var container:DisplayObjectContainer;
        private var 0Av:Sprite;
        private var 0-L:DisplayObject;

        public function 0qL(){
            addChild((this.background = new Sprite()));
            addChild((this.container = new Sprite()));
            this.background.visible = false;
            this.background.mouseEnabled = true;
        }

        public function 1TX(_arg1:int=0x151515):void{
            var _local2:Graphics = this.background.graphics;
            _local2.clear();
            _local2.beginFill(_arg1, 0.6);
            _local2.drawRect(0, 0, 800, 600);
            _local2.endFill();
            this.background.visible = true;
        }

        public function show(_arg1:Sprite, _arg2:Boolean):void{
            this.0fv();
            this.0UX(_arg1);
            ((_arg2) && (this.1TX()));
        }

        public function mv():void{
            this.background.visible = false;
            this.0fv();
        }

        public function push(_arg1:Sprite):void{
            this.0Av.visible = false;
            this.0-L = _arg1;
            addChild(_arg1);
            this.background.visible = true;
        }

        public function 0yu():DisplayObject{
            return (this.0-L);
        }

        public function pop():void{
            removeChild(this.0-L);
            this.0Av.visible = true;
        }

        private function 0UX(_arg1:Sprite):void{
            this.0Av = _arg1;
            _arg1.addEventListener(Event.REMOVED, this.1io);
            this.container.addChild(_arg1);
        }

        private function 1io(_arg1:Event):void{
            var _local2:Sprite = (_arg1.target as Sprite);
            if (this.0Av == _local2)
            {
                this.background.visible = false;
                this.0Av = null;
            };
        }

        private function 0fv():void{
            if (((this.0Av) && (this.container.contains(this.0Av))))
            {
                this.0Av.removeEventListener(Event.REMOVED, this.1io);
                this.container.removeChild(this.0Av);
                this.background.visible = false;
            };
        }


    }
}//package 111

