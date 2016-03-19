// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Wc.uZ

package Wc{
    import flash.display.Sprite;
    import flash.display.Shape;
    import 1t6.Dialog;
    import _0BB.Fu;
    import flash.display.Graphics;
    import _04_._1JZ;
    import aq.Account;
    import flash.events.Event;
    import com.company.util.1X3;

    public class uZ extends Sprite {

        private var j7:Boolean;
        private var PD:Shape;
        private var 1wE:Dialog;
        private var text_:String;
        private var 17G:fd;
        private var 2-L:0bO;
        private var client:Fu;

        public function uZ(_arg1:Boolean){
            this.j7 = _arg1;
            this.PD = new Shape();
            var _local2:Graphics = this.PD.graphics;
            _local2.clear();
            _local2.beginFill(0, 0.8);
            _local2.drawRect(0, 0, 800, 600);
            _local2.endFill();
            addChild(this.PD);
            this.load();
        }

        private function load():void{
            var _local1:Account = _1JZ.0JF().getInstance(Account);
            this.client = _1JZ.0JF().getInstance(Fu);
            this.client.complete.addOnce(this.0Gw);
            this.client.sendRequest("/guild/getBoard", _local1.1Y());
            this.1wE = new Dialog(null, "Loading...", null, null, null);
            addChild(this.1wE);
            this.PD.visible = false;
        }

        private function 0Gw(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.1iX(_arg2);
            } else
            {
                this.reportError(_arg2);
            }
        }

        private function 1iX(_arg1:String):void{
            this.PD.visible = true;
            removeChild(this.1wE);
            this.1wE = null;
            this.text_ = _arg1;
            this.show();
        }

        private function show():void{
            this.17G = new fd(this.text_, this.j7);
            this.17G.addEventListener(Event.COMPLETE, this.Wh);
            this.17G.addEventListener(Event.CHANGE, this.Ry);
            addChild(this.17G);
        }

        private function reportError(_arg1:String):void{
        }

        private function Wh(_arg1:Event):void{
            parent.removeChild(this);
        }

        private function Ry(_arg1:Event):void{
            removeChild(this.17G);
            this.17G = null;
            this.2-L = new 0bO(this.text_);
            this.2-L.addEventListener(Event.CANCEL, this.qc);
            this.2-L.addEventListener(Event.COMPLETE, this.1cq);
            addChild(this.2-L);
        }

        private function qc(_arg1:Event):void{
            removeChild(this.2-L);
            this.2-L = null;
            this.show();
        }

        private function 1cq(_arg1:Event):void{
            var _local2:Account = _1JZ.0JF().getInstance(Account);
            var _local3:Object = {board:this.2-L.1UU()}
            1X3.1J7(_local3, _local2.1Y());
            this.client = _1JZ.0JF().getInstance(Fu);
            this.client.complete.addOnce(this.0zM);
            this.client.sendRequest("/guild/setBoard", _local3);
            removeChild(this.2-L);
            this.2-L = null;
            this.1wE = new Dialog(null, "Saving...", null, null, null);
            addChild(this.1wE);
            this.PD.visible = false;
        }

        private function 0zM(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.0Sx(_arg2);
            } else
            {
                this.0jf(_arg2);
            }
        }

        private function 0Sx(_arg1:String):void{
            this.PD.visible = true;
            removeChild(this.1wE);
            this.1wE = null;
            this.text_ = _arg1;
            this.show();
        }

        private function 0jf(_arg1:String):void{
        }


    }
}//package Wc

