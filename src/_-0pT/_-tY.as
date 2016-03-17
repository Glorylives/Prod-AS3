// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0pT.tY

package 0pT{
    import flash.display.Sprite;
    import flash.display.DisplayObject;

    public class tY extends Sprite {

        public var 09D:DisplayObject;

        public function tY(_arg1:DisplayObject, _arg2:Number, _arg3:Number){
            this.09D = _arg1;
            addChild(_arg1);
            this.width = _arg2;
            this.height = _arg3;
        }

        public function setXPos(_arg1:Number):void{
            this.x = (_arg1 - (this.width / 2));
        }

        public function setYPos(_arg1:Number):void{
            this.y = (_arg1 - (this.height / 2));
        }

        public function getCenterX():Number{
            return ((this.x + (this.width / 2)));
        }

        public function getCenterY():Number{
            return ((this.y + (this.height / 2)));
        }


    }
}//package 0pT

