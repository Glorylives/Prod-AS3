// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2H.y

package 2H{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import 1PB.cO;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import __AS3__.vec.*;

    public class y extends Sprite {

        protected const h_:int = 36;

        protected var uz:Vector.<String>;
        protected var w_:int = 0;
        protected var selected_:1ar;
        private var 1Do:Vector.<1ar>;
        private var 1IE:Sprite;
        private var 1he:cO;

        public function y(_arg1:Vector.<String>){
            this.1Do = new Vector.<1ar>();
            this.1IE = new Sprite();
            this.1he = new cO();
            super();
            this.uz = _arg1;
            this.63();
            this.JB();
            addChild(this.1IE);
            this.1IE.visible = false;
            this.1he.complete.addOnce(this.onComplete);
        }

        public function getValue():String{
            return (this.selected_.getValue());
        }

        public function setValue(_arg1:String):void{
            var _local3:String;
            var _local2:int = this.uz.indexOf(_arg1);
            if (_local2 > 0)
            {
                _local3 = this.uz[0];
                this.uz[_local2] = _local3;
                this.uz[0] = _arg1;
                this.JB();
                dispatchEvent(new Event(Event.CHANGE));
            }
        }

        public function Bn():int{
            return (this.h_);
        }

        private function 63():void{
            var _local1:1ar;
            if (this.uz.length > 0)
            {
                _local1 = this.Br(this.uz[0]);
                this.1Do.push(_local1);
                this.selected_ = _local1;
                this.selected_.addEventListener(MouseEvent.CLICK, this.0eJ);
                addChild(this.selected_);
            }
            var _local2:int = 1;
            while (_local2 < this.uz.length)
            {
                _local1 = this.Br(this.uz[_local2]);
                _local1.addEventListener(MouseEvent.CLICK, this.onSelect);
                _local1.y = (this.h_ * _local2);
                this.1Do.push(_local1);
                this.1IE.addChild(_local1);
                _local2++;
            }
        }

        private function Br(_arg1:String):1ar{
            var _local2:1ar = new 1ar(_arg1, 0, this.h_);
            this.1he.push(_local2.0Sm());
            return (_local2);
        }

        private function JB():void{
            var _local1:int;
            while (_local1 < this.uz.length)
            {
                this.1Do[_local1].setValue(this.uz[_local1]);
                this.1Do[_local1].setWidth(this.w_);
                _local1++;
            }
            if (this.1Do.length > 0)
            {
                this.selected_ = this.1Do[0];
            }
        }

        private function 19N():void{
            this.addEventListener(MouseEvent.ROLL_OUT, this.mf);
            this.1IE.visible = true;
        }

        private function mv():void{
            this.removeEventListener(MouseEvent.ROLL_OUT, this.mf);
            this.1IE.visible = false;
        }

        private function onComplete():void{
            var _local2:1ar;
            var _local1:int = 83;
            for each (_local2 in this.1Do)
            {
                _local1 = Math.max(_local2.width, _local1);
            }
            this.w_ = _local1;
            this.JB();
        }

        private function 0eJ(_arg1:MouseEvent):void{
            _arg1.stopImmediatePropagation();
            this.selected_.removeEventListener(MouseEvent.CLICK, this.0eJ);
            this.selected_.addEventListener(MouseEvent.CLICK, this.onSelect);
            this.19N();
        }

        private function onSelect(_arg1:MouseEvent):void{
            _arg1.stopImmediatePropagation();
            this.selected_.addEventListener(MouseEvent.CLICK, this.0eJ);
            this.selected_.removeEventListener(MouseEvent.CLICK, this.onSelect);
            this.mv();
            var _local2:1ar = (_arg1.target as 1ar);
            this.setValue(_local2.getValue());
        }

        private function mf(_arg1:MouseEvent):void{
            this.selected_.addEventListener(MouseEvent.CLICK, this.0eJ);
            this.selected_.removeEventListener(MouseEvent.CLICK, this.onSelect);
            this.mv();
        }


    }
}//package 2H

