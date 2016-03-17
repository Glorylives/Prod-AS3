// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Ux.0sE

package 0Ux{
    import flash.display.Sprite;
    import flash.events.MouseEvent;
    import flash.geom.Rectangle;
    import 0dW.*;

    public class 0sE extends Sprite implements 2-J {

        public static var 00g:Class = 0v7;

        private var 1Ql:Sprite;

        public function 0sE(){
            this.mx();
            this.1gH();
        }

        private function mx():void{
            addChild(new 00g());
        }

        private function 1gH():void{
            this.1Ql = new Sprite();
            this.1Ql.graphics.beginFill(0xFF0000, 0);
            this.1Ql.graphics.drawRect(0, 0, 30, 30);
            this.1Ql.graphics.endFill();
            this.1Ql.buttonMode = true;
            this.1Ql.x = 550;
            this.1Ql.y = 30;
            addEventListener(MouseEvent.CLICK, this.D2);
            addChild(this.1Ql);
        }

        private function D2(_arg1:MouseEvent):void{
            parent.removeChild(this);
        }

        public function resize(_arg1:Rectangle):void{
            x = ((_arg1.width - width) / 2);
            y = ((_arg1.height - height) / 2);
        }


    }
}//package 0Ux

