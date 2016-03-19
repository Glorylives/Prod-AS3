// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.1Ek

package 1PB{
    import 1uF.1Mf;
    import 0xo.lZ;
    import 1ay.0SL;
    import eC.0a9;
    import flash.display.Sprite;
    import eC.1HE;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.objects.Player;

    public class 1Ek extends 1Mf {

        [Inject]
        public var view:yi;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var II:0SL;
        [Inject]
        public var uk:0a9;
        [Inject]
        public var yF:bu;
        private var stats:Sprite;


        override public function initialize():void{
            this.II.addOnce(this.03N);
            this.II.add(this.0G0);
            this.uk.add(this.1y1);
        }

        private function 1y1(_arg1:1HE):void{
            this.stats = _arg1;
            this.view.addChild(_arg1);
            _arg1.x = (this.view.mouseX - (_arg1.width / 2));
            _arg1.y = (this.view.mouseY - (_arg1.height / 2));
            this.0us(_arg1);
        }

        private function 0us(_arg1:1HE):void{
            _arg1.startDrag();
            _arg1.addEventListener(MouseEvent.MOUSE_UP, this.0FN);
        }

        private function 0FN(_arg1:MouseEvent):void{
            var _local2:Sprite = 1HE(_arg1.target);
            this.wc(_local2);
            if (_local2.hitTestObject(this.view.1Ke))
            {
                this.02P(_local2);
            }
        }

        private function 02P(_arg1:Sprite):void{
            this.yF.dispatch();
            this.view.removeChild(_arg1);
            _arg1.stopDrag();
        }

        private function wc(_arg1:Sprite):void{
            _arg1.removeEventListener(MouseEvent.MOUSE_UP, this.0FN);
            _arg1.addEventListener(MouseEvent.MOUSE_DOWN, this.0cb);
            _arg1.stopDrag();
        }

        private function 0cb(_arg1:MouseEvent):void{
            var _local2:Sprite = Sprite(_arg1.target);
            this.stats = _local2;
            _local2.removeEventListener(MouseEvent.MOUSE_DOWN, this.0cb);
            _local2.addEventListener(MouseEvent.MOUSE_UP, this.0FN);
            _local2.startDrag();
        }

        override public function destroy():void{
            this.II.remove(this.0G0);
            this.uk.remove(this.1y1);
            if (((this.stats) && (this.stats.hasEventListener(MouseEvent.MOUSE_DOWN))))
            {
                this.stats.removeEventListener(MouseEvent.MOUSE_DOWN, this.0cb);
            }
        }

        private function 0G0(_arg1:Player):void{
            this.view.draw();
        }

        private function 03N(_arg1:Player):void{
            this.view.1K1(this.11u.ja);
        }


    }
}//package 1PB

