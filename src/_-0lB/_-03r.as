// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0lB.03r

package 0lB{
    import flash.display.Shape;

    public class 03r extends Shape {

        private var k4:int;
        private var _height:int;
        private var _color:int;


        public function setSize(_arg1:int, _arg2:int):void{
            this.k4 = _arg1;
            this._height = _arg2;
            this.tC();
        }

        public function setColor(_arg1:int):void{
            this._color = _arg1;
            this.tC();
        }

        private function tC():void{
            graphics.clear();
            graphics.beginFill(this._color);
            graphics.drawRect(0, 0, this.k4, this._height);
            graphics.endFill();
        }


    }
}//package 0lB

