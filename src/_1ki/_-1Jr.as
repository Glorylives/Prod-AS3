// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1ki.1Jr

package 1ki{
    import flash.display.Sprite;
    import 0ud.Z8;
    import 1cs.nu;
    import 0Fr.1da;
    import _Jy._1HZ;
    import flash.display.Loader;
    import flash.system.Security;
    import flash.events.Event;
    import flash.net.URLRequest;

    public class 1Jr extends Sprite implements 0e0 {

        [Inject]
        public var local:Z8;
        [Inject]
        public var 1tl:nu;
        [Inject]
        public var u3:1da;
        private var QZ:_1HZ;
        private var 0tM:_1HZ;
        private var loader:Loader;
        private var  each;

        public function 1Jr(){
            this.QZ = new _1HZ();
            this.0tM = new _1HZ(Object);
        }

        public function load(_arg1:String):void{
            Security.allowDomain(_arg1);
            this.u3.info("kongregate api loading");
            addChild((this.loader = new Loader()));
            this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.vA);
            this.loader.load(new URLRequest(_arg1));
        }

        private function vA(_arg1:Event):void{
            this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this.vA);
            this. each = _arg1.target.content;
            this. each.services.connect();
            this.0Dh();
            this.53.dispatch();
            this.u3.info("kongregate api loaded");
        }

        private function 0Dh():void{
            if (this. each.services.isGuest())
            {
                this.u3.info("kongregate guest detected - listening for external login");
                this. each.services.addEventListener("login", this.0MU);
            }
        }

        private function 0MU(_arg1:Event):void{
            this.u3.info("external login from kongregate detected");
            this.1tl.dispatch();
        }

        public function get 53():_1HZ{
            return (this.QZ);
        }

        public function 1cv():void{
            this.u3.info("showRegistrationBox request sent to kongregate");
            this. each.services.showRegistrationBox();
        }

        public function isGuest():Boolean{
            return (this. each.services.isGuest());
        }

        public function 0To():Object{
            var _local1:Object = {}
            _local1.userId = this. each.services.getUserId();
            _local1.username = this. each.services.getUsername();
            _local1.gameAuthToken = this. each.services.getGameAuthToken();
            return (_local1);
        }

        public function 0vz(_arg1:String, _arg2:int):void{
            this. each.stats.submit(_arg1, _arg2);
        }

        public function j2():String{
            return (this. each.services.getUsername());
        }

        public function getUserId():String{
            return (this. each.services.getUserId());
        }

        public function purchaseItems(_arg1:Object):void{
            this. each.mtx.purchaseItems([_arg1], this.Ul);
        }

        private function Ul(_arg1:Object):void{
            this.0tM.dispatch(_arg1);
        }

        public function get 1oG():_1HZ{
            return (this.0tM);
        }


    }
}//package 1ki

