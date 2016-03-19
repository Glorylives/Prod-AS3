// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0uE.0t8

package 0uE{
    import RV.each ;
    import 1PB.cO;
    import _Jy._1HZ;
    import RV.1Ii;
    import flash.display.DisplayObject;
    import __AS3__.vec.Vector;
    import flash.events.MouseEvent;
    import __AS3__.vec.*;

    public class 0t8 extends each  {

        private const 1he:cO = new cO();
        public const ready:_1HZ = 0t8.1he.complete;
        public const selected:_1HZ = new _1HZ(String);

        public function 0t8(_arg1:Array){
            Oq(this.Ab());
            setItems(this.Ly(_arg1));
            this.ready.addOnce(1nE);
        }

        private function Ab():1Ii{
            var _local1:1Ii = new 1Ii();
            _local1.1Xp(2);
            return (_local1);
        }

        private function Ly(_arg1:Array):Vector.<DisplayObject>{
            var _local2:Vector.<DisplayObject> = new Vector.<DisplayObject>();
            var _local3:int;
            while (_local3 < _arg1.length)
            {
                _local2.push(this.0bv(_arg1[_local3]));
                _local3++;
            }
            return (_local2);
        }

        private function 0bv(_arg1:Object):0Qx{
            var _local2:0Qx = new 0Qx(_arg1.category, _arg1.info);
            _local2.addEventListener(MouseEvent.CLICK, this.0eJ);
            this.1he.push(_local2.textChanged);
            return (_local2);
        }

        private function 0eJ(_arg1:MouseEvent):void{
            var _local2:0Qx = (_arg1.currentTarget as 0Qx);
            this.selected.dispatch(_local2.info);
        }


    }
}//package 0uE

