// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//oa.0oH

package oa{
    import flash.display.Sprite;
    import flash.geom.ColorTransform;
    import _Jy._1HZ;
    import flash.display.Bitmap;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import flash.events.MouseEvent;

    public class 0oH extends Sprite {

        private const 11h:ColorTransform = new ColorTransform(0.5, 0.5, 0.5);
        private const 143:ColorTransform = new ColorTransform(1, 1, 1);
        public const 0jT:_1HZ = new _1HZ(int);

        private var zoomOut:Sprite;
        private var zoomIn:Sprite;
        private var 17X:int;
        private var Cj:int;

        public function 0oH(){
            this.Cj = 0;
            this.Kw();
            this.1Rw();
            this.1E9();
        }

        public function 0pl():int{
            return (this.Cj);
        }

        public function 10C(_arg1:int):int{
            if (this.17X == 0)
            {
                return (this.Cj);
            }
            if (_arg1 < 0)
            {
                _arg1 = 0;
            } else
            {
                if (_arg1 >= (this.17X - 1))
                {
                    _arg1 = (this.17X - 1);
                }
            }
            this.Cj = _arg1;
            this.1E9();
            return (this.Cj);
        }

        public function 1ZR(_arg1:int):int{
            this.17X = _arg1;
            if (this.Cj >= this.17X)
            {
                this.Cj = (this.17X - 1);
            }
            this.1E9();
            return (this.17X);
        }

        private function Kw():void{
            var _local2:Bitmap;
            var _local1:BitmapData = AssetLibrary.1JR("lofiInterface", 54);
            _local2 = new Bitmap(_local1);
            _local2.scaleX = 2;
            _local2.scaleY = 2;
            this.zoomOut = new Sprite();
            this.zoomOut.x = 0;
            this.zoomOut.y = 4;
            this.zoomOut.addChild(_local2);
            this.zoomOut.addEventListener(MouseEvent.CLICK, this.09e);
            addChild(this.zoomOut);
        }

        private function 1Rw():void{
            var _local2:Bitmap;
            var _local1:BitmapData = AssetLibrary.1JR("lofiInterface", 55);
            _local2 = new Bitmap(_local1);
            _local2.scaleX = 2;
            _local2.scaleY = 2;
            this.zoomIn = new Sprite();
            this.zoomIn.x = 0;
            this.zoomIn.y = 14;
            this.zoomIn.addChild(_local2);
            this.zoomIn.addEventListener(MouseEvent.CLICK, this.0qZ);
            addChild(this.zoomIn);
        }

        private function 09e(_arg1:MouseEvent):void{
            _arg1.stopPropagation();
            if (this.1Ro())
            {
                this.0jT.dispatch(--this.Cj);
                this.zoomOut.transform.colorTransform = ((this.1Ro()) ? this.143 : this.11h);
            }
        }

        private function 1Ro():Boolean{
            return ((this.Cj > 0));
        }

        private function 0qZ(_arg1:MouseEvent):void{
            _arg1.stopPropagation();
            if (this.XE())
            {
                this.0jT.dispatch(++this.Cj);
                this.zoomIn.transform.colorTransform = ((this.XE()) ? this.143 : this.11h);
            }
        }

        private function XE():Boolean{
            return ((this.Cj < (this.17X - 1)));
        }

        private function 1E9():void{
            this.zoomIn.transform.colorTransform = ((this.XE()) ? this.143 : this.11h);
            this.zoomOut.transform.colorTransform = ((this.1Ro()) ? this.143 : this.11h);
        }


    }
}//package oa

