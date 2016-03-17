// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//static.ResurrectionView

package static{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 1t6.Dialog;
    import flash.display.BitmapData;
    import flash.display.Bitmap;
    import flash.filters.ColorMatrixFilter;
    import AO.du;
    import flash.events.Event;

    public class ResurrectionView extends Sprite {

        public const 0w-:_1HZ = new _1HZ(Sprite);
        public const closed:_1HZ = new _1HZ();
        private const x3:Number = 0;
        private const 0UM:Number = 0x3B3B3B;
        private const 1Af:Number = 300;
        private const Wu:Number = 400;

        private var JP:Dialog;


        public function init(_arg1:BitmapData):void{
            this.11y(_arg1);
            this.H8();
        }

        private function 11y(_arg1:BitmapData):void{
            var _local4:Bitmap;
            var _local2:Array = [0.33, 0.33, 0.33, 0, 0, 0.33, 0.33, 0.33, 0, 0, 0.33, 0.33, 0.33, 0, 0, 0.33, 0.33, 0.33, 1, 0];
            var _local3:ColorMatrixFilter = new ColorMatrixFilter(_local2);
            _local4 = new Bitmap(_arg1);
            _local4.filters = [_local3];
            addChild(_local4);
        }

        public function H8():void{
            this.JP = new Dialog(du.Pi, du.1YR, du.1Ma, null, null);
            this.JP.addEventListener(Dialog.LEFT_BUTTON, this.onButtonClick);
            this.0w-.dispatch(this.JP);
        }

        private function onButtonClick(_arg1:Event):void{
            this.closed.dispatch();
        }


    }
}//package static

