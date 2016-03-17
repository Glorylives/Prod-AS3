// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0T7.0mF

package 0T7{
    import 16l.1p3;
    import flash.display.LoaderInfo;
    import 0mS.0XK;
    import flash.net.LocalConnection;
    import flash.system.Capabilities;
    import 0mS.*;

    public class 0mF implements 1nT {

        private static const 0wE:String = "Desktop";
        private static const 0M2:String = 1p3.Sq(-535, -682);//"www.realmofthemadgod.com"
        private static const 1lE:String = "realmofthemadgodhrd.appspot.com";
        private static const nb:String = "rotmgtesting.appspot.com";
        private static const 1uq:String = 1p3.Sq(-534, -683);//"testing.realmofthemadgod.com"
        private static const ROTMG_TESTING2:String = "realmtesting2.appspot.com";
        private static const 1lY:String = "Production";

        [Inject]
        public var loaderInfo:LoaderInfo;
        [Inject]
        public var Hu:N3;
        private var 8z:Boolean = false;
        private var 0Jw:0XK;


        public function hQ():String{
            return ("production".toLowerCase());
        }

        public function yC():0XK{
            ((this.8z) || (this.0ph()));
            return (this.0Jw);
        }

        private function 0ph():void{
            this.8z = true;
            this.0Aj(this.hQ());
        }

        private function 0Aj(_arg1:String):void{
            var _local3:LocalConnection;
            var _local2:Boolean = this.1TA(_arg1);
            if (_local2)
            {
                _local3 = new LocalConnection();
                if ((((_local3.domain == nb)) || ((_local3.domain == 1uq))))
                {
                    this.0Jw = 0XK.1xf;
                } else
                {
                    if (_local3.domain == ROTMG_TESTING2)
                    {
                        this.0Jw = 0XK.TESTING2;
                    };
                };
            } else
            {
                this.0Jw = this.Hu.yC(_arg1);
            };
        }

        private function 1TA(_arg1:String):Boolean{
            return ((((_arg1 == N3.gb)) && (!(this.0iV()))));
        }

        private function 0iV():Boolean{
            return (((this.1xO()) ? this.kZ() : this.0BC()));
        }

        private function 1xO():Boolean{
            return ((Capabilities.playerType == 0wE));
        }

        private function kZ():Boolean{
            var _local1:Object = this.loaderInfo.parameters;
            return ((_local1.deployment == 1lY));
        }

        private function 0BC():Boolean{
            var _local1:LocalConnection = new LocalConnection();
            return ((((_local1.domain == 0M2)) || ((_local1.domain == 1lE))));
        }


    }
}//package 0T7

