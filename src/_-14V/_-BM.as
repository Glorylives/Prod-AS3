// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//14V.BM

package 14V{
    import 1cI.1iz;
    import aq.Account;
    import _0BB.Fu;
    import WZ.0Te;
    import 1Bg.0Yk;
    import 0eZ.0P3;
    import 0Fr.1da;
    import 1qg.0io;
    import 1qg.11S;
    import flash.utils.Timer;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.util.1X3;
    import 0sC.09U;
    import 0sC.WebLoginDialog;
    import AO.du;
    import _04_._1JZ;
    import 0pT.1qk;
    import flash.events.TimerEvent;

    public class BM extends 1iz {

        private static const 17P:int = 1000;
        private static const 0UY:int = 7;

        [Inject]
        public var account:Account;
        [Inject]
        public var client:Fu;
        [Inject]
        public var model:0Te;
        [Inject]
        public var 0TF:0Yk;
        [Inject]
        public var 0UA:0P3;
        [Inject]
        public var u3:1da;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var closeDialogs:11S;
        private var 0vk:Object;
        private var 1b0:Timer;
        private var 1rm:int = 0;
        private var 1bn:Boolean = false;


        override protected function startTask():void{
            this.u3.info("GetUserDataTask start");
            this.0vk = this.0j9();
            this.sendRequest();
            Parameters.1cS = false;
        }

        private function sendRequest():void{
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/char/list", this.0vk);
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            if (_arg1)
            {
                this.7a(_arg2);
            } else
            {
                this.1Nc(_arg2);
            }
        }

        public function 0j9():Object{
            var _local1:Object = {}
            _local1.game_net_user_id = this.account.0yO();
            _local1.game_net = this.account.Gc();
            _local1.play_platform = this.account.229();
            _local1.do_login = Parameters.1cS;
            1X3.1J7(_local1, this.account.1Y());
            return (_local1);
        }

        private function 7a(_arg1:String):void{
            var _local3:Number;
            var _local4:09U;
            var _local2:XML = new XML(_arg1);
            if (_local2.hasOwnProperty("MigrateStatus"))
            {
                _local3 = _local2.MigrateStatus;
                if (_local3 == 5)
                {
                    this.sendRequest();
                }
                _local4 = new 09U(this.account, _local3);
                this.1bn = true;
                _local4.eO.addOnce(this.sendRequest);
                _local4.cancel.addOnce(this.1W6);
                this.0n2.dispatch(_local4);
            } else
            {
                this.0UA.dispatch(XML(_arg1));
                1d5(true);
            }
            if (this.1b0 != null)
            {
                this.0jg();
            }
        }

        private function 1Nc(_arg1:String):void{
            var _local2:WebLoginDialog;
            this.0TF.dispatch("error.loadError");
            if (_arg1 == "Account credentials not valid")
            {
                if (this.1bn)
                {
                    _local2 = new WebLoginDialog();
                    _local2.07n(du.159);
                    _local2.h1(this.account.getUserId());
                    _1JZ.0JF().getInstance(0io).dispatch(_local2);
                }
                this.1W6();
            } else
            {
                if (_arg1 == "Account is under maintenance")
                {
                    this.0TF.dispatch("This account has been banned");
                    new 1qk(5, this.1W6);
                } else
                {
                    this.fL();
                }
            }
        }

        private function 1W6():void{
            this.u3.info("GetUserDataTask invalid credentials");
            this.account.clear();
            this.client.complete.addOnce(this.onComplete);
            this.0vk = this.0j9();
            this.client.sendRequest("/char/list", this.0vk);
        }

        private function fL():void{
            this.u3.info("GetUserDataTask error - retrying");
            this.1b0 = new Timer(17P, 1);
            this.1b0.addEventListener(TimerEvent.TIMER_COMPLETE, this.0KP);
            this.1b0.start();
        }

        private function 0jg():void{
            this.1b0.stop();
            this.1b0.removeEventListener(TimerEvent.TIMER_COMPLETE, this.0KP);
            this.1b0 = null;
        }

        private function 0KP(_arg1:TimerEvent):void{
            this.0jg();
            if (this.1rm < 0UY)
            {
                this.sendRequest();
                this.1rm++;
            } else
            {
                this.1W6();
                this.0TF.dispatch("LoginError.tooManyFails");
            }
        }


    }
}//package 14V

