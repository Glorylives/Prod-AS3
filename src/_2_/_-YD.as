// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.YD

package 2--{
    import flash.display.Sprite;
    import OZ.1v8;
    import 0q4.Size;
    import __AS3__.vec.Vector;
    import flash.display.DisplayObject;
    import __AS3__.vec.*;

    public class YD extends Sprite {

        public var list:1v8;
        private var size:Size;
        private var 0d6:Sprite;
        private var 0l6:Vector.<DisplayObject>;
        private var 1YB:Array;
        private var 0TY:int;
        private var padding:int;
        private var 24d:Array;
        private var 1yx:int;

        public function YD(){
            this.list = new 1v8();
            super();
        }

        public function setSize(_arg1:Size):void{
            this.size = _arg1;
            this.list.setSize(_arg1);
            addChild(this.list);
        }

        public function 1Xp(_arg1:int):void{
            this.padding = _arg1;
            this.list.1Xp(_arg1);
        }

        public function setItems(_arg1:Vector.<08G>):void{
            var _local2:DisplayObject;
            this.1Vl();
            for each (_local2 in _arg1)
            {
                this.addItem(_local2);
            }
            this.list.setItems(this.0l6);
            if (!_arg1.length)
            {
                return;
            }
            var _local3:DisplayObject = _arg1[0];
            this.1yx = (this.08() / _local3.width);
        }

        public function 02p():Size{
            return (this.size);
        }

        public function um():Array{
            return (this.1YB);
        }

        public function getItem(_arg1:int):DisplayObject{
            return (this.1YB[_arg1]);
        }

        private function 1Vl():void{
            this.24d = [];
            this.1YB = [];
            this.0l6 = new Vector.<DisplayObject>();
            this.0TY = 0;
            this.1K2();
        }

        private function addItem(_arg1:DisplayObject):void{
            this.position(_arg1);
            this.0d6.addChild(_arg1);
            this.1YB.push(_arg1);
            this.24d[(this.24d.length - 1)].push(_arg1);
        }

        private function position(_arg1:DisplayObject):void{
            if (this.Xl(_arg1))
            {
                _arg1.x = 0;
                this.1K2();
            } else
            {
                this.1mU(_arg1);
            }
            this.0TY = (_arg1.x + _arg1.width);
            this.0TY = (this.0TY + this.padding);
        }

        private function 1K2():void{
            this.0d6 = new Sprite();
            this.0l6.push(this.0d6);
            this.24d.push([]);
        }

        private function 1mU(_arg1:DisplayObject):void{
            _arg1.x = this.0TY;
        }

        private function Xl(_arg1:DisplayObject):Boolean{
            return (((this.0TY + _arg1.width) > this.08()));
        }

        private function 08():int{
            return ((this.size.width - 1v8.1KI));
        }

        public function 0db():DisplayObject{
            if (this.1YB.length)
            {
                return (this.1YB[0]);
            }
            return (null);
        }

        public function 1PR():DisplayObject{
            var _local1:Array;
            if (this.24d.length)
            {
                _local1 = this.24d[0];
                return (_local1[(this.1yx - 1)]);
            }
            return (null);
        }

        public function 1q6():DisplayObject{
            var _local1:Array;
            if (this.24d.length >= 2)
            {
                _local1 = this.24d[(this.24d.length - 1)];
                return (_local1[0]);
            }
            return (null);
        }

        public function 1Lf():DisplayObject{
            var _local1:Array;
            if (this.24d.length >= 2)
            {
                _local1 = this.24d[(this.24d.length - 1)];
                return (_local1[(this.1yx - 1)]);
            }
            return (null);
        }


    }
}//package 2--

