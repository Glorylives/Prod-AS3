// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//06v.0do

package 06v{
    import 16l.1p3;
    import flash.system.Security;
    import flash.net.LocalConnection;

    public class 0do {

        private const Eg:String = "localhost";
        private const my:Array = [1p3.Sq(-535, -682), "realmofthemadgodhrd.appspot.com", "realmofthemadgod.appspot.com"];
        private const 1cP:Array = [1p3.Sq(-534, -683), "rotmgtesting.appspot.com", "rotmghrdtesting.appspot.com"];
        private const 8t:Array = ["realmtesting2.appspot.com"];
        private const 0jo:Array = ["xlate.kabam.com"];
        private const 1I2:Array = 0do.my.AS3::concat(0do.1cP).AS3::concat(0do.0jo).AS3::concat(0do.8t);

        [Inject]
        public var client:FA;
        private var 17c:String;


        public function 26v():void{
            var _local1:String;
            for each (_local1 in this.1I2)
            {
                Security.allowDomain(_local1);
            };
        }

        public function 03R():Boolean{
            return (((this.client.LD()) || (this.1lO())));
        }

        public function 0tV():Boolean{
            var _local1:String = this.1UE();
            return (!((this.my.indexOf(_local1) == -1)));
        }

        private function 1lO():Boolean{
            var _local3:String;
            var _local1:String = this.1UE();
            var _local2 = (_local1 == this.Eg);
            for each (_local3 in this.1I2)
            {
                _local2 = ((_local2) || ((_local1 == _local3)));
            };
            return (_local2);
        }

        private function 1UE():String{
            return ((this.17c = ((this.17c) || (new LocalConnection().domain))));
        }


    }
}//package 06v

