// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//TN.PackageOfferDialog

package TN{
    import flash.display.Sprite;
    import flash.display.DisplayObject;
    import _CU._13j;
    import _Jy._1HZ;
    import 19Z.0Rq;
    import 0wP.kM;
    import flash.geom.Rectangle;
    import 19Z.1ZG;
    import 0uE.KC;
    import com.company.assembleegameclient.ui.1nN;
    import AO.du;
    import flash.text.TextFieldAutoSize;
    import flash.events.MouseEvent;
    import flash.events.IOErrorEvent;
    import flash.events.Event;
    import flash.net.URLRequest;
    import 1n4.1WS;
    import 0dW.*;

    public class PackageOfferDialog extends Sprite implements 2-J {

        const 5v:Number = 6;
        const 266:Number = 6;
        const 17r:Number = 16;
        const fontSize:int = 27;
        private const 0Eh:DisplayObject = PackageOfferDialog.1M5();
        private const buyNow:Sprite = PackageOfferDialog.Fw();
        private const title:_13j = PackageOfferDialog.Kr();
        private const 1tf:Sprite = PackageOfferDialog.1gH();

        public var ready:_1HZ;
        public var buy:_1HZ;
        public var close:_1HZ;
        var loader:0Rq;
        var 0XQ:0eN;
        var image:DisplayObject;
        private var ww:kM;
        private var 0KZ:Rectangle;

        public function PackageOfferDialog(){
            this.ready = new _1HZ();
            this.buy = new _1HZ();
            this.close = new _1HZ();
            this.loader = new 1ZG();
            this.0XQ = new 0eN();
            this.0KZ = new Rectangle();
            super();
        }

        private function 1M5():DisplayObject{
            var _local1:DisplayObject = new XL();
            addChild(_local1);
            return (_local1);
        }

        private function 1gH():Sprite{
            return (new KC());
        }

        private function Fw():1nN{
            var _local1:1nN = new 1nN(16, du.152);
            return (_local1);
        }

        private function Kr():_13j{
            var _local1:_13j = new _13j().setSize(this.fontSize).setColor(0xB3B3B3);
            _local1.y = (this.5v + 5);
            _local1.setAutoSize(TextFieldAutoSize.CENTER);
            return (_local1);
        }

        public function setPackage(_arg1:kM):PackageOfferDialog{
            removeChild(this.0Eh);
            this.ww = _arg1;
            this.0wY(this.ww.bz);
            return (this);
        }

        public function 0Dy():kM{
            return (this.ww);
        }

        private function onMouseUp(_arg1:MouseEvent):void{
            this.1tf.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            this.close.dispatch();
        }

        private function 0wY(_arg1:String):void{
            ((this.loader) && (this.loader.unload()));
            this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
            this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.onComplete);
            this.loader.load(new URLRequest(_arg1));
        }

        public function destroy():void{
            this.loader.unload();
        }

        private function onIOError(_arg1:IOErrorEvent):void{
            this.IZ();
            this.06R(new 4K());
            this.ready.dispatch();
        }

        private function onComplete(_arg1:Event):void{
            this.IZ();
            this.06R(this.loader);
            this.ready.dispatch();
        }

        private function 06R(_arg1:DisplayObject):void{
            this.setImage(_arg1);
            addChild(this.title);
            this.ry();
            this.16I();
            this.W1();
            this.setTitle(this.ww.name);
            this.0zh(this.ww.price);
        }

        private function IZ():void{
            this.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
            this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this.onComplete);
        }

        private function W1():void{
            this.0XQ.init();
            addChild(this.0XQ);
            this.0XQ.x = (this.buyNow.x - 16);
            this.0XQ.y = (this.buyNow.y + (this.buyNow.height / 2));
        }

        private function 16I():void{
            addChild(this.buyNow);
            this.buyNow.x = ((this.image.width / 2) - (this.buyNow.width / 2));
            this.buyNow.y = (((this.image.height - this.buyNow.height) - this.17r) - 4);
            this.buyNow.addEventListener(MouseEvent.MOUSE_UP, this.0Xf);
        }

        private function 0Xf(_arg1:Event):void{
            this.buyNow.removeEventListener(MouseEvent.MOUSE_UP, this.0Xf);
            this.buy.dispatch();
        }

        private function ry():void{
            addChild(this.1tf);
            this.1tf.x = ((this.image.width - (this.1tf.width * 2)) - this.266);
            this.1tf.y = (this.5v + 5);
            this.1tf.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        }

        private function setImage(_arg1:DisplayObject):void{
            ((this.image) && (removeChild(this.image)));
            this.image = _arg1;
            ((this.image) && (addChild(this.image)));
            this.center();
        }

        private function center():void{
            x = ((this.0KZ.width - width) / 2);
            y = ((this.0KZ.height - height) / 2);
        }

        private function setTitle(_arg1:String):void{
            this.title.setStringBuilder(new 1WS(_arg1));
            this.title.x = (this.image.width / 2);
        }

        private function 0zh(_arg1:int):void{
            this.0XQ.0zh(_arg1);
        }

        public function resize(_arg1:Rectangle):void{
            this.0KZ = _arg1;
            this.center();
        }


    }
}//package TN

