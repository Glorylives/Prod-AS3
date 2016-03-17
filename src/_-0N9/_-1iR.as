// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0N9.1iR

package 0N9{
    import aq.Account;
    import gx.1Nb;
    import 0UV.0rh;
    import 0UV.105;
    import 1qQ.0oB;
    import 1u-.0xT;
    import 1qg.0io;
    import 0xo.lZ;
    import 0-O.0E8;
    import com.company.assembleegameclient.parameters.Parameters;
    import 1u-.1Ys;
    import com.company.assembleegameclient.objects.1J1;
    import 12X.lE;
    import 1mO.0bI;
    import 1Gb.1aM;
    import 1zG.Text;
    import 1n4.1cA;
    import 0y3.0gx;
    import _04_._1JZ;
    import gx.Wl;
    import com.company.assembleegameclient.objects.GameObject;
    import 0Fa.053;

    public class 1iR {

        private const 0L5:1Xc = new 1Xc(14802908, 0xFFFFFF, 0x545454);
        private const 1c3:1Xc = new 1Xc(5644060, 16549442, 13484223);
        private const 0pP:1Xc = new 1Xc(2493110, 61695, 13880567);
        private const AJ:1Xc = new 1Xc(0x3E8A00, 10944349, 13891532);

        [Inject]
        public var account:Account;
        [Inject]
        public var model:1Nb;
        [Inject]
        public var 12K:0rh;
        [Inject]
        public var addSpeechBalloon:105;
        [Inject]
        public var 0C0:0oB;
        [Inject]
        public var 0KU:0xT;
        [Inject]
        public var 9R:0Fo;
        [Inject]
        public var 1qM:0io;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var 1RW:0E8;


        public function execute(_arg1:Text):void{
            var _local3:String;
            var _local4:String;
            var _local5:String;
            var _local2:Boolean = (((_arg1.numStars_ == -1)) || ((_arg1.objectId_ == -1)));
            if ((((((((_arg1.numStars_ < Parameters.data_.chatStarRequirement)) && (!((_arg1.name_ == this.model.player.name_))))) && (!(_local2)))) && (!(this.0gb(_arg1.recipient_)))))
            {
                return;
            };
            if (((((!((_arg1.recipient_ == ""))) && (Parameters.data_.chatFriend))) && (!(this.1RW.19L(_arg1.recipient_)))))
            {
                return;
            };
            if (((((((!(Parameters.data_.chatAll)) && (!((_arg1.name_ == this.model.player.name_))))) && (!(_local2)))) && (!(this.0gb(_arg1.recipient_)))))
            {
                if (!(((_arg1.recipient_ == Parameters.PB)) && (Parameters.data_.chatGuild)))
                {
                    if (!((!((_arg1.recipient_ == ""))) && (Parameters.data_.chatWhisper)))
                    {
                        return;
                    };
                };
            };
            if (this.0AI(_arg1))
            {
                _local3 = _arg1.cleanText_;
                _arg1.cleanText_ = this.oi(_arg1.cleanText_);
            } else
            {
                _local3 = _arg1.text_;
                _arg1.text_ = this.oi(_arg1.text_);
            };
            if (((_local2) && (this.Yg(_local3))))
            {
                _local3 = this.1ud(_local3);
            };
            if (((!(_local2)) && (this.9R.02f(_local3))))
            {
                if (_arg1.name_ == this.model.player.name_)
                {
                    this.12K.dispatch(1Ys.make(Parameters.1Wj, "This message has been flagged as spam."));
                };
                return;
            };
            if (_arg1.recipient_)
            {
                if (((!((_arg1.recipient_ == this.model.player.name_))) && (!(this.0gb(_arg1.recipient_)))))
                {
                    this.0KU.push(_arg1.recipient_);
                    this.0KU.1Wf();
                } else
                {
                    if (_arg1.recipient_ == this.model.player.name_)
                    {
                        this.0KU.push(_arg1.name_);
                        this.0KU.1Wf();
                    };
                };
            };
            if (((_local2) && ((1J1.ng == true))))
            {
                1J1.ng = false;
                _local4 = _arg1.name_;
                _local5 = _arg1.text_;
                _arg1.name_ = "";
                _arg1.text_ = "Remote Textures used in this build";
                this.0sW(_arg1);
                _arg1.name_ = _local4;
                _arg1.text_ = _local5;
            };
            if (_local2)
            {
                if ((((((((_arg1.text_ == "Please verify your email before chat")) && (!((this.11u == null))))) && ((this.11u.ja.map.name_ == "Nexus")))) && (!((this.1qM == null)))))
                {
                    this.1qM.dispatch(new lE());
                } else
                {
                    if (_arg1.name_ == "@ANNOUNCEMENT")
                    {
                        if (((((!((this.11u == null))) && (!((this.11u.ja == null))))) && (!((this.11u.ja.1ro == null)))))
                        {
                            this.11u.ja.1ro.1p5(_arg1.text_);
                        } else
                        {
                            0bI.Vs(_arg1.text_);
                        };
                    } else
                    {
                        if ((((_arg1.name_ == "#{objects.ft_shopkeep}")) && (!(1aM.0ui))))
                        {
                            return;
                        };
                    };
                };
            };
            if (_arg1.objectId_ >= 0)
            {
                this.pR(_arg1, _local3);
            };
            if (((_local2) || (((this.account.0D3()) && (((!(Parameters.data_["hidePlayerChat"])) || (this.0gb(_arg1.name_))))))))
            {
                this.0sW(_arg1);
            };
        }

        private function 0gb(_arg1:String):Boolean{
            return ((((_arg1.length > 0)) && ((((_arg1.charAt(0) == "#")) || ((_arg1.charAt(0) == "*"))))));
        }

        public function 0sW(_arg1:Text):void{
            var _local2:1Ys = new 1Ys();
            _local2.name = _arg1.name_;
            _local2.objectId = _arg1.objectId_;
            _local2.numStars = _arg1.numStars_;
            _local2.20u = _arg1.recipient_;
            _local2.0EX = ((_arg1.recipient_) && (!(this.0gb(_arg1.recipient_))));
            _local2.rO = (_arg1.recipient_ == this.model.player.name_);
            this.040(_arg1, _local2);
            this.12K.dispatch(_local2);
        }

        public function 040(_arg1:Text, _arg2:1Ys):void{
            var lb:1cA;
            var text:Text = _arg1;
            var message:1Ys = _arg2;
            try
            {
                lb = 1cA.fromJSON(text.text_);
                message.text = lb.key;
                message.tokens = lb.tokens;
            } catch(error:Error)
            {
                message.text = ((0AI(text)) ? text.cleanText_ : text.text_);
            };
        }

        private function oi(_arg1:String):String{
            var _local2:0gx;
            if (_arg1.substr(0, 7) == "74026S9")
            {
                _local2 = _1JZ.0JF().getInstance(0gx);
                if (((_local2) && (_local2.Zz())))
                {
                    return (_arg1.replace("74026S9", (_local2.Zz().name + ", ")));
                };
            };
            return (_arg1);
        }

        private function Yg(_arg1:String):Boolean{
            return ((((_arg1.charAt(0) == "{")) && ((_arg1.charAt((_arg1.length - 1)) == "}"))));
        }

        private function 1ud(_arg1:String):String{
            var _local2:1cA = 1cA.fromJSON(_arg1);
            _local2.1jM(this.0C0);
            return (_local2.getString());
        }

        private function pR(_arg1:Text, _arg2:String):void{
            var _local4:1Xc;
            var _local5:Boolean;
            var _local6:Boolean;
            var _local7:Wl;
            var _local3:GameObject = this.model.1db(_arg1.objectId_);
            if (_local3 != null)
            {
                _local4 = this.GK(_arg1, _local3);
                _local5 = 053.1ln(_arg1.numStars_, _arg1.objectId_, _arg2);
                _local6 = 053.0VV(_arg1.name_);
                _local7 = new Wl(_local3, _arg2, _arg1.name_, _local5, _local6, _local4.back, 1, _local4.Je, 1, _local4.text, _arg1.bubbleTime_, false, true);
                this.addSpeechBalloon.dispatch(_local7);
            };
        }

        private function GK(_arg1:Text, _arg2:GameObject):1Xc{
            if (_arg2.props_.isEnemy_)
            {
                return (this.1c3);
            };
            if (_arg1.recipient_ == Parameters.PB)
            {
                return (this.AJ);
            };
            if (_arg1.recipient_ != "")
            {
                return (this.0pP);
            };
            return (this.0L5);
        }

        private function 0AI(_arg1:Text):Boolean{
            return (((((Parameters.data_.filterLanguage) && ((_arg1.cleanText_.length > 0)))) && (!((_arg1.objectId_ == this.model.player.objectId_)))));
        }


    }
}//package 0N9

