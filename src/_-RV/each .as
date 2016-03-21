// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//RV.each

package RV{
    import flash.display.Sprite;
    import 0q4.Layout;
    import 0q4.Size;
    import _Jy._1HZ;

    import flash.display.DisplayObject;
    import flash.display.Shape;
    import flash.geom.Rectangle;
    import flash.display.Graphics;

    import 0q4.*;

    public class each  extends Sprite implements gc {

        private static const 8Y:Layout = new 0VZ();
        private static const 0lm:Size = new Size(0, 0);

        public const H7:_1HZ = new _1HZ();
        private const list:Vector.<DisplayObject> = new <DisplayObject>[];
        private const container:Sprite = new Sprite();
        private const Lo:Shape = new Shape();

        private var layout:Layout;
        private var size:Size;
        private var offset:int = 0;

        public function each (){
            this.layout = 8Y;
            this.size = 0lm;
            super();
            addChild(this.container);
            addChild(this.Lo);
        }

        public function 1vZ():Layout{
            return (this.layout);
        }

        public function Oq(_arg1:Layout):void{
            this.layout = ((_arg1) || (8Y));
            _arg1.layout(this.list, -(this.offset));
        }

        public function 02p():Size{
            return (this.size);
        }

        public function setSize(_arg1:Size):void{
            this.size = ((_arg1) || (0lm));
            this.0P-();
        }

        public function 1JD():Size{
            var _local1:Rectangle = this.container.getRect(this.container);
            return (new Size(_local1.width, _local1.height));
        }

        private function 0P-():void{
            var _local1:Graphics = this.Lo.graphics;
            _local1.clear();
            _local1.beginFill(0x9900FF);
            _local1.drawRect(0, 0, this.size.width, this.size.height);
            _local1.endFill();
            this.container.mask = this.Lo;
        }

        public function addItem(_arg1:DisplayObject):void{
            this.1M9(_arg1);
            this.1nE();
            this.H7.dispatch();
        }

        public function 0Xd(_arg1:int):DisplayObject{
            return (this.list[_arg1]);
        }

        public function setItems(_arg1:Vector.<DisplayObject>):void{
            this.00S();
            this.B(_arg1);
            this.offset = 0;
            this.1nE();
            this.H7.dispatch();
        }

        public function 0VQ():int{
            return (this.list.length);
        }

        private function 00S():void{
            var _local1:int = this.list.length;
            while (_local1--)
            {
                this.container.removeChild(this.list[_local1]);
            }
            this.list.length = 0;
        }

        private function B(_arg1:Vector.<DisplayObject>):void{
            var _local2:DisplayObject;
            for each (_local2 in _arg1)
            {
                this.1M9(_local2);
            }
        }

        private function 1M9(_arg1:DisplayObject):void{
            this.list.push(_arg1);
            this.container.addChild(_arg1);
        }

        public function 0HL(_arg1:int):void{
            this.offset = _arg1;
            this.1nE();
        }

        public function 0Ju():int{
            return (this.offset);
        }

        public function 1nE():void{
            this.layout.layout(this.list, -(this.offset));
        }


    }
}//package RV

