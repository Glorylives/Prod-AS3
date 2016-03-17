// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//WZ.0Te

package WZ{
    import _Jy._1HZ;
    import com.company.assembleegameclient.appengine.Cp;
    import aq.Account;
    import 0Dt.5c;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.appengine.SavedCharacter;
    import __AS3__.vec.Vector;
    import com.company.assembleegameclient.appengine.1AQ;
    import 0y3.1O7;

    public class 0Te {

        public const J8:_1HZ = new _1HZ(int);
        public const 1l6:_1HZ = new _1HZ(int);
        public const 0XD:_1HZ = new _1HZ(int);

        public var 1ka:Cp;
        public var qv:Boolean;
        private var F6:int;
        private var isAgeVerified:Boolean;
        [Inject]
        public var account:Account;

        public function 0Te(){
            this.qv = true;
        }

        public function set 1IA(_arg1:int):void{
            this.F6 = _arg1;
        }

        public function get 1IA():int{
            return (this.F6);
        }

        public function Qk():Boolean{
            return (this.1ka.1vo);
        }

        public function 1Lw(_arg1:Boolean):void{
            this.1ka.1vo = _arg1;
        }

        public function 00T():Boolean{
            return (((((this.isAgeVerified) || ((this.account is 5c)))) || (this.1ka.isAgeVerified)));
        }

        public function 1eA(_arg1:Boolean):void{
            this.isAgeVerified = true;
        }

        public function NF():Boolean{
            return (((Parameters.data_.needsTutorial) && ((this.1ka.nextCharId_ == 1))));
        }

        public function yP():int{
            return (this.1ka.maxNumChars_);
        }

        public function 1gd(_arg1:int):void{
            this.1ka.maxNumChars_ = _arg1;
        }

        public function 0ce():int{
            return (this.1ka.credits_);
        }

        public function Vr():String{
            return (this.1ka.HU);
        }

        public function 1QN(_arg1:int):void{
            this.1ka.credits_ = (this.1ka.credits_ + _arg1);
            this.J8.dispatch(this.1ka.credits_);
        }

        public function 1Ep(_arg1:int):void{
            if (this.1ka.credits_ != _arg1)
            {
                this.1ka.credits_ = _arg1;
                this.J8.dispatch(_arg1);
            };
        }

        public function 15g():int{
            return (this.1ka.1iQ);
        }

        public function MF(_arg1:int):void{
            if (this.1ka.1iQ != _arg1)
            {
                this.1ka.1iQ = _arg1;
                this.1l6.dispatch(_arg1);
            };
        }

        public function N4():int{
            return (this.1ka.0NG);
        }

        public function setTokens(_arg1:int):void{
            if (this.1ka.0NG != _arg1)
            {
                this.1ka.0NG = _arg1;
                this.0XD.dispatch(_arg1);
            };
        }

        public function 1pq():int{
            return (this.1ka.numChars_);
        }

        public function 0mo(_arg1:int):SavedCharacter{
            return (this.1ka.0mo(_arg1));
        }

        public function deleteCharacter(_arg1:int):void{
            var _local2:SavedCharacter = this.1ka.0mo(_arg1);
            var _local3:int = this.1ka.savedChars_.indexOf(_local2);
            if (_local3 != -1)
            {
                this.1ka.savedChars_.splice(_local3, 1);
                this.1ka.numChars-;
            };
        }

        public function 0YA():String{
            return (this.1ka.accountId_);
        }

        public function kU():Boolean{
            return (!((this.1ka.accountId_ == "")));
        }

        public function z4():int{
            return (this.1ka.numStars_);
        }

        public function R0():String{
            return (this.1ka.guildName_);
        }

        public function 0uW():int{
            return (this.1ka.guildRank_);
        }

        public function CO():int{
            return (this.1ka.nextCharSlotPrice_);
        }

        public function 1R9():int{
            return (this.1ka.totalFame_);
        }

        public function 1Mk():int{
            return (this.1ka.nextCharId_);
        }

        public function zO(_arg1:int):SavedCharacter{
            var _local2:SavedCharacter;
            for each (_local2 in this.1ka.savedChars_)
            {
                if (_local2.charId() == _arg1)
                {
                    return (_local2);
                };
            };
            return (null);
        }

        public function 1y9(_arg1:int):SavedCharacter{
            return (this.1ka.savedChars_[_arg1]);
        }

        public function QH():Boolean{
            return (this.1ka.0xd);
        }

        public function 1GV():Vector.<1AQ>{
            return (this.1ka.1xy);
        }

        public function 0Gs():1O7{
            return (this.1ka.0C);
        }

        public function 0gU(_arg1:int, _arg2:String):void{
            this.1ka.0So[_arg1] = _arg2;
        }

        public function getName():String{
            return (this.1ka.name_);
        }

        public function getConverted():Boolean{
            return (this.1ka.converted_);
        }

        public function setName(_arg1:String):void{
            this.1ka.name_ = _arg1;
        }

        public function 3n():Boolean{
            return (this.1ka.1TS);
        }

        public function getNewUnlocks(_arg1:int, _arg2:int):Array{
            return (this.1ka.1U-(_arg1, _arg2));
        }

        public function hasAvailableCharSlot():Boolean{
            return (this.1ka.hasAvailableCharSlot());
        }

        public function M9():int{
            return (this.1ka.10o());
        }

        public function sN():Vector.<SavedCharacter>{
            return (this.1ka.savedChars_);
        }

        public function OO():Object{
            return (this.1ka.charStats_);
        }

        public function 0Po(_arg1:String, _arg2:String):Boolean{
            var _local3:String = this.1ka.0So[_arg1];
            return ((_local3 == _arg2));
        }

        public function 1if(_arg1:int):Boolean{
            return (this.1ka.0V4(_arg1));
        }

        public function 0E-(_arg1:int):int{
            return (this.1ka.ho(_arg1));
        }

        public function 1QG(_arg1:int):int{
            return (this.1ka.bestLevel(_arg1));
        }

        public function 0C5(_arg1:Cp):void{
            this.1ka = _arg1;
        }


    }
}//package WZ

