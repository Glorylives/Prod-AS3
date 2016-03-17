// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1yL.OK

package 1yL{
    import flash.display.Sprite;
    import _CU._13j;
    import 1aj.1MB;
    import 1n4.1WS;

    public class OK extends Sprite {

        private var _textField:_13j;
        private var 0Qs:1MB;

        public function OK(_arg1:_13j){
            this.0Qs = new 1MB();
            super();
            this.0XS(_arg1);
        }

        private function 0XS(_arg1:_13j):void{
            addChild((this._textField = _arg1));
        }

        public function update(_arg1:Number):void{
            this._textField.setStringBuilder(new 1WS(this.0Qs.1-8(_arg1)));
        }


    }
}//package 1yL

