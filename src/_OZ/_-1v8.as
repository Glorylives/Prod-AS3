// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//OZ.1v8

package OZ{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import RV.1Ii;
    import RV.each ;
    import 0q4.Size;
    import flash.display.DisplayObject;
    import __AS3__.vec.Vector;
    import 0q4.*;

    public class 1v8 extends Sprite implements gc {

        public static const 0yf:int = 2;
        public static const 1KI:int = (1EE.WIDTH + 0yf);

        public const VG:_1HZ = new _1HZ(Boolean);

        private var layout:1Ii;
        private var list:each ;
        private var scrollbar:1EE;
        private var isEnabled:Boolean = true;
        private var size:Size;

        public function 1v8(){
            this.Ab();
            this.0Lx();
            this.VB();
        }

        public function WI():Boolean{
            return (this.isEnabled);
        }

        public function a0(_arg1:Boolean):void{
            this.isEnabled = _arg1;
            this.scrollbar.a0(_arg1);
        }

        public function setSize(_arg1:Size):void{
            this.size = _arg1;
            if (this.0xf())
            {
                _arg1 = new Size((_arg1.width - 1KI), _arg1.height);
            }
            this.list.setSize(_arg1);
            this.15T();
        }

        public function 02p():Size{
            return (this.size);
        }

        public function 1Xp(_arg1:int):void{
            this.layout.1Xp(_arg1);
            this.list.1nE();
            this.15T();
        }

        public function addItem(_arg1:DisplayObject):void{
            this.list.addItem(_arg1);
        }

        public function setItems(_arg1:Vector.<DisplayObject>):void{
            this.list.setItems(_arg1);
        }

        public function 0Xd(_arg1:int):DisplayObject{
            return (this.list.0Xd(_arg1));
        }

        public function 0VQ():int{
            return (this.list.0VQ());
        }

        public function 2a():int{
            return (this.list.1JD().height);
        }

        private function Ab():void{
            this.layout = new 1Ii();
        }

        public function 0xf():Boolean{
            return (this.scrollbar.visible);
        }

        private function 0Lx():void{
            this.list = new each ();
            this.list.H7.add(this.15T);
            this.list.Oq(this.layout);
            addChild(this.list);
        }

        private function 15T():void{
            var _local3:int;
            var _local5:Boolean;
            var _local1:Size = this.list.02p();
            var _local2:int = _local1.height;
            _local3 = this.list.1JD().height;
            var _local4 = (_local3 > _local2);
            _local5 = !((this.scrollbar.visible == _local4));
            this.scrollbar.a0(false);
            this.scrollbar.visible = _local4;
            ((_local4) && (this.scrollbar.a0(true)));
            ((_local4) && (this.1Tl(_local2, _local3)));
            ((_local5) && (this.X5(_local4)));
        }

        private function X5(_arg1:Boolean):void{
            this.setSize(this.size);
            this.VG.dispatch(_arg1);
        }

        private function 1Tl(_arg1:int, _arg2:int):void{
            var _local3:int = (_arg1 * (_arg1 / _arg2));
            this.scrollbar.setSize(_local3, _arg1);
            this.scrollbar.x = (this.list.02p().width + 0yf);
        }

        private function VB():void{
            this.scrollbar = new 1EE();
            this.scrollbar.00a.add(this.22D);
            this.scrollbar.visible = false;
            addChild(this.scrollbar);
        }

        private function 22D(_arg1:Number):void{
            var _local2:int = (this.list.1JD().height - this.list.02p().height);
            this.list.0HL((_local2 * _arg1));
        }


    }
}//package OZ

