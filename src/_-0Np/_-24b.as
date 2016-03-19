// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Np.24b

package 0Np{
    import zD.05l;
    import _Jy._1HZ;
    import _CU._13j;
    import _1aA.Lz;
    import 2H.y;
    import com.company.rotmg.graphics.ScreenGraphic;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import __AS3__.vec.Vector;
    import 1n4.1cA;
    import AO.du;
    import flash.text.TextFieldAutoSize;
    import flash.filters.DropShadowFilter;
    import flash.display.Shape;

    public class 24b extends 05l {

        public var 1fV:_1HZ;
        public var back:_1HZ;
        private var X:_13j;
        private var 25z:Lz;
        private var 1PG:_13j;
        private var 0AD:y;

        public function 24b(){
            this.1fV = new _1HZ(String);
            this.back = new _1HZ();
            this.X = this.Kr();
            this.25z = this.5U();
            this.1PG = this.09h();
            super();
            addChild(this.08O());
            addChild(this.X);
            addChild(new ScreenGraphic());
            addChild(this.25z);
        }

        private function 13J(_arg1:MouseEvent):void{
            this.back.dispatch();
        }

        public function 0tG(_arg1:Vector.<String>):void{
            this.0AD = new y(_arg1);
            this.0AD.y = 100;
            this.0AD.addEventListener(Event.CHANGE, this.Ak);
            addChild(this.0AD);
            this.1PG.textChanged.addOnce(this.SM);
            addChild(this.1PG);
            this.1PG.y = (this.0AD.y + (this.0AD.Bn() / 2));
        }

        private function SM():void{
            this.0AD.x = ((800 / 2) - (((this.0AD.width + this.1PG.width) + 10) / 2));
            this.1PG.x = ((this.0AD.x + this.0AD.width) + 10);
        }

        public function setSelected(_arg1:String):void{
            ((this.0AD) && (this.0AD.setValue(_arg1)));
        }

        private function Ak(_arg1:Event):void{
            this.1fV.dispatch(this.0AD.getValue());
        }

        private function Kr():_13j{
            var _local1:_13j;
            _local1 = new _13j().setSize(36).setColor(0xFFFFFF);
            _local1.setBold(true);
            _local1.setStringBuilder(new 1cA().setParams(du.1KZ));
            _local1.setAutoSize(TextFieldAutoSize.CENTER);
            _local1.filters = [new DropShadowFilter(0, 0, 0)];
            _local1.x = ((800 / 2) - (_local1.width / 2));
            _local1.y = 16;
            return (_local1);
        }

        private function 5U():Lz{
            var _local1:Lz;
            _local1 = new Lz(du.16g, 36, false);
            _local1.setAutoSize(TextFieldAutoSize.CENTER);
            _local1.setVerticalAlign(_13j.MIDDLE);
            _local1.addEventListener(MouseEvent.CLICK, this.13J);
            _local1.x = 400;
            _local1.y = 550;
            return (_local1);
        }

        private function 09h():_13j{
            var _local1:_13j = new _13j().setSize(16).setColor(0xB3B3B3).setBold(true);
            _local1.setVerticalAlign(_13j.MIDDLE);
            _local1.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            _local1.setStringBuilder(new 1cA().setParams(du.Rs));
            return (_local1);
        }

        private function 08O():Shape{
            var _local1:Shape = new Shape();
            _local1.graphics.lineStyle(1, 0x5E5E5E);
            _local1.graphics.moveTo(0, 70);
            _local1.graphics.lineTo(800, 70);
            _local1.graphics.lineStyle();
            return (_local1);
        }

        public function clear():void{
            if (((this.0AD) && (contains(this.0AD))))
            {
                removeChild(this.0AD);
            }
        }


    }
}//package 0Np

