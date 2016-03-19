// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0av.0xZ

package 0av{
    import flash.display.Sprite;
    import _Jy._1HZ;
    import 0Fr.1da;
    import flash.display.Loader;
    import flash.events.Event;
    import flash.net.URLRequest;
    import _Jy._04t;
    import 1PV.*;

    public class 0xZ extends Sprite implements aN {

        private const QZ:_1HZ = new _1HZ();
        private const 10R:_1HZ = new _1HZ(Boolean);
        private const 0Zo:_1HZ = new _1HZ(uint, String, Boolean);

        [Inject]
        public var u3:1da;
        private var loader:Loader;
        private var  each;
        private var 19g:String;
        private var 1C2:String;


        public function load(_arg1:String):void{
            this.u3.info("LiveSteamApi load");
            addChild((this.loader = new Loader()));
            this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.vA);
            this.loader.load(new URLRequest(_arg1));
        }

        private function vA(_arg1:Event):void{
            this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this.vA);
            this. each = _arg1.target.content;
            this. each.addEventListener("STEAM_MICRO_TXN_AUTH", this.1wY);
            this.53.dispatch();
        }

        private function 1wY(_arg1):void{
            this.u3.debug("LiveSteamApi onSteamMicroTxnAuthEvent: {0}", [this.1C2]);
            var _local2:uint = uint(_arg1.appID);
            var _local3:String = String(_arg1.orderID);
            var _local4:Boolean = Boolean(_arg1.isAuthorized);
            this.0Zo.dispatch(_local2, _local3, _local4);
        }

        public function requestSessionTicket():void{
            this.u3.debug("LiveSteamApi requestSessionTicket");
            this. each.requestSessionTicket(this.4J);
        }

        private function 4J(_arg1:String):void{
            var _local2 = !((_arg1 == null));
            ((_local2) && ((this.1C2 = _arg1)));
            this.u3.debug("LiveSteamApi sessionTicket: {0}", [this.1C2]);
            this.1pr.dispatch(_local2);
        }

        public function 0JS():Object{
            var _local1:Object = {}
            _local1.steamid = (this.19g = ((this.19g) || (this. each.getSteamID())));
            _local1.sessionticket = this.1C2;
            return (_local1);
        }

        public function 0RA():String{
            return (this. each.getSteamID());
        }

        public function 0vz(_arg1:String, _arg2:int):void{
            this. each.setStatFromInt(_arg1, _arg2);
        }

        public function get 53():_1HZ{
            return (this.QZ);
        }

        public function get 1pr():_1HZ{
            return (this.10R);
        }

        public function get 1wq():_04t{
            return (this.0Zo);
        }

        public function getPersonaName():String{
            return (this. each.getPersonaName());
        }


    }
}//package 0av

