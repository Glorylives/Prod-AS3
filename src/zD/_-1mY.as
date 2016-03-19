// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//zD.1mY

package zD{
    import flash.display.Sprite;
    import com.company.rotmg.graphics.ScreenGraphic;
    import _1aA.Lz;
    import flash.geom.Rectangle;

    public class 1mY extends Sprite {

        private static const 1OD:Number = 550;
        private static const 1iT:int = 20;
        public static const CENTER:String = "CENTER";
        public static const RIGHT:String = "RIGHT";
        public static const LEFT:String = "LEFT";

        private const 1Wm:Array = [];
        private const 1ll:Array = [];

        private var 1fw:ScreenGraphic;

        public function 1mY(){
            this.1A-();
        }

        private function 1A-():void{
            this.1fw = new ScreenGraphic();
            addChild(this.1fw);
        }

        public function 0J-(_arg1:Lz, _arg2:String):void{
            this.1fw.addChild(_arg1);
            switch (_arg2)
            {
                case CENTER:
                    this.1Wm[0] = (this.1ll[0] = _arg1);
                    _arg1.x = (this.1fw.width / 2);
                    _arg1.y = 1OD;
                    return;
                case LEFT:
                    this.18K(this.1Wm[(this.1Wm.length - 1)], _arg1);
                    this.1Wm.push(_arg1);
                    _arg1.n4.add(this.0Vy);
                    return;
                case RIGHT:
                    this.1BW(this.1ll[(this.1ll.length - 1)], _arg1);
                    this.1ll.push(_arg1);
                    _arg1.n4.add(this.1DE);
                    return;
            }
        }

        private function 0Vy():void{
            var _local1:int = 1;
            while (_local1 < this.1Wm.length)
            {
                this.18K(this.1Wm[(_local1 - 1)], this.1Wm[_local1]);
                _local1++;
            }
        }

        private function 18K(_arg1:Lz, _arg2:Lz):void{
            var _local3:Rectangle = _arg1.getBounds(_arg1);
            var _local4:Rectangle = _arg2.getBounds(_arg2);
            _arg2.x = (((_arg1.x + _local3.left) - _local4.right) - 1iT);
            _arg2.y = 1OD;
        }

        private function 1DE():void{
            var _local1:int = 1;
            while (_local1 < this.1ll.length)
            {
                this.1BW(this.1ll[(_local1 - 1)], this.1ll[_local1]);
                _local1++;
            }
        }

        private function 1BW(_arg1:Lz, _arg2:Lz):void{
            var _local3:Rectangle = _arg1.getBounds(_arg1);
            var _local4:Rectangle = _arg2.getBounds(_arg2);
            _arg2.x = (((_arg1.x + _local3.right) - _local4.left) + 1iT);
            _arg2.y = 1OD;
        }


    }
}//package zD

