// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.1S8

package 1PB{
    import 1uF.1Mf;
    import aq.Account;
    import WZ.0Te;
    import 1Bg.1zl;
    import 1Bg.0oS;
    import 1ay.0U6;
    import 0eZ.2-y;
    import 1qg.0io;
    import qG.0bJ;
    import JV.1OM;
    import 0Fr.1da;
    import flash.net.URLVariables;
    import flash.net.URLRequest;
    import 0Zf.OJ;
    import flash.net.URLRequestMethod;
    import flash.net.navigateToURL;
    import flash.system.Capabilities;
    import flash.external.ExternalInterface;
    import 0Np.24b;
    import 0xo.01q;
    import _1aA.Qd;
    import 1RB.aU;
    import 0QW.2-2;
    import flash.events.Event;

    public class 1S8 extends 1Mf {

        private static var 0kk:Boolean = false;

        [Inject]
        public var view:TitleView;
        [Inject]
        public var account:Account;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var 21r:1zl;
        [Inject]
        public var fP:0oS;
        [Inject]
        public var 8I:0U6;
        [Inject]
        public var 1Rk:2-y;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var setup:0bJ;
        [Inject]
        public var W2:1OM;
        [Inject]
        public var u3:1da;


        override public function initialize():void{
            this.view.0GK.add(this.0uu);
            this.view.initialize(this.mP());
            this.view.throw.add(this.Ts);
            this.view.13u.add(this.1lh);
            this.view.0R1.add(this.0WD);
            this.view.22X.add(this.0Pg);
            this.view.XI.add(this.lS);
        }

        private function lS():void{
            var _local1:URLVariables = new URLVariables();
            var _local2:URLRequest = new URLRequest();
            var _local3:Boolean;
            if (((OJ.mq("SalesforceMobile")) && ((OJ.06S("SalesforceMobile") == 1))))
            {
                _local3 = true;
            };
            var _local4:String = this.SP.Vr();
            if ((((_local4 == "unavailable")) || (!(_local3))))
            {
                _local1.language = "en_US";
                _local1.game = "a0Za000000jIBFUEA4";
                _local1.issue = "Other_Game_Issues";
                _local2.url = "https://kabam.secure.force.com/PKB/KbContactUsForm";
                _local2.method = URLRequestMethod.GET;
                _local2.data = _local1;
                navigateToURL(_local2, "_blank");
            } else
            {
                if ((((Capabilities.playerType == "PlugIn")) || ((Capabilities.playerType == "ActiveX"))))
                {
                    if (!0kk)
                    {
                        ExternalInterface.call("openSalesForceFirstTime", _local4);
                        0kk = true;
                    } else
                    {
                        ExternalInterface.call("reopenSalesForce");
                    };
                } else
                {
                    _local1.data = _local4;
                    _local2.url = "https://kabam.secure.force.com";
                    _local2.method = URLRequestMethod.GET;
                    _local2.data = _local1;
                    navigateToURL(_local2, "_blank");
                };
            };
        }

        private function 0uu():void{
            ((this.view.rT) && (this.view.rT.add(this.0nS)));
            ((this.view.AW) && (this.view.AW.add(this.1qm)));
        }

        private function 0AW():void{
            this.21r.dispatch(new 24b());
        }

        private function mP():01q{
            var _local1:01q = new 01q();
            _local1.LD = (Capabilities.playerType == "Desktop");
            _local1.QH = this.SP.QH();
            _local1.1sz = this.setup.04j();
            return (_local1);
        }

        override public function destroy():void{
            this.view.throw.remove(this.Ts);
            this.view.13u.remove(this.1lh);
            this.view.0R1.remove(this.0WD);
            this.view.22X.remove(this.0Pg);
            this.view.XI.remove(this.lS);
            this.view.0GK.remove(this.0uu);
            ((this.view.rT) && (this.view.rT.remove(this.0nS)));
            ((this.view.AW) && (this.view.AW.remove(this.1qm)));
        }

        private function Ts():void{
            this.8I.dispatch();
        }

        private function 1lh():void{
            this.21r.dispatch(new Qd());
        }

        private function 0WD():void{
            this.1Rk.dispatch(false);
        }

        private function 0Pg():void{
            this.21r.dispatch(new aU());
        }

        private function 0nS():void{
            this.21r.dispatch(new 2-2());
        }

        private function 1qm():void{
            dispatch(new Event("APP_CLOSE_EVENT"));
        }


    }
}//package 1PB

