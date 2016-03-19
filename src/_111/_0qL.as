// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//111.0qL

package _111{
    import flash.display.Sprite;
    import flash.display.DisplayObjectContainer;
    import flash.display.DisplayObject;
    import flash.display.Graphics;
    import flash.events.Event;

    public class _0qL extends Sprite {

        private var background:Sprite;
        private var container:DisplayObjectContainer;
        private var _0Av:Sprite;
        private var _0L:DisplayObject;

        public function _0qL(){
            addChild((this.background = new Sprite()));
            addChild((this.container = new Sprite()));
            this.background.visible = false;
            this.background.mouseEnabled = true;
        }

        public function _1TX(_arg1:int=0x151515):void{
            var _local2:Graphics = this.background.graphics;
            _local2.clear();
            _local2.beginFill(_arg1, 0.6);
            _local2.drawRect(0, 0, 800, 600);
            _local2.endFill();
            this.background.visible = true;
        }

        public function show(_arg1:Sprite, _arg2:Boolean):void{
            this._0fv();
            this._0UX(_arg1);
            ((_arg2) && (this._1TX()));
        }

        public function mv():void{
            this.background.visible = false;
            this._0fv();
        }

        public function push(_arg1:Sprite):void{
            this._0Av.visible = false;
            this._0L = _arg1;
            addChild(_arg1);
            this.background.visible = true;
        }

        public function _0yu():DisplayObject{
            return (this._0L);
        }

        public function pop():void{
            removeChild(this._0L);
            this._0Av.visible = true;
        }

        private function _0UX(_arg1:Sprite):void{
            this._0Av = _arg1;
            _arg1.addEventListener(Event.REMOVED, this._1io);
            this.container.addChild(_arg1);
        }

        private function _1io(_arg1:Event):void{
            var _local2:Sprite = (_arg1.target as Sprite);
            if (this._0Av == _local2)
            {
                this.background.visible = false;
                this._0Av = null;
            }
        }

        private function _0fv():void{
            if (((this._0Av) && (this.container.contains(this._0Av))))
            {
                this._0Av.removeEventListener(Event.REMOVED, this._1io);
                this.container.removeChild(this._0Av);
                this.background.visible = false;
            }
        }


    }
}//package 111

