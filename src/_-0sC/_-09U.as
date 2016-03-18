// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sC.09U

package 0sC{
    import 12X.0Q6;
    import _Jy._1HZ;
    import aq.Account;
    import _0BB.Fu;
    import OZ.0c1;
    import flash.utils.Timer;
    import _04_._1JZ;
    import XF.lY;
    import flash.events.MouseEvent;
    import flash.events.TimerEvent;
    import 1kr.UJ;
    import 1qg.11S;

    public class 09U extends 0Q6 {

        public var eO:_1HZ;
        private var 1Dk:_1HZ;
        private var account:Account;
        private var client:Fu;
        private var 1j9:Fu;
        private var 0Yl:Number = 0;
        private var total:Number = 100;
        private var 078:3W;
        protected var 0er:0c1;
        protected var 9u:0c1;
        private var 13A:Timer;
        private var status:Number = 0;
        private var 18T:Boolean;

        public function 09U(_arg1:Account, _arg2:Number){
            this.13A = new Timer(2000, 0);
            super(500, 220, "Maintenance Needed");
            this.18T = false;
            J-((("Press OK to begin maintenance on \n\n" + _arg1.j2()) + "\n\nor cancel to login _with a different account"), true);
            this.1Mr("Cancel");
            this.PF("OK");
            this.account = _arg1;
            this.status = _arg2;
            this.client = _1JZ.0JF().getInstance(Fu);
            this.1Dk = new lY(this.9u, MouseEvent.CLICK);
            cancel = new lY(this.0er, MouseEvent.CLICK);
            this.eO = new _1HZ();
            this.1Dk.addOnce(this.1Y7);
            this.eO.addOnce(this.027);
            cancel.addOnce(this.Yh);
            cancel.addOnce(this.027);
        }

        private function 1Y7():void{
            var _local1:Object;
            this.9u.setEnabled(false);
            if (this.status == 1)
            {
                _local1 = this.account.1Y();
                this.client.complete.addOnce(this.CY);
                this.client.sendRequest("/migrate/doMigration", _local1);
            };
        }

        private function 0uN():void{
            this.13A.addEventListener(TimerEvent.TIMER, this.13C);
            if (this.1j9 == null)
            {
                this.1j9 = _1JZ.0JF().getInstance(UJ);
            };
            this.13A.start();
            this.0--(0);
        }

        private function zE():void{
            this.0--(100);
            this.13A.stop();
            this.13A.removeEventListener(TimerEvent.TIMER, this.13C);
        }

        private function 13C(_arg1:TimerEvent):void{
            var _local2:Object = this.account.1Y();
            this.1j9.complete.addOnce(this.1WV);
            this.1j9.sendRequest("/migrate/progress", _local2);
        }

        private function 1WV(_arg1:Boolean, _arg2):void{
            var _local3:XML;
            var _local4:String;
            var _local5:Number;
            var _local6:Number;
            if (_arg1)
            {
                if (this.18T == true)
                {
                    return;
                };
                _local3 = new XML(_arg2);
                if (_local3.hasOwnProperty("Percent"))
                {
                    _local4 = _local3.Percent;
                    _local5 = Number(_local4);
                    if (_local5 == 100)
                    {
                        if (this.18T == false)
                        {
                            this.zE();
                            this.0--(_local5);
                            this.eO.dispatch();
                        };
                    } else
                    {
                        if (_local5 != this.0Yl)
                        {
                            this.0--(_local5);
                        };
                    };
                } else
                {
                    if (_local3.hasOwnProperty("MigrateStatus"))
                    {
                        _local6 = _local3.MigrateStatus;
                        if (_local6 == 44)
                        {
                            this.zE();
                            this.reset();
                        };
                    };
                };
            };
        }

        private function 0--(_arg1:Number):void{
            this.078.update(_arg1);
            this.0Yl = _arg1;
            J-((("" + _arg1) + "%"), true);
        }

        private function CY(_arg1:Boolean, _arg2):void{
            var _local3:XML;
            var _local4:Number;
            if (this.18T)
            {
                return;
            };
            if (_arg1)
            {
                _local3 = new XML(_arg2);
                if (_local3.hasOwnProperty("MigrateStatus"))
                {
                    _local4 = _local3.MigrateStatus;
                    if (_local4 == 44)
                    {
                        this.zE();
                        this.reset();
                    } else
                    {
                        if (_local4 == 4)
                        {
                            this.J4();
                            setTitle("Migration In Progress", true);
                            this.0uN();
                        } else
                        {
                            this.zE();
                            this.reset();
                        };
                    };
                };
            } else
            {
                this.zE();
                this.reset();
            };
        }

        private function reset():void{
            setTitle("Error, please try again. Maintenance needed", true);
            J-((("Press OK to begin maintenance on \n\n" + this.account.j2()) + "\n\nor cancel to login _with a different account"), true);
            this.094();
            this.1Dk.addOnce(this.1Y7);
            this.9u.setEnabled(true);
        }

        private function J4():void{
            var _local2:Number;
            this.094();
            var _local1:Number = 1yz;
            _local2 = (0oc / 3);
            var _local3:Number = (0l4 - (_local1 * 2));
            var _local4:Number = 40;
            this.078 = new 3W(_local3, _local4);
            addChild(this.078);
            this.078.x = _local1;
            this.078.y = _local2;
        }

        private function 094():void{
            if (((!((this.078 == null))) && (!((this.078.parent == null)))))
            {
                removeChild(this.078);
            };
        }

        private function Yh():void{
            this.eO.removeAll();
        }

        private function 027():void{
            this.18T = true;
            var _local1:11S = _1JZ.0JF().getInstance(11S);
            _local1.dispatch();
        }

        private function 1Mr(_arg1:String):void{
            this.0er = new 0c1(_arg1);
            if (_arg1 != "")
            {
                this.0er.buttonMode = true;
                addChild(this.0er);
                this.0er.x = (((0l4 / 2) - 100) - this.0er.width);
                this.0er.y = (0oc - 50);
            };
        }

        private function PF(_arg1:String):void{
            this.9u = new 0c1(this.0er.text.text);
            this.9u.1gl();
            this.9u.1wG(_arg1);
            if (_arg1 != "")
            {
                this.9u.buttonMode = true;
                addChild(this.9u);
                this.9u.x = ((0l4 / 2) + 100);
                this.9u.y = (0oc - 50);
            };
        }


    }
}//package 0sC

