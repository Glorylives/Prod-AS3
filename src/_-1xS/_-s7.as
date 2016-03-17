// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1xS.s7

package 1xS{
    import flash.display.Sprite;
    import __AS3__.vec.Vector;
    import com.company.ui.eG;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import flash.geom.Point;

    public class s7 extends Sprite {

        protected var uz:Vector.<String>;
        protected var w_:int;
        protected var h_:int;
        protected var labelText_:eG;
        protected var 1mN:int = 0;
        protected var selected_:1Wu;
        protected var 1IE:Sprite;

        public function s7(_arg1:Vector.<String>, _arg2:int, _arg3:int, _arg4:String=null){
            this.1IE = new Sprite();
            super();
            this.uz = _arg1;
            this.w_ = _arg2;
            this.h_ = _arg3;
            if (_arg4 != null)
            {
                this.labelText_ = new eG(16, 0xFFFFFF, false, 0, 0);
                this.labelText_.setBold(true);
                this.labelText_.text = (_arg4 + ":");
                this.labelText_.re();
                addChild(this.labelText_);
                this.1mN = (this.labelText_.width + 5);
            };
            this.1sE(0);
        }

        public function getValue():String{
            return (this.selected_.getValue());
        }

        public function setValue(_arg1:String):void{
            var _local2:int;
            while (_local2 < this.uz.length)
            {
                if (_arg1 == this.uz[_local2])
                {
                    this.1sE(_local2);
                    return;
                };
                _local2++;
            };
        }

        public function 1sE(_arg1:int):void{
            this.setSelected(this.uz[_arg1]);
        }

        public function v4():int{
            var _local1:int;
            while (_local1 < this.uz.length)
            {
                if (this.selected_.getValue() == this.uz[_local1])
                {
                    return (_local1);
                };
                _local1++;
            };
            return (-1);
        }

        private function setSelected(_arg1:String):void{
            var _local2:String;
            _local2 = (((this.selected_)!=null) ? this.selected_.getValue() : null);
            this.selected_ = new 1Wu(_arg1, this.w_, this.h_);
            this.selected_.x = this.1mN;
            this.selected_.y = 0;
            addChild(this.selected_);
            this.selected_.addEventListener(MouseEvent.CLICK, this.0eJ);
            if (_arg1 != _local2)
            {
                dispatchEvent(new Event(Event.CHANGE));
            };
        }

        private function 0eJ(_arg1:MouseEvent):void{
            _arg1.stopImmediatePropagation();
            this.selected_.removeEventListener(MouseEvent.CLICK, this.0eJ);
            if (contains(this.selected_))
            {
                removeChild(this.selected_);
            };
            this.19N();
        }

        private function 19N():void{
            var _local1:int;
            var _local2:Point;
            var _local4:1Wu;
            _local1 = 0;
            _local2 = parent.localToGlobal(new Point(x, y));
            this.1IE.x = _local2.x;
            this.1IE.y = _local2.y;
            var _local3:int;
            while (_local3 < this.uz.length)
            {
                _local4 = new 1Wu(this.uz[_local3], this.w_, this.h_);
                _local4.addEventListener(MouseEvent.CLICK, this.onSelect);
                _local4.x = this.1mN;
                _local4.y = _local1;
                this.1IE.addChild(_local4);
                _local1 = (_local1 + _local4.h_);
                _local3++;
            };
            this.1IE.addEventListener(MouseEvent.ROLL_OUT, this.mf);
            stage.addChild(this.1IE);
        }

        private function mv():void{
            this.1IE.removeEventListener(MouseEvent.ROLL_OUT, this.mf);
            stage.removeChild(this.1IE);
        }

        private function onSelect(_arg1:MouseEvent):void{
            _arg1.stopImmediatePropagation();
            this.mv();
            var _local2:1Wu = (_arg1.target as 1Wu);
            this.setSelected(_local2.getValue());
        }

        private function mf(_arg1:MouseEvent):void{
            this.mv();
            this.setSelected(this.selected_.getValue());
        }


    }
}//package 1xS

