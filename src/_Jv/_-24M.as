// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Jv.24M

package Jv{
    import 1cI.1iz;
    import _0BB.Fu;
    import 1qg.0io;
    import tn.0ec;
    import kabam.rotmg.assets.model.0Ug;
    import flash.utils.Timer;
    import flash.events.TimerEvent;
    import tn.0dE;
    import tn.1iY;
    import com.company.util.1-f;
    import 1t6.ErrorDialog;

    public class 24M extends 1iz {

        [Inject]
        public var client:Fu;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var classes:0ec;
        public var accountId:String;
        public var charId:int;
        public var xml:XML;
        public var name:String;
        public var level:int;
        public var type:int;
        public var y9:String;
        public var killer:String;
        public var FY:int;
        public var 26-:0Ug;
        public var texture1:int;
        public var texture2:int;
        public var timer:Timer;
        private var for :Boolean = false;

        public function 24M(){
            this.timer = new Timer(150);
            super();
        }

        override protected function startTask():void{
            this.timer.addEventListener(TimerEvent.TIMER, this.0MD);
            this.timer.start();
        }

        private function 0MD(_arg1:TimerEvent):void{
            this.client.1Je(8);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("char/fame", this.yJ());
            this.timer.removeEventListener(TimerEvent.TIMER, this.0MD);
            this.timer.stop();
            this.timer = null;
        }

        private function yJ():Object{
            var _local1:Object = {}
            _local1.accountId = this.accountId;
            _local1.charId = (((this.accountId == "")) ? -1 : this.charId);
            return (_local1);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.kK(_arg2);
            } else
            {
                this.24U(_arg2);
            }
        }

        private function kK(_arg1:String):void{
            this.xml = new XML(_arg1);
            this.1tW();
            1d5(true);
        }

        private function 1tW():void{
            var charXml:XML;
            var char:0dE;
            var skin:1iY;
            charXml = this.xml.Char.(@id == charId)[0];
            this.name = charXml.Account.Name;
            this.level = charXml.Level;
            this.type = charXml.ObjectType;
            this.y9 = this.0yG();
            this.killer = ((this.xml.KilledBy) || (""));
            this.FY = this.xml.TotalFame;
            char = this.classes.7k(charXml.ObjectType);
            skin = ((charXml.hasOwnProperty("Texture")) ? char.0sP.15c(charXml.Texture) : char.0sP.0i1());
            this.26- = skin.26-;
            this.texture1 = ((charXml.hasOwnProperty("Tex1")) ? charXml.Tex1 : 0);
            this.texture2 = ((charXml.hasOwnProperty("Tex2")) ? charXml.Tex2 : 0);
        }

        private function 0yG():String{
            var _local1:Number = (Number(this.xml.CreatedOn) * 1000);
            var _local2:Date = new Date(_local1);
            var _local3:1-f = new 1-f();
            _local3.0hR = "MMMM D, YYYY";
            return (_local3.Xp(_local2));
        }

        private function 24U(_arg1:String):void{
            if (this.for  == false)
            {
                this.for  = true;
                this.timer = new Timer(600);
                this.timer.addEventListener(TimerEvent.TIMER, this.0MD);
                this.timer.start();
            } else
            {
                this.for  = false;
                this.0n2.dispatch(new ErrorDialog(_arg1));
            }
        }


    }
}//package Jv

