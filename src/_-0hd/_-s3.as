// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0hd.s3

package 0hd{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import _CU._13j;
    import OZ.1VE;
    import flash.events.MouseEvent;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import 0lB.*;

    public class s3 extends Sprite implements 156 {

        public static const HEIGHT:int = 28;

        public const Ou:_1HZ = new _1HZ();

        private var label:String;
        private var text:_13j;
        private var button:1VE;

        public function s3(_arg1:String){
            this.label = _arg1;
            this.0VJ();
            this.A5();
            addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
            this.text.textChanged.add(this.onTextChanged);
        }

        private function onTextChanged():void{
            this.text.y = ((this.button.height / 2) - (this.text.height / 2));
            this.Ou.dispatch();
        }

        public function getValue():String{
            return (this.label);
        }

        private function 0VJ():void{
            this.button = new 1VE();
            addChild(this.button);
        }

        private function A5():void{
            this.text = new _13j().setSize(18).setColor(0xFFFFFF).setBold(true);
            this.text.setStringBuilder(new 1cA().setParams(this.label));
            this.text.filters = [new DropShadowFilter(0, 0, 0)];
            this.text.x = (HEIGHT + 8);
            addChild(this.text);
        }

        public function setSelected(_arg1:Boolean):void{
            this.button.setSelected(_arg1);
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.text.setColor(16768133);
        }

        private function onRollOut(_arg1:MouseEvent):void{
            this.text.setColor(0xFFFFFF);
        }


    }
}//package 0hd

