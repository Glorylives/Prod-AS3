// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.99

package com.company.assembleegameclient.util{
    import AO.du;

    import _04_._1JZ;
    import aq.Account;
    import qG.0bJ;
    import flash.net.URLVariables;
    import com.company.assembleegameclient.util.offer.Offer;


    public class 99 {

        public static const 2-z:99 = new 99(du.1mJ, "co", "");
        public static const 19r:99 = new 99(du.1sB, "ps", "P3");
        public static const 17q:99 = new 99(du.27T, "ps", "CH");
        public static const 050:Vector.<99> = new <99>[2-z, 19r, 17q];

        public var label_:String;
        public var 1O-:String;
        public var HH:String;

        public function 99(_arg1:String, _arg2:String, _arg3:String){
            this.label_ = _arg1;
            this.1O- = _arg2;
            this.HH = _arg3;
        }

        public static function 1Mu(_arg1:String):99{
            var _local2:99;
            for each (_local2 in 050)
            {
                if (_local2.label_ == _arg1)
                {
                    return (_local2);
                }
            }
            return (null);
        }


        public function tc(_arg1:String, _arg2:String, _arg3:Offer):String{
            var _local4:Account = _1JZ.0JF().getInstance(Account);
            var _local5:0bJ = _1JZ.0JF().getInstance(0bJ);
            var _local6:URLVariables = new URLVariables();
            _local6["tok"] = _arg1;
            _local6["exp"] = _arg2;
            _local6["guid"] = _local4.getUserId();
            _local6["provider"] = this.1O-;
            switch (this.1O-)
            {
                case "co":
                    _local6["jwt"] = _arg3.jwt_;
                    break;
                case "ps":
                    _local6["jwt"] = _arg3.jwt_;
                    _local6["price"] = _arg3.price_.toString();
                    _local6["paymentid"] = this.HH;
                    break;
            }
            return (((_local5.1HF(true) + "/credits/add?") + _local6.toString()));
        }


    }
}//package com.company.assembleegameclient.util

