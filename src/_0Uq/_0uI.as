// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Uq.0uI

package _0Uq{
import _5z._0tK;

import _Wn._0EB;
import _Wn._1ot;

import _tn._0dE;
import _tn._0ec;

import _tn._1iY;

import com.company.util.ConversionUtil;

import kabam.rotmg.assets.services._0Vx;

public class _0uI {

        [Inject]
        public var _1z8:_0ec;
        [Inject]
        public var factory:_0Vx;
        [Inject]
        public var _15a:_1ot;


        public function _1Od(_arg1:XMLList):Vector.<_0EB>{
            var _local4:XML;
            var _local2:Vector.<_0EB> = new Vector.<_0EB>();
            var _local3:int = 1;
            for each (_local4 in _arg1)
            {
                _local2.push(this._1FS(_local4, _local3));
                _local3++;
            }
            _local2 = this._1YV(_local2);
            _local2 = this._2O(_local2);
            return (_local2);
        }

        private function _2O(_arg1:Vector.<_0EB>):Vector.<_0EB>{
            var _local3:Boolean;
            var _local4:Boolean;
            var _local5:_0EB;
            var _local2:Vector.<_0EB> = new Vector.<_0EB>();
            if (this._15a._2Z())
            {
                _local3 = false;
                _local4 = false;
                for each (_local5 in _arg1)
                {
                    if (((!(_local3)) && (this._15a._1Ui.FL(_local5))))
                    {
                        this._15a._1Ui.rank = _local5.rank;
                        _local2.push(this._15a._1Ui);
                        _local3 = true;
                    }
                    if (_local5._1L3)
                    {
                        _local4 = true;
                    }
                    if (_local3)
                    {
                        _local5.rank++;
                    }
                    _local2.push(_local5);
                }
                if ((((((_local2.length < 20)) && (!(_local3)))) && (!(_local4))))
                {
                    this._15a._1Ui.rank = (_local2.length + 1);
                    _local2.push(this._15a._1Ui);
                }
            }
            return ((((_local2.length > 0)) ? _local2 : _arg1));
        }

        private function _1YV(_arg1:Vector.<_0EB>):Vector.<_0EB>{
            var _local3:Boolean;
            var _local4:_0EB;
            var _local5:_0EB;
            var _local2:int = -1;
            if (this._15a._2Z())
            {
                _local3 = false;
                _local4 = this._15a._1Ui;
                for each (_local5 in _arg1)
                {
                    if (((_local5._1L3) && (_local4.FL(_local5))))
                    {
                        _local2 = (_local5.rank - 1);
                        _local3 = true;
                    } else
                    {
                        if (_local3)
                        {
                            _local5.rank--;
                        }
                    }
                }
            }
            if (_local2 != -1)
            {
                _arg1.splice(_local2, 1);
            }
            return (_arg1);
        }

        private function _1FS(_arg1:XML, _arg2:int):_0EB{
            var _local10:_0tK;
            var _local11:XML;
            var _local3:_0EB = new _0EB();
            _local3._1L3 = _arg1.hasOwnProperty("IsPersonalRecord");
            _local3._0e8 = _arg1.Time;
            _local3.name = _arg1.PlayData.CharacterData.Name;
            _local3.rank = ((_arg1.hasOwnProperty("Rank")) ? _arg1.Rank : _arg2);
            var _local4:int = _arg1.PlayData.CharacterData.Texture;
            var _local5:int = _arg1.PlayData.CharacterData.Class;
            var _local6:_0dE = this._1z8._7k(_local5);
            var _local7:_1iY = _local6._0sP._15c(_local4);
            var _local8:int = ((_arg1.PlayData.CharacterData.hasOwnProperty("Tex1")) ? _arg1.PlayData.CharacterData.Tex1 : 0);
            var _local9:int = ((_arg1.PlayData.CharacterData.hasOwnProperty("Tex2")) ? _arg1.PlayData.CharacterData.Tex2 : 0);
            _local3._1me = this.factory.makeIcon(_local7._26, 100, _local8, _local9);
            _local3._1AM = ConversionUtil._0HU(_arg1.PlayData.CharacterData.Inventory);
            _local3.Zm = _local6.Zm;
            _local3.guildName = _arg1.PlayData.CharacterData.GuildName;
            _local3.ew = _arg1.PlayData.CharacterData.GuildRank;
            _local3.R = _arg1.WaveNumber;
            if (_arg1.PlayData.hasOwnProperty("Pet"))
            {
                _local10 = new _0tK();
                _local11 = new XML(_arg1.PlayData.Pet);
                _local10.apply(_local11);
                _local3.pet = _local10;
            }
            return (_local3);
        }


    }
}//package 0Uq

