// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.0Nk

package _1aA{
    import flash.display.Sprite;
    import flash.display.Shape;
    import flash.display.Graphics;
    import com.company.assembleegameclient.screens.charrects.CharacterRectList;
    import WZ.0Te;

    public class 0Nk extends Sprite {

        public static const WIDTH:int = 760;
        public static const HEIGHT:int = 415;
        public static const Hi:int = 1;
        public static const kL:int = 2;

        public var 1zK:Sprite;

        public function 0Nk(_arg1:0Te, _arg2:int){
            var _local3:Shape;
            var _local4:Graphics;
            super();
            switch (_arg2)
            {
                case Hi:
                    this.1zK = new CharacterRectList();
                    break;
                case kL:
                    this.1zK = new 0dG(_arg1);
                    break;
                default:
                    this.1zK = new Sprite();
            };
            addChild(this.1zK);
            if (height > 400)
            {
                _local3 = new Shape();
                _local4 = _local3.graphics;
                _local4.beginFill(0);
                _local4.drawRect(0, 0, WIDTH, HEIGHT);
                _local4.endFill();
                addChild(_local3);
                mask = _local3;
            };
        }

        public function Gx(_arg1:Number):void{
            this.1zK.y = _arg1;
        }


    }
}//package _1aA

