// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0hd.0LD

package 0hd{
    import flash.display.Sprite;
    import com.company.assembleegameclient.util.offer.Offers;
    import jH.0eh;
    import __AS3__.vec.Vector;
    import 0lB.P4;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.util.offer.Offer;
    import 0lB.156;
    import flash.display.DisplayObject;
    import RV.1Ii;
    import 0q4.Layout;
    import __AS3__.vec.*;

    public class 0LD extends Sprite {

        private var Qo:Offers;
        private var config:0eh;
        private var 1hJ:Vector.<T4>;
        private var group:P4;

        public function 0LD(_arg1:Offers, _arg2:0eh){
            this.Qo = _arg1;
            this.config = _arg2;
            this.0sL();
            this.0oo();
            this.q6();
        }

        public function 0FV():T4{
            return ((this.group.0NO() as T4));
        }

        private function 0sL():void{
            var _local1:int = this.Qo.offerList.length;
            this.1hJ = new Vector.<T4>(_local1, true);
            var _local2:int;
            while (_local2 < _local1)
            {
                this.1hJ[_local2] = this.1C5(this.Qo.offerList[_local2]);
                _local2++;
            }
        }

        private function 1C5(_arg1:Offer):T4{
            var _local2:T4 = new T4(_arg1, this.config);
            _local2.addEventListener(MouseEvent.CLICK, this.14J);
            addChild(_local2);
            return (_local2);
        }

        private function 14J(_arg1:MouseEvent):void{
            var _local2:156 = (_arg1.currentTarget as 156);
            this.group.setSelected(_local2.getValue());
        }

        private function 0oo():void{
            var _local1:Vector.<DisplayObject> = this.Rk();
            var _local2:Layout = new 1Ii();
            _local2.1Xp(5);
            _local2.layout(_local1);
        }

        private function Rk():Vector.<DisplayObject>{
            var _local1:int = this.1hJ.length;
            var _local2:Vector.<DisplayObject> = new <DisplayObject>[];
            var _local3:int;
            while (_local3 < _local1)
            {
                _local2[_local3] = this.1hJ[_local3];
                _local3++;
            }
            return (_local2);
        }

        private function q6():void{
            var _local1:Vector.<156> = this.0Rd();
            this.group = new P4(_local1);
            this.group.setSelected(this.1hJ[0].getValue());
        }

        private function 0Rd():Vector.<156>{
            var _local1:int = this.1hJ.length;
            var _local2:Vector.<156> = new <156>[];
            var _local3:int;
            while (_local3 < _local1)
            {
                _local2[_local3] = this.1hJ[_local3];
                _local3++;
            }
            return (_local2);
        }

        public function 1nw(_arg1:Boolean):void{
            var _local2:int = this.1hJ.length;
            while (_local2--)
            {
                this.1hJ[_local2].showBonus(_arg1);
            }
        }


    }
}//package 0hd

