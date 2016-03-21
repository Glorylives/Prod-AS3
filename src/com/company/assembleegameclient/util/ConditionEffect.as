// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.ConditionEffect

package com.company.assembleegameclient.util{
import _1yZ._1go;

import _AO._du;

import flash.filters.GlowFilter;
    import flash.filters.BitmapFilterQuality;
    import flash.display.BitmapData;
    import flash.geom.Matrix;
    import com.company.util.AssetLibrary;
    import com.company.util.PointUtil;

    public class ConditionEffect {

        public static const _05F:uint = 0;
        public static const _0z8:uint = 1;
        public static const _1Yq:uint = 2;
        public static const _0Wz:uint = 3;
        public static const _02b:uint = 4;
        public static const _1pj:uint = 5;
        public static const _1Kw:uint = 6;
        public static const _1KS:uint = 7;
        public static const _0nM:uint = 8;
        public static const _1Ow:uint = 9;
        public static const gk:uint = 10;
        public static const _1s1:uint = 11;
        public static const m9:uint = 12;
        public static const _0cm:uint = 13;
        public static const _1tv:uint = 14;
        public static const _0vs:uint = 15;
        public static const A1:uint = 16;
        public static const Kc:uint = 17;
        public static const _16C:uint = 18;
        public static const _0FD:uint = 19;
        public static const _0Hz:uint = 20;
        public static const _0uP:uint = 21;
        public static const _1RI:uint = 22;
        public static const _69:uint = 23;
        public static const _1aV:uint = 24;
        public static const j:uint = 25;
        public static const _6:uint = 26;
        public static const Ei:uint = 27;
        public static const Ar:uint = 28;
        public static const _0nk:uint = 29;
        public static const _1a:uint = 30;
        public static const xW:uint = 31;
        public static const _0Mx:uint = 32;
        public static const _0NC:uint = 33;
        public static const _0Q9:uint = 34;
        public static const E7:uint = 35;
        public static const _0Dx:uint = 36;
        public static const J:uint = 37;
        public static const _0gF:uint = 38;
        public static const MG:uint = 39;
        public static const NO:uint = 40;
        public static const _0L8:uint = 41;
        public static const O5:uint = 42;
        public static const _1nV:uint = 43;
        public static const _22Z:uint = 44;
        public static const NG:uint = 45;
        public static const _use:uint = 46;
        public static const x7:uint = 47;
        public static const _14N:uint = 99;
        public static const _1eU:uint = (1 << (_0z8 - 1));
        public static const _0Iy:uint = (1 << (_1Yq - 1));
        public static const _1a6:uint = (1 << (_0Wz - 1));
        public static const _0dL:uint = (1 << (_02b - 1));
        public static const _124:uint = (1 << (_1pj - 1));
        public static const wl:uint = (1 << (_1Kw - 1));
        public static const _1LC:uint = (1 << (_1KS - 1));
        public static const _1dB:uint = (1 << (_0nM - 1));
        public static const _1M2:uint = (1 << (_1Ow - 1));
        public static const wO:uint = (1 << (gk - 1));
        public static const Ox:uint = (1 << (_1s1 - 1));
        public static const _0MN:uint = (1 << (m9 - 1));
        public static const _2d:uint = (1 << (_0cm - 1));
        public static const _189:uint = (1 << (_1tv - 1));
        public static const _1Vc:uint = (1 << (_0vs - 1));
        public static const jo:uint = (1 << (A1 - 1));
        public static const _1m:uint = (1 << (Kc - 1));
        public static const mk:uint = (1 << (_16C - 1));
        public static const sf:uint = (1 << (_0FD - 1));
        public static const _0Tq:uint = (1 << (_0Hz - 1));
        public static const _1WM:uint = (1 << (_0uP - 1));
        public static const _1bo:uint = (1 << (_1RI - 1));
        public static const  _case:uint = (1 << (_69 - 1));
        public static const _0pU:uint = (1 << (_1aV - 1));
        public static const uW:uint = (1 << (j - 1));
        public static const _1Z4:uint = (1 << (6 - 1));
        public static const _0Sa:uint = (1 << (Ei - 1));
        public static const _1QC:uint = (1 << (Ar - 1));
        public static const _1Cl:uint = (1 << (_0nk - 1));
        public static const _1KF:uint = (1 << (_1a - 1));
        public static const _1fb:uint = (1 << (xW - 1));
        public static const _1ND:uint = (1 << (_0Mx - _1mQ));
        public static const _22v:uint = (1 << (_0NC - _1mQ));
        public static const _0AT:uint = (1 << (_0Q9 - _1mQ));
        public static const _1GL:uint = (1 << (E7 - _1mQ));
        public static const _1P3:uint = (1 << (_0Dx - _1mQ));
        public static const _170:uint = (1 << (J - _1mQ));
        public static const _0Du:uint = (1 << (_0gF - _1mQ));
        public static const _1HL:uint = (1 << (MG - _1mQ));
        public static const _0gz:uint = (1 << (NO - _1mQ));
        public static const _00E:uint = (1 << (_0L8 - _1mQ));
        public static const _0fk:uint = (1 << (O5 - _1mQ));
        public static const _0DN:uint = (1 << (_1nV - _1mQ));
        public static const _0wj:uint = (1 << (_22Z - _1mQ));
        public static const _1fh:uint = (1 << (NG - _1mQ));
        public static const _0R:uint = (1 << (_use - _1mQ));
        public static const _03x:uint = (1 << (x7 - _1mQ));
        public static const _1De:uint = ((wO | _1dB) | _1WM);
        public static const _26x:uint = 0;
        public static const ex:uint = 1;
        public static const _01L:uint = 2;
        public static const _1mQ:uint = 32;
        private static const GLOW_FILTER:GlowFilter = new GlowFilter(0, 0.3, 6, 6, 2, BitmapFilterQuality.LOW, false, false);

        public static var effects_:Vector.<ConditionEffect> = new <ConditionEffect>[new ConditionEffect("Nothing", 0, null, _du._1sh), new ConditionEffect("Dead", _1eU, null, _du._1s), new ConditionEffect("Quiet", _0Iy, [32], _du._13R), new ConditionEffect("Weak", _1a6, [34, 35, 36, 37], _du._0jP), new ConditionEffect("Slowed", _0dL, [1], _du._0sH), new ConditionEffect("Sick", 124, [39], _du._1mH), new ConditionEffect("Dazed", wl, [44], _du._0p1), new ConditionEffect("Stunned", _1LC, [45], _du._1L7), new ConditionEffect("Blind", _1dB, [41], _du._1Sp), new ConditionEffect("Hallucinating", _1M2, [42], _du._16i), new ConditionEffect("Drunk", wO, [43], _du._TL), new ConditionEffect("Confused", Ox, [2], _du._0X), new ConditionEffect("Stun Immune", _0MN, null, _du._3p), new ConditionEffect("Invisible", 2-d, null, _du._1vc), new ConditionEffect("Paralyzed", 189, [53, 54], _du._0BF), new ConditionEffect("Speedy", _1Vc, [0], _du._1Fu), new ConditionEffect("Bleeding", jo, [46], _du._0Z4), new ConditionEffect("Armor Broken Immune", _1m, null, _du._0BE), new ConditionEffect("Healing", mk, [47], _du._22H), new ConditionEffect("Damaging", sf, [49], _du._12V), new ConditionEffect("Berserk", _0Tq, [50], _du._18w), new ConditionEffect("Paused", _1WM, null, _du._20), new ConditionEffect("Stasis", _1bo, null, _du._06d), new ConditionEffect("Stasis Immune", _case, null, _du._10W), new ConditionEffect("Invincible", _0pU, null, _du._23e), new ConditionEffect("Invulnerable", uW, [17], _du._0TJ), new ConditionEffect("Armored", _1Z4, [16], _du._0u4), new ConditionEffect("Armor Broken", _0Sa, [55], _du._1Nx), new ConditionEffect("Hexed", _1QC, [42], _du._1sk), new ConditionEffect("Ninja Speedy", _1Cl, [0], _du._GZ), new ConditionEffect("Unstable", _1KF, [56], _du._1Ts), new ConditionEffect("Darkness", _1fb, [57], _du._jt), new ConditionEffect("Slowed Immune", _1ND, null, _du._9s), new ConditionEffect("Dazed Immune", _22v, null, _du._0aQ), new ConditionEffect("Paralyzed Immune", _0AT, null, _du._0iE), new ConditionEffect("Petrify", _1GL, null, _du._168), new ConditionEffect("Petrify Immune", _1P3, null, _du._0mP), new ConditionEffect("Pet Disable", 170, [27], _du._06d, true), new ConditionEffect("Curse", _0Du, [58], _du._pg), new ConditionEffect("Curse Immune", _1HL, null, _du._M1), new ConditionEffect("HP Boost", _0gz, [32], "HP Boost", true), new ConditionEffect("MP Boost", _00E, [33], "MP Boost", true), new ConditionEffect("Att Boost", _0fk, [34], "Att Boost", true), new ConditionEffect("Def Boost", _0DN, [35], "Def Boost", true), new ConditionEffect("Spd Boost", _0wj, [36], "Spd Boost", true), new ConditionEffect("Vit Boost", _1fh, [38], "Vit Boost", true), new ConditionEffect("Wis Boost", _0R, [39], "Wis Boost", true), new ConditionEffect("Dex Boost", _03x, [37], "Dex Boost", true)];
        private static var g1:Object = null;
        private static var _131:Object = null;
        private static var Gk:Object = null;
        private static var _03M:Object = null;

        public var name_:String;
        public var bit_:uint;
        public var iconOffsets_:Array;
        public var _03v:String;
        public var icon16Bit_:Boolean;

        public function ConditionEffect(_arg1:String, _arg2:uint, _arg3:Array, _arg4:String="", _arg5:Boolean=false){
            this.name_ = _arg1;
            this.bit_ = _arg2;
            this.iconOffsets_ = _arg3;
            this._03v = _arg4;
            this.icon16Bit_ = _arg5;
        }

        public static function _1WI(_arg1:String):uint{
            var _local2:uint;
            if (g1 == null)
            {
                g1 = new Object();
                _local2 = 0;
                while (_local2 < effects_.length)
                {
                    g1[effects_[_local2].name_] = _local2;
                    _local2++;
                }
            }
            return (g1[_arg1]);
        }

        public static function _5X(_arg1:String):ConditionEffect{
            var _local2:ConditionEffect;
            for each (_local2 in effects_)
            {
                if (_local2.name_ == _arg1)
                {
                    return (_local2);
                }
            }
            return (null);
        }

        public static function _1xP(_arg1:uint, _arg2:Vector.<BitmapData>, _arg3:int):void{
            var _local4:uint;
            var _local5:uint;
            var _local6:Vector.<BitmapData>;
            while (_arg1 != 0)
            {
                _local4 = (_arg1 & (_arg1 - 1));
                _local5 = (_arg1 ^ _local4);
                _local6 = _1zW(_local5);
                if (_local6 != null)
                {
                    _arg2.push(_local6[(_arg3 % _local6.length)]);
                }
                _arg1 = _local4;
            }
        }

        public static function getConditionEffectIcons2(_arg1:uint, _arg2:Vector.<BitmapData>, _arg3:int):void{
            var _local4:uint;
            var _local5:uint;
            var _local6:Vector.<BitmapData>;
            while (_arg1 != 0)
            {
                _local4 = (_arg1 & (_arg1 - 1));
                _local5 = (_arg1 ^ _local4);
                _local6 = getIconsFromBit2(_local5);
                if (_local6 != null)
                {
                    _arg2.push(_local6[(_arg3 % _local6.length)]);
                }
                _arg1 = _local4;
            }
        }

        public static function cY(_arg1:Vector.<BitmapData>, _arg2:int, _arg3:Boolean):void{
            var _local4:BitmapData;
            var _local5:Matrix;
            var _local6:Matrix;
            if (_131 == null)
            {
                _131 = {}
            }
            if (131[_arg2])
            {
                _local4 = 131[_arg2];
            } else
            {
                _local5 = new Matrix();
                _local5.translate(4, 4);
                _local6 = new Matrix();
                _local6.translate(1.5, 1.5);
                if (_arg3)
                {
                    _local4 = new HL(18, 18, true, 0);
                    _local4.draw(AssetLibrary._1JR("lofiInterfaceBig", _arg2), _local6);
                } else
                {
                    _local4 = new HL(16, 16, true, 0);
                    _local4.draw(AssetLibrary._1JR("lofiInterface2", _arg2), _local5);
                }
                _local4 = _1go._0Lr(_local4, 0xFFFFFFFF);
                _local4.applyFilter(_local4, _local4.rect, PointUtil._1EH, GLOW_FILTER);
                131[_arg2] = _local4;
            }
            _arg1.push(_local4);
        }

        private static function _1zW(_arg1:uint):Vector.<BitmapData>{
            var _local2:Matrix;
            var _local3:uint;
            var _local4:Vector.<BitmapData>;
            var _local5:int;
            var _local6:BitmapData;
            if (Gk == null)
            {
                Gk = new Object();
                _local2 = new Matrix();
                _local2.translate(4, 4);
                _local3 = 0;
                while (_local3 < 32)
                {
                    _local4 = null;
                    if (effects_[_local3].iconOffsets_ != null)
                    {
                        _local4 = new Vector.<BitmapData>();
                        _local5 = 0;
                        while (_local5 < effects_[_local3].iconOffsets_.length)
                        {
                            _local6 = new HL(16, 16, true, 0);
                            _local6.draw(AssetLibrary._1JR("lofiInterface2", effects_[_local3].iconOffsets_[_local5]), _local2);
                            _local6 = _1go._0Lr(_local6, 0xFFFFFFFF);
                            _local6.applyFilter(_local6, _local6.rect, PointUtil._1EH, GLOW_FILTER);
                            _local4.push(_local6);
                            _local5++;
                        }
                    }
                    Gk[effects_[_local3].bit_] = _local4;
                    _local3++;
                }
            }
            return (Gk[_arg1]);
        }

        private static function getIconsFromBit2(_arg1:uint):Vector.<BitmapData>{
            var _local2:Vector.<BitmapData>;
            var _local3:BitmapData;
            var _local4:Matrix;
            var _local5:Matrix;
            var _local6:uint;
            var _local7:int;
            if (_03M == null)
            {
                _03M = [];
                _local2 = new Vector.<BitmapData>();
                _local4 = new Matrix();
                _local4.translate(4, 4);
                _local5 = new Matrix();
                _local5.translate(1.5, 1.5);
                _local6 = 32;
                while (_local6 < effects_.length)
                {
                    _local2 = null;
                    if (effects_[_local6].iconOffsets_ != null)
                    {
                        _local2 = new Vector.<BitmapData>();
                        _local7 = 0;
                        while (_local7 < effects_[_local6].iconOffsets_.length)
                        {
                            if (effects_[_local6].icon16Bit_)
                            {
                                _local3 = new HL(18, 18, true, 0);
                                _local3.draw(AssetLibrary._1JR("lofiInterfaceBig", effects_[_local6].iconOffsets_[_local7]), _local5);
                            } else
                            {
                                _local3 = new HL(16, 16, true, 0);
                                _local3.draw(AssetLibrary._1JR("lofiInterface2", effects_[_local6].iconOffsets_[_local7]), _local4);
                            }
                            _local3 = _1go._0Lr(_local3, 0xFFFFFFFF);
                            _local3.applyFilter(_local3, _local3.rect, PointUtil._1EH, GLOW_FILTER);
                            _local2.push(_local3);
                            _local7++;
                        }
                    }
                    _03M[effects_[_local6].bit_] = _local2;
                    _local6++;
                }
            }
            if (((!((_03M == null))) && (!((_03M[_arg1] == null)))))
            {
                return (_03M[_arg1]);
            }
            return (null);
        }


    }
}//package com.company.assembleegameclient.util

