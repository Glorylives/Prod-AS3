// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.appengine._Cp

package com.company.assembleegameclient.appengine{
import _0y3._1O7;

import _1Bt._l;

import _1qg._0io;

import _1t6.TOSPopup;

import _aq.Account;

import flash.events.Event;
import _04_._1JZ;
import _0OG._22M;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.objects.ObjectLibrary;
import aq.*;

public class _Cp extends Event {

    public static const SAVED_CHARS_LIST:String = "SAVED_CHARS_LIST";
    public static const _1tO:String = "available";
    public static const _1E:String = "unavailable";
    public static const _5o:String = "unrestricted";
    private static const p5:_1O7 = new _1O7(37.4436, -122.412);
    private static const rY:String = "unavailable";

    private var td:String;
    private var _27A:XML;
    public var accountId_:String;
    public var nextCharId_:int;
    public var maxNumChars_:int;
    public var numChars_:int = 0;
    public var savedChars_:Vector.<SavedCharacter>;
    public var charStats_:Object;
    public var totalFame_:int = 0;
    public var _1iQ:int = 0;
    public var credits_:int = 0;
    public var _0NG:int = 0;
    public var numStars_:int = 0;
    public var nextCharSlotPrice_:int;
    public var guildName_:String;
    public var guildRank_:int;
    public var name_:String = null;
    public var _1TS:Boolean;
    public var converted_:Boolean;
    public var _0xd:Boolean;
    public var _1xy:Vector.<_1AQ>;
    public var _0C:_1O7;
    public var HU:String = "unavailable";
    public var _1vo:Boolean = false;
    public var _0So:Object;
    public var isAgeVerified:Boolean;
    private var account:Account;

    public function _Cp(_arg1:String){
        var _local4:*;
        var _local5:Account;
        this.savedChars_ = new Vector.<SavedCharacter>();
        this.charStats_ = {};
        this._1xy = new Vector.<_1AQ>();
        super(SAVED_CHARS_LIST);
        this.td = _arg1;
        this._27A = new XML(this.td);
        var _local2:XML = XML(this._27A.Account);
        this._1uW(_local2);
        this.XH(_local2);
        this._19k(_local2);
        this._0Jz();
        this._0q0();
        this.qp();
        this.Z4();
        this._0ch();
        this.nP();
        this._1c();
        var _local3:_22M = _1JZ._0JF();
        if (_local3)
        {
            _local5 = _local3.getInstance(Account);
            _local5._1oM("BestLevel", this.wf());
            _local5._1oM("BestFame", this.z8());
            _local5._1oM("NumStars", this.numStars_);
            _local5.verify(_local2.hasOwnProperty("VerifiedEmail"));
        };
        this._0So = new Object();
        for each (_local4 in this._27A.ClassAvailabilityList.ClassAvailability)
        {
            this._0So[_local4.@id.toString()] = _local4.toString();
        };
    }

    public function _0mo(_arg1:int):SavedCharacter{
        var _local2:SavedCharacter;
        for each (_local2 in this.savedChars_)
        {
            if (_local2.charId() == _arg1)
            {
                return (_local2);
            };
        };
        return (null);
    }

    private function _1uW(_arg1:XML):void{
        this.accountId_ = _arg1.AccountId;
        this.name_ = _arg1.Name;
        this._1TS = _arg1.hasOwnProperty("NameChosen");
        this.converted_ = _arg1.hasOwnProperty("Converted");
        this._0xd = _arg1.hasOwnProperty("Admin");
        Player.QH = this._0xd;
        this.totalFame_ = int(_arg1.Stats.TotalFame);
        this._1iQ = int(_arg1.Stats.Fame);
        this.credits_ = int(_arg1.Credits);
        this._0NG = int(_arg1.FortuneToken);
        this.nextCharSlotPrice_ = int(_arg1.NextCharSlotPrice);
        this.isAgeVerified = ((!((this.accountId_ == ""))) && ((_arg1.IsAgeVerified == 1)));
        this._1vo = true;
    }

    private function XH(_arg1:XML):void{
        var _local2:Number;
        var _local3:_l;
        if (_arg1.hasOwnProperty("BeginnerPackageTimeLeft"))
        {
            _local2 = _arg1.BeginnerPackageTimeLeft;
            _local3 = this.qf();
            _local3._1Xs(_local2);
        };
    }

    private function qf():_l{
        var _local1:_22M = _1JZ._0JF();
        var _local2:_l = _local1.getInstance(_l);
        return (_local2);
    }

    private function _19k(_arg1:XML):void{
        var _local2:XML;
        if (_arg1.hasOwnProperty("Guild"))
        {
            _local2 = XML(_arg1.Guild);
            this.guildName_ = _local2.Name;
            this.guildRank_ = int(_local2.Rank);
        };
    }

    private function _0Jz():void{
        var _local1:XML;
        this.nextCharId_ = int(this._27A.@nextCharId);
        this.maxNumChars_ = int(this._27A.@maxNumChars);
        for each (_local1 in this._27A.Char)
        {
            this.savedChars_.push(new SavedCharacter(_local1, this.name_));
            this.numChars_++;
        };
        this.savedChars_.sort(SavedCharacter._0Ys);
    }

    private function _0q0():void{
        var _local2:XML;
        var _local3:int;
        var _local4:_1WG;
        var _local1:XML = XML(this._27A.Account.Stats);
        for each (_local2 in _local1.ClassStats)
        {
            _local3 = int(_local2.@objectType);
            _local4 = new _1WG(_local2);
            this.numStars_ = (this.numStars_ + _local4.numStars());
            this.charStats_[_local3] = _local4;
        };
    }

    private function qp():void{
        var _local2:XML;
        var _local1:XML = XML(this._27A.News);
        for each (_local2 in _local1.Item)
        {
            this._1xy.push(new _1AQ(_local2.Icon, _local2.Title, _local2.TagLine, _local2.Link, int(_local2.Date)));
        };
    }

    private function Z4():void{
        if (((this._27A.hasOwnProperty("Lat")) && (this._27A.hasOwnProperty("Long"))))
        {
            this._0C = new _1O7(Number(this._27A.Lat), Number(this._27A.Long));
        } else
        {
            this._0C = p5;
        };
    }

    private function _0ch():void{
        if (((this._27A.hasOwnProperty("SalesForce")) && (this._27A.hasOwnProperty("SalesForce"))))
        {
            this.HU = String(this._27A.SalesForce);
        };
    }

    private function nP():void{
        if (this._27A.hasOwnProperty("TOSPopup"))
        {
            _1JZ._0JF().getInstance(_0io).dispatch(new TOSPopup());
        };
    }

    public function bestLevel(_arg1:int):int{
        var _local2:_1WG = this.charStats_[_arg1];
        return ((((_local2 == null)) ? 0 : _local2.bestLevel()));
    }

    public function wf():int{
        var _local2:_1WG;
        var _local1:int;
        for each (_local2 in this.charStats_)
        {
            if (_local2.bestLevel() > _local1)
            {
                _local1 = _local2.bestLevel();
            };
        };
        return (_local1);
    }

    public function ho(_arg1:int):int{
        var _local2:_1WG = this.charStats_[_arg1];
        return ((((_local2 == null)) ? 0 : _local2.ho()));
    }

    public function z8():int{
        var _local2:_1WG;
        var _local1:int;
        for each (_local2 in this.charStats_)
        {
            if (_local2.ho() > _local1)
            {
                _local1 = _local2.ho();
            };
        };
        return (_local1);
    }

    public function _0V4(_arg1:int):Boolean{
        var _local3:XML;
        var _local4:int;
        var _local2:XML = ObjectLibrary.GD[_arg1];
        for each (_local3 in _local2.UnlockLevel)
        {
            _local4 = ObjectLibrary.get[_local3.toString()];
            if (this.bestLevel(_local4) < int(_local3.@level))
            {
                return (false);
            };
        };
        return (true);
    }

    public function _10o():int{
        return ((this.maxNumChars_ - this.numChars_));
    }

    public function hasAvailableCharSlot():Boolean{
        return ((this.numChars_ < this.maxNumChars_));
    }

    public function _1U(_arg1:int, _arg2:int):Array{
        var _local5:XML;
        var _local6:int;
        var _local7:Boolean;
        var _local8:Boolean;
        var _local9:XML;
        var _local10:int;
        var _local11:int;
        var _local3:Array = new Array();
        var _local4:int;
        while (_local4 < ObjectLibrary._1wa.length)
        {
            _local5 = ObjectLibrary._1wa[_local4];
            _local6 = int(_local5.@type);
            if (this._0V4(_local6))
            {
            } else
            {
                _local7 = true;
                _local8 = false;
                for each (_local9 in _local5.UnlockLevel)
                {
                    _local10 = ObjectLibrary.get[_local9.toString()];
                    _local11 = int(_local9.@level);
                    if (this.bestLevel(_local10) >= _local11)
                    {
                    } else
                    {
                        if (((!((_local10 == _arg1))) || (!((_local11 == _arg2)))))
                        {
                            _local7 = false;
                            break;
                        };
                        _local8 = true;
                    };
                };
                if (((_local7) && (_local8)))
                {
                    _local3.push(_local6);
                };
            };
            _local4++;
        };
        return (_local3);
    }

    override public function clone():Event{
        return (new _Cp(this.td));
    }

    override public function toString():String{
        return (((((("[" + " numChars: ") + this.numChars_) + " maxNumChars: ") + this.maxNumChars_) + " ]"));
    }

    private function _1c():void{
        var _local1:_22M = _1JZ._0JF();
        if (_local1)
        {
            this.account = _local1.getInstance(Account);
            ((this.account) && (this._03l()));
        };
    }

    private function _03l():void{
        var _local3:XML;
        var _local4:int;
        var _local1:int;
        var _local2:int;
        while (_local2 < ObjectLibrary._1wa.length)
        {
            _local3 = ObjectLibrary._1wa[_local2];
            _local4 = int(_local3.@type);
            if (this._0V4(_local4))
            {
                this.account._1oM((_local3.@id + "Unlocked"), 1);
                _local1++;
            };
            _local2++;
        };
        this.account._1oM("ClassesUnlocked", _local1);
    }


}
}//package com.company.assembleegameclient.appengine

