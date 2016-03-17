// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//OZ.1EE

package OZ{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 0q4.*;

    public class 1EE extends Sprite implements 0DJ {

        public static const WIDTH:int = 20;
        public static const BEVEL:int = 4;
        public static const 1ss:int = 0;

        public const 0k3:0jb = new 0jb();
        public const 1eH:GX = new GX();

        private var 1lf:_1HZ;
        private var position:Number = 0;
        private var range:int;
        private var 14H:Number;
        private var isEnabled:Boolean = true;

        public function 1EE(){
            addChild(this.0k3);
            addChild(this.1eH);
            this.1TG();
        }

        public function get 00a():_1HZ{
            return ((this.1lf = ((this.1lf) || (new _1HZ(Number)))));
        }

        public function WI():Boolean{
            return (this.isEnabled);
        }

        public function a0(_arg1:Boolean):void{
            if (this.isEnabled != _arg1)
            {
                this.isEnabled = _arg1;
                if (_arg1)
                {
                    this.1TG();
                } else
                {
                    this.Z2();
                };
            };
        }

        private function 1TG():void{
            this.0k3.1TG();
            this.0k3.clicked.add(this.1vQ);
            this.1eH.1TG();
            this.1eH.4V.add(this.oU);
            this.1eH.l1.add(this.0DL);
        }

        private function Z2():void{
            this.0k3.Z2();
            this.0k3.clicked.remove(this.1vQ);
            this.1eH.Z2();
            this.1eH.4V.remove(this.oU);
            this.1eH.l1.remove(this.0DL);
        }

        public function setSize(_arg1:int, _arg2:int):void{
            this.1eH.rect.height = _arg1;
            this.0k3.rect.height = _arg2;
            this.range = ((_arg2 - _arg1) - (1ss * 2));
            this.14H = (1 / this.range);
            this.0k3.redraw();
            this.1eH.redraw();
            this.setPosition(this.1PK());
        }

        public function Fk():int{
            return (this.1eH.rect.height);
        }

        public function Lu():int{
            return (this.0k3.rect.height);
        }

        public function 1PK():Number{
            return (this.position);
        }

        public function setPosition(_arg1:Number):void{
            if (_arg1 < 0)
            {
                _arg1 = 0;
            } else
            {
                if (_arg1 > 1)
                {
                    _arg1 = 1;
                };
            };
            this.position = _arg1;
            this.1eH.y = (1ss + (this.range * this.position));
            ((this.1lf) && (this.1lf.dispatch(this.position)));
        }

        public function 0DL(_arg1:Number):void{
            var _local2:Number = (this.position + _arg1);
            this.setPosition(_local2);
        }

        private function oU(_arg1:int):void{
            this.setPosition(((_arg1 - 1ss) * this.14H));
        }

        private function 1vQ(_arg1:int):void{
            var _local2:int = this.1eH.rect.height;
            var _local3:int = (_arg1 - (_local2 * 0.5));
            var _local4:int = (this.0k3.rect.height - _local2);
            this.setPosition((_local3 / _local4));
        }


    }
}//package OZ

