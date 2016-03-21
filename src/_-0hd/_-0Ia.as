// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0hd.0Ia

package 0hd{
    import flash.display.Sprite;
    import 1PB.cO;

    import 0lB.P4;
    import flash.events.MouseEvent;
    import 0lB.156;
    import flash.events.Event;
    import flash.display.DisplayObject;
    import RV.qj;
    import 0q4.Layout;


    public class 0Ia extends Sprite {

        private const 1he:cO = new cO();

        private var 0aq:Vector.<String>;
        private var ZN:Vector.<s3>;
        private var group:P4;

        public function 0Ia(_arg1:Vector.<String>){
            this.0aq = _arg1;
            this.1he.complete.add(this.0OU);
            this.0mI();
            this.0OU();
            this.q6();
        }

        public function setSelected(_arg1:String):void{
            this.group.setSelected(_arg1);
        }

        public function 0NO():String{
            return (this.group.0NO().getValue());
        }

        private function 0mI():void{
            var _local1:int = this.0aq.length;
            this.ZN = new Vector.<s3>(_local1, true);
            var _local2:int;
            while (_local2 < _local1)
            {
                this.ZN[_local2] = this.0VJ(this.0aq[_local2]);
                _local2++;
            }
        }

        private function 0VJ(_arg1:String):s3{
            var _local2:s3 = new s3(_arg1);
            _local2.addEventListener(MouseEvent.CLICK, this.14J);
            this.1he.push(_local2.Ou);
            addChild(_local2);
            return (_local2);
        }

        private function 14J(_arg1:Event):void{
            var _local2:156 = (_arg1.currentTarget as 156);
            this.group.setSelected(_local2.getValue());
        }

        private function 0OU():void{
            var _local1:Vector.<DisplayObject> = this.1DV();
            var _local2:Layout = new qj();
            _local2.1Xp(20);
            _local2.layout(_local1);
        }

        private function 1DV():Vector.<DisplayObject>{
            var _local1:int = this.ZN.length;
            var _local2:Vector.<DisplayObject> = new <DisplayObject>[];
            var _local3:int;
            while (_local3 < _local1)
            {
                _local2[_local3] = this.ZN[_local3];
                _local3++;
            }
            return (_local2);
        }

        private function q6():void{
            var _local1:Vector.<156> = this.0Rd();
            this.group = new P4(_local1);
            this.group.setSelected(this.ZN[0].getValue());
        }

        private function 0Rd():Vector.<156>{
            var _local1:int = this.ZN.length;
            var _local2:Vector.<156> = new <156>[];
            var _local3:int;
            while (_local3 < _local1)
            {
                _local2[_local3] = this.ZN[_local3];
                _local3++;
            }
            return (_local2);
        }


    }
}//package 0hd

