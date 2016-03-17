// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.253

package 0uE{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import flash.display.Shape;
    import 0gd.GTween;
    import flash.geom.ColorTransform;

    public class 253 extends Sprite {

        public const 0O-:_1HZ = new _1HZ(Boolean);
        public const 0zw:_1HZ = new _1HZ();
        private const i7:uint = 0xB3B3B3;
        private const 0oQ:uint = 1572859;
        private const 22p:uint = 0x565656;

        private var mR:Shape;
        private var 12k:Shape;
        private var 1C1:int = 0;
        public var 22s:int = -1;
        private var At:int = 0;
        private var 1wI:int = 0;

        public function 253(_arg1:int, _arg2:int){
            this.mR = new Shape();
            this.12k = new Shape();
            super();
            this.At = _arg1;
            this.1wI = _arg2;
            this.12k.graphics.beginFill(this.22p, 1);
            this.12k.graphics.drawRect(0, 0, _arg1, _arg2);
            addChild(this.12k);
            addChild(this.mR);
        }

        public function reset():void{
            this.22s = 0;
            this.mR.graphics.clear();
            this.mR.graphics.beginFill(this.i7, 1);
            this.mR.graphics.drawRect(0, 0, 1, this.1wI);
            this.mR.width = 1;
        }

        public function fill():void{
            if (this.22s == this.1C1)
            {
                this.reset();
                this.0zw.dispatch();
                return;
            };
            var _local1:Number = this.At;
            this.02J(this.0oQ);
            var _local2:GTween = new GTween(this.mR, 1, {width:_local1});
            _local2.onComplete = this.25a;
        }

        private function 25a(_arg1:GTween):void{
            this.0zw.dispatch();
        }

        public function 02J(_arg1:uint):void{
            var _local2:ColorTransform = this.mR.transform.colorTransform;
            _local2.color = _arg1;
            this.mR.transform.colorTransform = _local2;
        }

        public function 1gg(_arg1:int):void{
            this.1C1 = _arg1;
            this.3Z();
        }

        public function 11i(_arg1:int):void{
            var _local2:Number;
            if (this.22s == -1)
            {
                this.22s = _arg1;
                _local2 = this.0dR();
                this.mR.graphics.beginFill(this.i7, 1);
                this.mR.graphics.drawRect(0, 0, _local2, this.1wI);
            };
            this.22s = _arg1;
            this.3Z();
        }

        private function 3Z():void{
            var _local2:GTween;
            var _local1:int = this.0dR();
            if (((((!((this.22s == -1))) && (!((this.22s == 0))))) && (!((_local1 == Math.round(this.mR.width))))))
            {
                this.0O-.dispatch(true);
                this.02J(this.0oQ);
                _local2 = new GTween(this.mR, 2, {width:_local1});
                _local2.onComplete = this.0qP;
            };
        }

        private function 0dR():int{
            var _local1:int = ((this.22s * this.At) / this.1C1);
            return (((isNaN(_local1)) ? 1 : Math.round(Math.max(1, Math.min(this.At, _local1)))));
        }

        public function 0qP(_arg1:GTween):void{
            this.02J(this.i7);
            this.0O-.dispatch(false);
        }


    }
}//package 0uE

