// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//M0.jc

package M0{
    import 1cI.1iz;
    import _0BB.Fu;
    import 1Gb.1aM;
    import aq.Account;
    import 0Fr.1da;
    import 1qQ.0Uh;
    import 1qg.0io;
    import 0Zf.OJ;
    import flash.utils.getTimer;
    import b4.f1;
    import com.company.assembleegameclient.util.1ze;
    import vF.MysteryBoxInfo;

    public class jc extends 1iz {

        private static const OF:int = 600;

        private static var version:String = "0";

        [Inject]
        public var client:Fu;
        [Inject]
        public var WV:1g;
        [Inject]
        public var jR:1aM;
        [Inject]
        public var account:Account;
        [Inject]
        public var u3:1da;
        [Inject]
        public var 0ur:0Uh;
        [Inject]
        public var 1qM:0io;
        public var 06g:uint = 0;


        override protected function startTask():void{
            var _local1:Number;
            var _local2:Object;
            if (OJ.mq("MysteryBoxRefresh"))
            {
                _local1 = OJ.06S("MysteryBoxRefresh");
            } else
            {
                _local1 = OF;
            }
            if ((((this.06g == 0)) || (((this.06g + _local1) < (getTimer() / 1000)))))
            {
                this.06g = (getTimer() / 1000);
                1d5(true);
                _local2 = this.account.1Y();
                _local2.language = this.0ur.1Jp();
                _local2.version = version;
                this.client.sendRequest("/mysterybox/getBoxes", _local2);
                this.client.complete.addOnce(this.onComplete);
            } else
            {
                1d5(true);
                reset();
            }
        }

        public function 1Ot():void{
            this.06g = 0;
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            reset();
            if (_arg1)
            {
                this.0dg(_arg2);
            } else
            {
                this.u3.0K("GetPackageTask.onComplete: Request failed.");
                1d5(false);
            }
        }

        private function 0dg(_arg1):void{
            var _local2:XMLList;
            var _local3:XMLList;
            if (this.02O(_arg1))
            {
                if (this.WV.171())
                {
                    return;
                }
                this.WV.1Mp(false);
            } else
            {
                version = XML(_arg1).attribute("version").toString();
                _local2 = XML(_arg1).child("MysteryBox");
                this.parse(_local2);
                _local3 = XML(_arg1).child("FortuneGame");
                if (_local3.length() > 0)
                {
                    this.1Pl(_local3);
                }
            }
            1d5(true);
        }

        private function 02O(_arg1):Boolean{
            var _local2:XMLList = XML(_arg1).children();
            var _local3 = (_local2.length() == 0);
            return (_local3);
        }

        private function 1Pl(_arg1:XMLList):void{
            var _local2:f1 = new f1();
            _local2.id = _arg1.attribute("id").toString();
            _local2.title = _arg1.attribute("title").toString();
            _local2.weight = _arg1.attribute("weight").toString();
            _local2.description = _arg1.Description.toString();
            _local2.Gy = _arg1.Contents.toString();
            _local2.1wt = _arg1.Price.attribute("firstInGold").toString();
            _local2.20g = _arg1.Price.attribute("firstInToken").toString();
            _local2.0Tj = _arg1.Price.attribute("secondInGold").toString();
            _local2.20l = _arg1.Icon.toString();
            _local2.z- = _arg1.Image.toString();
            _local2.startTime = 1ze.25u(_arg1.StartTime.toString());
            _local2.endTime = 1ze.25u(_arg1.EndTime.toString());
            _local2.0tl();
            this.jR.1Po(_local2);
        }

        private function parse(_arg1:XMLList):void{
            var _local4:XML;
            var _local5:MysteryBoxInfo;
            var _local2:Array = [];
            var _local3:Boolean;
            for each (_local4 in _arg1)
            {
                _local5 = new MysteryBoxInfo();
                _local5.id = _local4.attribute("id").toString();
                _local5.title = _local4.attribute("title").toString();
                _local5.weight = _local4.attribute("weight").toString();
                _local5.description = _local4.Description.toString();
                _local5.Gy = _local4.Contents.toString();
                _local5.0Br = _local4.Price.attribute("amount").toString();
                _local5.1hG = _local4.Price.attribute("currency").toString();
                if (_local4.hasOwnProperty("Sale"))
                {
                    _local5.rn = _local4.Sale.attribute("price").toString();
                    _local5.4O = _local4.Sale.attribute("currency").toString();
                    _local5.1SO = 1ze.25u(_local4.Sale.End.toString());
                }
                _local5.20l = _local4.Icon.toString();
                _local5.z- = _local4.Image.toString();
                _local5.startTime = 1ze.25u(_local4.StartTime.toString());
                _local5.0tl();
                if (((!(_local3)) && (((_local5.isNew()) || (_local5.1p1())))))
                {
                    _local3 = true;
                }
                _local2.push(_local5);
            }
            this.WV.WS(_local2);
            this.WV.isNew = _local3;
        }


    }
}//package M0

