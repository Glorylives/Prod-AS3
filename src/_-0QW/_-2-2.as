// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.2-2

package 0QW{
    import flash.display.Sprite;
    import WZ.0Te;
    import 0y3.Server;
    import com.company.assembleegameclient.game.GameSprite;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;
    import F7.19s;
    import F7.0BP;

    public class 2-2 extends Sprite {

        private var model:0Te;
        private var server:Server;
        private var 1Ln:25Y;
        private var 12b:GameSprite;

        public function 2-2(){
            this.1Ln = new 25Y();
            this.1Ln.addEventListener(61.6Y, this.0-I);
            addChild(this.1Ln);
        }

        public function initialize(_arg1:0Te, _arg2:Server):void{
            this.model = _arg1;
            this.server = _arg2;
        }

        private function 0-I(_arg1:61):void{
            removeChild(this.1Ln);
            this.12b = new GameSprite(this.server, Parameters.1qH, false, this.model.sN()[0].charId(), -1, null, this.model, _arg1.cq, false);
            this.12b.isEditor = true;
            this.12b.addEventListener(Event.COMPLETE, this.pt);
            this.12b.addEventListener(19s.RECONNECT, this.pt);
            this.12b.addEventListener(0BP.DEATH, this.pt);
            addChild(this.12b);
        }

        private function pt(_arg1:Event):void{
            this.jT();
            addChild(this.1Ln);
        }

        private function Kz(_arg1:Event):void{
            this.jT();
            addChild(this.1Ln);
        }

        private function jT():void{
            this.12b.removeEventListener(Event.COMPLETE, this.pt);
            this.12b.removeEventListener(19s.RECONNECT, this.pt);
            this.12b.removeEventListener(0BP.DEATH, this.pt);
            removeChild(this.12b);
            this.12b = null;
        }


    }
}//package 0QW

