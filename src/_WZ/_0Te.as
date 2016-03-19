// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//WZ.0Te

package _WZ{
import _0Dt._5c;

import _0y3._1O7;

import _Jy._1HZ;

import _aq.Account;

import com.company.assembleegameclient.appengine._1AQ;

import com.company.assembleegameclient.appengine._Cp;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.appengine.SavedCharacter;

    public class _0Te {

        public const J8:_1HZ = new _1HZ(int);
        public const _1l6:_1HZ = new _1HZ(int);
        public const _0XD:_1HZ = new _1HZ(int);

        public var _1ka:_Cp;
        public var qv:Boolean;
        private var F6:int;
        private var isAgeVerified:Boolean;
        [Inject]
        public var account:Account;

        public function _0Te(){
            this.qv = true;
        }

        public function set _1IA(_arg1:int):void{
            this.F6 = _arg1;
        }

        public function get _1IA():int{
            return (this.F6);
        }

        public function Qk():Boolean{
            return (this._1ka._1vo);
        }

        public function _1Lw(_arg1:Boolean):void{
            this._1ka._1vo = _arg1;
        }

        public function _00T():Boolean{
            return (((((this.isAgeVerified) || ((this.account is _5c)))) || (this._1ka.isAgeVerified)));
        }

        public function _1eA(_arg1:Boolean):void{
            this.isAgeVerified = true;
        }

        public function NF():Boolean{
            return (((Parameters.data_.needsTutorial) && ((this._1ka.nextCharId_ == 1))));
        }

        public function yP():int{
            return (this._1ka.maxNumChars_);
        }

        public function _1gd(_arg1:int):void{
            this._1ka.maxNumChars_ = _arg1;
        }

        public function _0ce():int{
            return (this._1ka.credits_);
        }

        public function Vr():String{
            return (this._1ka.HU);
        }

        public function _1QN(_arg1:int):void{
            this._1ka.credits_ = (this._1ka.credits_ + _arg1);
            this.J8.dispatch(this._1ka.credits_);
        }

        public function _1Ep(_arg1:int):void{
            if (this._1ka.credits_ != _arg1)
            {
                this._1ka.credits_ = _arg1;
                this.J8.dispatch(_arg1);
            }
        }

        public function _15g():int{
            return (this._1ka._1iQ);
        }

        public function MF(_arg1:int):void{
            if (this._1ka._1iQ != _arg1)
            {
                this._1ka._1iQ = _arg1;
                this._1l6.dispatch(_arg1);
            }
        }

        public function N4():int{
            return (this._1ka._0NG);
        }

        public function setTokens(_arg1:int):void{
            if (this._1ka._0NG != _arg1)
            {
                this._1ka._0NG = _arg1;
                this._0XD.dispatch(_arg1);
            }
        }

        public function _1pq():int{
            return (this._1ka.numChars_);
        }

        public function _0mo(_arg1:int):SavedCharacter{
            return (this._1ka._0mo(_arg1));
        }

        public function deleteCharacter(_arg1:int):void{
            var _local2:SavedCharacter = this._1ka._0mo(_arg1);
            var _local3:int = this._1ka.savedChars_.indexOf(_local2);
            if (_local3 != -1)
            {
                this._1ka.savedChars_.splice(_local3, 1);
                this._1ka.numChars_;
            }
        }

        public function _0YA():String{
            return (this._1ka.accountId_);
        }

        public function kU():Boolean{
            return (!((this._1ka.accountId_ == "")));
        }

        public function z4():int{
            return (this._1ka.numStars_);
        }

        public function R0():String{
            return (this._1ka.guildName_);
        }

        public function _0uW():int{
            return (this._1ka.guildRank_);
        }

        public function CO():int{
            return (this._1ka.nextCharSlotPrice_);
        }

        public function _1R9():int{
            return (this._1ka.totalFame_);
        }

        public function _1Mk():int{
            return (this._1ka.nextCharId_);
        }

        public function zO(_arg1:int):SavedCharacter{
            var _local2:SavedCharacter;
            for each (_local2 in this._1ka.savedChars_)
            {
                if (_local2.charId() == _arg1)
                {
                    return (_local2);
                }
            }
            return (null);
        }

        public function _1y9(_arg1:int):SavedCharacter{
            return (this._1ka.savedChars_[_arg1]);
        }

        public function QH():Boolean{
            return (this._1ka._0xd);
        }

        public function _1GV():Vector.<_1AQ>{
            return (this._1ka._1xy);
        }

        public function _0Gs():_1O7{
            return (this._1ka._0C);
        }

        public function _0gU(_arg1:int, _arg2:String):void{
            this._1ka._0So[_arg1] = _arg2;
        }

        public function getName():String{
            return (this._1ka.name_);
        }

        public function getConverted():Boolean{
            return (this._1ka.converted_);
        }

        public function setName(_arg1:String):void{
            this._1ka.name_ = _arg1;
        }

        public function _3n():Boolean{
            return (this._1ka._1TS);
        }

        public function getNewUnlocks(_arg1:int, _arg2:int):Array{
            return (this._1ka._1U(_arg1, _arg2));
        }

        public function hasAvailableCharSlot():Boolean{
            return (this._1ka.hasAvailableCharSlot());
        }

        public function M9():int{
            return (this._1ka._10o());
        }

        public function sN():Vector.<SavedCharacter>{
            return (this._1ka.savedChars_);
        }

        public function OO():Object{
            return (this._1ka.charStats_);
        }

        public function _0Po(_arg1:String, _arg2:String):Boolean{
            var _local3:String = this._1ka._0So[_arg1];
            return ((_local3 == _arg2));
        }

        public function _1if(_arg1:int):Boolean{
            return (this._1ka._0V4(_arg1));
        }

        public function _0E(_arg1:int):int{
            return (this._1ka.ho(_arg1));
        }

        public function _1QG(_arg1:int):int{
            return (this._1ka.bestLevel(_arg1));
        }

        public function _0C5(_arg1:_Cp):void{
            this._1ka = _arg1;
        }


    }
}//package WZ

