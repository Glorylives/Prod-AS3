// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.EquipmentToolTip

package _0qj{
import _1n4.AppendingLineBuilder;
import _1n4._1WS;
import _1n4._1cA;

import com.company.assembleegameclient.ui._1p;

import flash.display.Bitmap;
    import _CU._13j;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import flash.filters.DropShadowFilter;
    import _AO._du;
    import flash.display.BitmapData;
    import com.company.util.BitmapUtil;
    import g0.StatData;
    import com.company.assembleegameclient.parameters.Parameters;

    public class EquipmentToolTip extends _1ae {

        private static const _1bH:int = 230;

        private var icon:Bitmap;
        public var Yi:_13j;
        private var _0ym:_13j;
        private var SG:_13j;
        private var line1:_1p;
        private var _0Ya:_13j;
        private var line2:_1p;
        private var Gn:_13j;
        private var player:Player;
        private var _0rZ:Boolean = false;
        private var objectType:int;
        private var curItemXML:XML = null;
        private var _0o4:XML = null;
        private var _1jD:_13P;
        private var _1Qz:Vector.<Restriction>;
        private var _1EF:Vector.<Effect>;
        private var _1gU:Vector.<Effect>;
        private var _013:int;
        private var _0Rs:int;
        private var _0FL:uint;
        private var _0Gh:String;
        private var _9V:Boolean;
        private var _0Bw:Boolean;
        private var _07x:_02M;
        private var _0yi:_13j;

        public function EquipmentToolTip(_arg1:int, _arg2:Player, _arg3:int, _arg4:String){
            this._1gU = new Vector.<Effect>();
            this.objectType = _arg1;
            this.player = _arg2;
            this._0Rs = _arg3;
            this._0Gh = _arg4;
            this._9V = ((_arg2) ? _arg2._9V() : false);
            this._0Bw = ((_arg2) ? ObjectLibrary._0dd(_arg1, _arg2) : false);
            var __local5:int = ((_arg2) ? ObjectLibrary.Hq(_arg1, _arg2) : -1);
            var _local6:uint = ((((this._0Bw) || ((this.player == null)))) ? 0x363636 : 6036765);
            var _local7:uint = ((((this._0Bw) || ((_arg2 == null)))) ? 0x9B9B9B : 10965039);
            super(_local6, 1, _local7, 1, true);
            this._1jD = new _13P();
            this._0o4 = ObjectLibrary.GD[_arg1];
            this._0rZ = !((_local5 == -1));
            this._1EF = new Vector.<Effect>();
            this._013 = int(this._0o4.SlotType);
            if (this.player == null)
            {
                this.curItemXML = this._0o4;
            } else
            {
                if (this._0rZ)
                {
                    if (this.player._1Wz[_local5] != -1)
                    {
                        this.curItemXML = ObjectLibrary.GD[this.player._1Wz[_local5]];
                    }
                }
            }
            this._0IT();
            this._0sK();
            this._0t1();
            this._0B3();
            this.gA();
            this.yh();
            this._15n();
            this._0YX();
            this.ht();
            this._0sX();
            this._0P1();
            this._0L9();
            this._1bq();
            this.X2();
            this._1R();
            this._21p();
            this.wa();
            this._1W();
            this._24B();
        }

        private function _24B():void{
            var _local1:int;
            if (this._0o4.hasOwnProperty("feedPower"))
            {
                _local1 = ((((this._0Bw) || ((this.player == null)))) ? 0xFFFFFF : 16549442);
                this._0yi = new _13j().setSize(12).setColor(_local1).setBold(true).setTextWidth((((_1bH - this.icon.width) - 4) - 30)).setWordWrap(true);
                this._0yi.setStringBuilder(new _1WS().setString(("Feed Power: " + this._0o4.feedPower)));
                this._0yi.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
                _1he.push(this._0yi.textChanged);
                addChild(this._0yi);
            }
        }

        private function _15n():void{
            var _local1:XMLList;
            var _local2:XML;
            var _local3:String;
            var _local4:String;
            var _local5:String;
            var _local6:AppendingLineBuilder;
            if (this._0o4.hasOwnProperty("ExtraTooltipData"))
            {
                _local1 = this._0o4.ExtraTooltipData.EffectInfo;
                for each (_local2 in _local1)
                {
                    _local3 = _local2.attribute("name");
                    _local4 = _local2.attribute("description");
                    _local5 = ((((_local3) && (_local4))) ? ": " : "\n");
                    _local6 = new AppendingLineBuilder();
                    if (_local3)
                    {
                        _local6.pushParams(_local3);
                    }
                    if (_local4)
                    {
                        _local6.pushParams(_local4, {}, TR._1pw(16777103), TR._17H());
                    }
                    _local6.setDelimiter(_local5);
                    this._1gU.push(new Effect(_du._1h6, {data:_local6}));
                }
            }
        }

        private function Hx():Boolean{
            return (((this._0rZ) && ((this.curItemXML == null))));
        }

        private function _0IT():void{
            var _local1:XML = ObjectLibrary.GD[this.objectType];
            var _local2:int = 5;
            if ((((this.objectType == 4874)) || ((this.objectType == 4618))))
            {
                _local2 = 8;
            }
            if (_local1.hasOwnProperty("ScaleValue"))
            {
                _local2 = _local1.ScaleValue;
            }
            var _local3:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.objectType, 60, true, true, _local2);
            _local3 = BitmapUtil._0Bs(_local3, 4, 4, (_local3.width - 8), (_local3.height - 8));
            this.icon = new Bitmap(_local3);
            addChild(this.icon);
        }

import _AO._du;

private function _0t1():void{
            var _local1 = (this.tI() == false);
            var _local2 = (this._0o4.hasOwnProperty("Consumable") == false);
            var _local3 = (this._0o4.hasOwnProperty("Treasure") == false);
            var _local4:Boolean = this._0o4.hasOwnProperty("Tier");
            if (((((_local1) && (_local2))) && (_local3)))
            {
                this._0ym = new _13j().setSize(16).setColor(0xFFFFFF).setTextWidth(30).setBold(true);
                if (_local4)
                {
                    this._0ym.setStringBuilder(new _1cA().setParams(_du._l0, {tier:this._0o4.Tier}));
                } else
                {
                    if (this._0o4.hasOwnProperty("@setType"))
                    {
                        this._0ym.setColor(0xFF9900);
                        this._0ym.setStringBuilder(new _1WS("ST"));
                    } else
                    {
                        this._0ym.setColor(9055202);
                        this._0ym.setStringBuilder(new _1cA().setParams(_du._eg));
                    }
                }
                addChild(this._0ym);
            }
        }

        private function tI():Boolean{
            var activateTags:XMLList;
            activateTags = this._0o4.Activate.(text() == "PermaPet");
            return ((activateTags.length() >= 1));
        }

        private function _0sK():void{
            var _local1:int = ((((this._0Bw) || ((this.player == null)))) ? 0xFFFFFF : 16549442);
            this.Yi = new _13j().setSize(16).setColor(_local1).setBold(true).setTextWidth((((_1bH - this.icon.width) - 4) - 30)).setWordWrap(true);
            this.Yi.setStringBuilder(new _1cA().setParams(ObjectLibrary._118[this.objectType]));
            this.Yi.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            _1he.push(this.Yi.textChanged);
            addChild(this.Yi);
        }

        private function _0R():String{
            var _local1:XMLList;
            var _local2:Vector.<Effect>;
            var _local3:XML;
            if (this._0o4.hasOwnProperty("ExtraTooltipData"))
            {
                _local1 = this._0o4.ExtraTooltipData.EffectInfo;
                _local2 = new Vector.<Effect>();
                for each (_local3 in _local1)
                {
                    _local2.push(new Effect(_local3.attribute("name"), _local3.attribute("description")));
                }
            }
            return ("");
        }

        private function _1R():void{
            var _local1:AppendingLineBuilder;
            if (((((!((this._1EF.length == 0))) || (!((this._07x.zM == null))))) || (this._0o4.hasOwnProperty("ExtraTooltipData"))))
            {
                this.line1 = new _1p((_1bH - 12), 0);
                this._0Ya = new _13j().setSize(14).setColor(0xB3B3B3).setTextWidth(_1bH).setWordWrap(true).setHTML(true);
                _local1 = this._04p();
                this._0Ya.setStringBuilder(_local1);
                this._0Ya.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
                if (_local1._0My())
                {
                    addChild(this.line1);
                    addChild(this._0Ya);
                }
            }
        }

        private function _04p():AppendingLineBuilder{
            var _local1:AppendingLineBuilder = new AppendingLineBuilder();
            this. do(this._1gU, _local1);
            if (this._07x.zM._0My())
            {
                _local1.pushParams(_du._1h6, {data:this._07x.zM});
            }
            this._do(this._1EF, _local1);
            return (_local1);
        }

        private function  _do(_arg1:Vector.<Effect>, _arg2:AppendingLineBuilder):void{
            var _local3:Effect;
            var _local4:String;
            var _local5:String;
            for each (_local3 in _arg1)
            {
                _local4 = "";
                _local5 = "";
                if (_local3.color_)
                {
                    _local4 = (('<font color="#' + _local3.color_.toString(16)) + '">');
                    _local5 = "</font>";
                }
                _arg2.pushParams(_local3.name_, _local3.getValueReplacementsWithColor(), _local4, _local5);
            }
        }

        private function _0YX():void{
            if (((this._0o4.hasOwnProperty("NumProjectiles")) && (!((this._07x.ZX.hasOwnProperty(this._0o4.NumProjectiles.toXMLString()) == true)))))
            {
                this._1EF.push(new Effect(_du._01s, {numShots:this._0o4.NumProjectiles}));
            }
        }

        private function X2():void{
            var _local1:int;
            var _local2:uint;
            var _local3:int;
            if (this._0o4.hasOwnProperty("FameBonus"))
            {
                _local1 = int(this._0o4.FameBonus);
                _local2 = ((this._0Bw) ? TR.1HG : TR.1U4);
                if (((!((this.curItemXML == null))) && (this.curItemXML.hasOwnProperty("FameBonus"))))
                {
                    _local3 = int(this.curItemXML.FameBonus.text());
                    _local2 = TR.1kE((_local1 - _local3));
                }
                this._1EF.push(new Effect(_du.243, {percent:(this._0o4.FameBonus + "%")}).setReplacementsColor(_local2));
            }
        }

        private function _1bq():void{
            if (this._0o4.hasOwnProperty("MpEndCost"))
            {
                if (!this._07x.ZX[this._0o4.MpEndCost[0].toXMLString()])
                {
                    this._1EF.push(new Effect(_du._09M, {cost:this._0o4.MpEndCost}));
                }
            } else
            {
                if (((this._0o4.hasOwnProperty("MpCost")) && (!(this._07x.ZX[this._0o4.MpCost[0].toXMLString()]))))
                {
                    if (!this._07x.ZX[this._0o4.MpCost[0].toXMLString()])
                    {
                        this._1EF.push(new Effect(_du._09M, {cost:this._0o4.MpCost}));
                    }
                }
            }
        }

        private function _0L9():void{
            if (this._0o4.hasOwnProperty("Doses"))
            {
                this._1EF.push(new Effect(_du.xf, {dose:this._0o4.Doses}));
            }
        }

        private function ht():void{
            var _local1:XML;
            var _local2:int;
            var _local3:int;
            var _local4:Number;
            var _local5:XML;
            if (((this._0o4.hasOwnProperty("Projectile")) && (!(this._07x.ZX.hasOwnProperty(this._0o4.Projectile.toXMLString())))))
            {
                _local1 = XML(this._0o4.Projectile);
                _local2 = int(_local1.MinDamage);
                _local3 = int(_local1.MaxDamage);
                this._1EF.push(new Effect(_du.DAMAGE, {damage:(((_local2 == _local3)) ? _local2 : ((_local2 + " - ") + _local3)).toString()}));
                _local4 = ((Number(_local1.Speed) * Number(_local1.LifetimeMS)) / 10000);
                this._1EF.push(new Effect(_du._1x5, {range:TR.rI(_local4)}));
                if (this._0o4.Projectile.hasOwnProperty("MultiHit"))
                {
                    this._1EF.push(new Effect(_du._0YQ, {}).setColor(TR.1U4));
                }
                if (this._0o4.Projectile.hasOwnProperty("PassesCover"))
                {
                    this._1EF.push(new Effect(_du._12u, {}).setColor(TR.1U4));
                }
                if (this._0o4.Projectile.hasOwnProperty("ArmorPiercing"))
                {
                    this._1EF.push(new Effect(_du.if , {}).setColor(TR.1U4));
                }
                for each (_local5 in _local1.ConditionEffect)
                {
                    if (this._07x.ZX[_local5.toXMLString()] != null)
                    {
                    } else
                    {
                        this._1EF.push(new Effect(_du._0ZE, {effect:""}));
                        this._1EF.push(new Effect(_du._0P9, {
                            effect:this._0o4.Projectile.ConditionEffect,
                            duration:this._0o4.Projectile.ConditionEffect.@duration
                        }).setColor(TR.1U4));
                    }
                }
            }
        }

        private function _0sX():void{
            var _local1:XML;
            var _local2:String;
            var _local3:int;
            var _local4:int;
            var _local5:String;
            var _local6:String;
            var _local7:Object;
            var _local8:String;
            var _local9:uint;
            var _local10:XML;
            var _local11:Object;
            var _local12:String;
            var _local13:uint;
            var _local14:XML;
            var _local15:String;
            var _local16:Object;
            var _local17:String;
            var _local18:Object;
            var _local19:Number;
            var _local20:Number;
            var _local21:Number;
            var _local22:Number;
            var _local23:Number;
            var _local24:Number;
            var _local25:Number;
            var _local26:Number;
            var _local27:Number;
            var _local28:Number;
            var _local29:Number;
            var _local30:Number;
            var _local31:AppendingLineBuilder;
            for each (_local1 in this._0o4.Activate)
            {
                _local5 = this._07x.ZX[_local1.toXMLString()];
                if (this._07x.ZX[_local1.toXMLString()] == true)
                {
                } else
                {
                    _local6 = _local1.toString();
                    switch (_local6)
                    {
                        case 0MX.Oa:
                            this._1EF.push(new Effect(_du.Nk, {effect:new AppendingLineBuilder().pushParams(_du.l, {range:_local1.@range}, TR.1pw(TR.1U4), TR.17H())}));
                            this._1EF.push(new Effect(_du._0P9, {
                                effect:_local1.@effect,
                                duration:_local1.@duration
                            }).setColor(TR.1U4));
                            break;
                        case 0MX.1YG:
                            this._1EF.push(new Effect(_du._1Dr, {effect:""}));
                            this._1EF.push(new Effect(_du._0P9, {
                                effect:_local1.@effect,
                                duration:_local1.@duration
                            }));
                            break;
                        case 0MX.136:
                            this._1EF.push(new Effect(_du.Wj, {
                                statAmount:(("+" + _local1.@amount) + " "),
                                statName:new 1cA().setParams(_du._10h)
                            }));
                            break;
                        case 0MX.0BM:
                            this._1EF.push(new Effect(_du._0HX, {effect:new AppendingLineBuilder().pushParams(_du._1ge, {
                                    amount:_local1.@amount,
                                    range:_local1.@range
                                }, TR.1pw(TR.1U4), TR.17H())}));
                            break;
                        case 0MX.1o8:
                            this._1EF.push(new Effect(_du.Wj, {
                                statAmount:(("+" + _local1.@amount) + " "),
                                statName:new 1cA().setParams(_du._0b-)
                            }));
                            break;
                        case 0MX.0Cp:
                            this._1EF.push(new Effect(_du._1MF, (((_local1.@amount + " MP at ") + _local1.@range) + " sqrs")));
                            break;
                        case 0MX.TELEPORT:
                            this._1EF.push(new Effect(_du._1h6, {data:new 1cA().setParams(_du._1l7)}));
                            break;
                        case 0MX.0W1:
                            this._1EF.push(new Effect(_du.wB, {effect:new AppendingLineBuilder().pushParams(_du._1ge, {
                                    amount:_local1.@totalDamage,
                                    range:_local1.@radius
                                }, TR.1pw(TR.1U4), TR.17H())}));
                            break;
                        case 0MX.0ny:
                            _local7 = ((_local1.hasOwnProperty("@condEffect")) ? _local1.@condEffect : new 1cA().setParams(_du._0sH));
                            _local8 = ((_local1.hasOwnProperty("@condDuration")) ? _local1.@condDuration : "5");
                            this._1EF.push(new Effect(_du._0ny, {data:new AppendingLineBuilder().pushParams(_du._1ge, {
                                    amount:_local1.@totalDamage,
                                    range:_local1.@radius
                                }, TR.1pw(TR.1U4), TR.17H()).pushParams(_du._0P9, {
                                    effect:_local7,
                                    duration:_local8
                                }, TR.1pw(TR.1U4), TR.17H())}));
                            break;
                        case 0MX.Oc:
                            this._1EF.push(new Effect(_du._1Rm, {stasis:new AppendingLineBuilder().pushParams(_du._1oV, {duration:_local1.@duration}, TR.1pw(TR.1U4), TR.17H())}));
                            break;
                        case 0MX.18W:
                            this._1EF.push(new Effect(_du._18W, {data:new AppendingLineBuilder().pushParams(_du._1oV, {duration:_local1.@duration}, TR.1pw(TR.1U4), TR.17H())}));
                            break;
                        case 0MX.07W:
                            this._1EF.push(new Effect(_du._07W, {data:new AppendingLineBuilder().pushParams(_du._1bC, {
                                    damage:_local1.@totalDamage,
                                    targets:_local1.@maxTargets
                                }, TR.1pw(TR.1U4), TR.17H())}));
                            break;
                        case 0MX.22a:
                            this._1EF.push(new Effect(_du.22a, {data:""}));
                            this._1EF.push(new Effect(_du._1n7, {
                                damage:_local1.@totalDamage,
                                duration:_local1.@duration,
                                radius:_local1.@radius
                            }).setColor(TR.1U4));
                            break;
                        case 0MX.hv:
                            this._1EF.push(new Effect(_du.OC, {}).setColor(TR.1U4));
                            break;
                        case 0MX.vn:
                            this._1EF.push(new Effect(_du.OC, {}).setColor(TR.1U4));
                            break;
                        case 0MX.0gf:
                            _local9 = 16777103;
                            if (this.curItemXML != null)
                            {
                                _local10 = this.rE(this.curItemXML, _local1.@effect);
                                if (_local10 != null)
                                {
                                    _local19 = Number(_local1.@range);
                                    _local20 = Number(_local10.@range);
                                    _local21 = Number(_local1.@duration);
                                    _local22 = Number(_local10.@duration);
                                    _local23 = ((_local19 - _local20) + (_local21 - _local22));
                                    if (_local23 > 0)
                                    {
                                        _local9 = 0xFF00;
                                    } else
                                    {
                                        if (_local23 < 0)
                                        {
                                            _local9 = 0xFF0000;
                                        }
                                    }
                                }
                            }
                            _local11 = {
                                range:_local1.@range,
                                effect:_local1.@effect,
                                duration:_local1.@duration
                            }
                            _local12 = "Within {range} sqrs {effect} for {duration} seconds";
                            if (_local1.@target != "enemy")
                            {
                                this._1EF.push(new Effect(_du.Nk, {effect:1cA.1b2(_local12, _local11)}).setReplacementsColor(_local9));
                            } else
                            {
                                this._1EF.push(new Effect(_du.pd, {effect:1cA.1b2(_local12, _local11)}).setReplacementsColor(_local9));
                            }
                            break;
                        case 0MX.Zr:
                            _local13 = 16777103;
                            if (this.curItemXML != null)
                            {
                                _local14 = this._1Sm(this.curItemXML, _local1.@stat);
                                if (_local14 != null)
                                {
                                    _local24 = Number(_local1.@range);
                                    _local25 = Number(_local14.@range);
                                    _local26 = Number(_local1.@duration);
                                    _local27 = Number(_local14.@duration);
                                    _local28 = Number(_local1.@amount);
                                    _local29 = Number(_local14.@amount);
                                    _local30 = (((_local24 - _local25) + (_local26 - _local27)) + (_local28 - _local29));
                                    if (_local30 > 0)
                                    {
                                        _local13 = 0xFF00;
                                    } else
                                    {
                                        if (_local30 < 0)
                                        {
                                            _local13 = 0xFF0000;
                                        }
                                    }
                                }
                            }
                            _local3 = int(_local1.@stat);
                            _local15 = 1cA.DO(StatData.1Ky(_local3));
                            _local16 = {
                                range:_local1.@range,
                                stat:_local15,
                                amount:_local1.@amount,
                                duration:_local1.@duration
                            }
                            _local17 = "Within {range} sqrs increase {stat} by {amount} for {duration} seconds";
                            this._1EF.push(new Effect(_du.Nk, {effect:1cA.1b2(_local17, _local16)}).setReplacementsColor(_local13));
                            break;
                        case 0MX.Wj:
                            _local3 = int(_local1.@stat);
                            _local4 = int(_local1.@amount);
                            _local18 = {}
                            if (((!((_local3 == StatData.14a))) && (!((_local3 == StatData.0X7)))))
                            {
                                _local2 = _du.H-;
                                _local18["statName"] = new 1cA().setParams(StatData.1Ky(_local3));
                                this._1EF.push(new Effect(_local2, _local18).setColor(16777103));
                                break;
                            }
                            _local2 = _du.1h6;
                            _local31 = new AppendingLineBuilder().setDelimiter(" ");
                            _local31.pushParams(_du._1h6, {data:new 1WS(("+" + _local4))});
                            _local31.pushParams(StatData.1Ky(_local3));
                            _local18["data"] = _local31;
                            this._1EF.push(new Effect(_local2, _local18));
                            break;
                    }
                }
            }
        }

        private function rE(_arg1:XML, _arg2:String):XML{
            var matches:XMLList;
            var tag:XML;
            var xml:XML = _arg1;
            var effectValue:String = _arg2;
            matches = xml.Activate.(text() == 0MX.0gf);
            for each (tag in matches)
            {
                if (tag.@effect == effectValue)
                {
                    return (tag);
                }
            }
            return (null);
        }

        private function 1Sm(_arg1:XML, _arg2:String):XML{
            var matches:XMLList;
            var tag:XML;
            var xml:XML = _arg1;
            var statValue:String = _arg2;
            matches = xml.Activate.(text() == 0MX.Zr);
            for each (tag in matches)
            {
                if (tag.@stat == statValue)
                {
                    return (tag);
                }
            }
            return (null);
        }

        private function 0P1():void{
            var _local1:XML;
            var _local2:Boolean = true;
            for each (_local1 in this._0o4.ActivateOnEquip)
            {
                if (_local2)
                {
                    this._1EF.push(new Effect(_du._0bj, ""));
                    _local2 = false;
                }
                if (_local1.toString() == "IncrementStat")
                {
                    this._1EF.push(new Effect(_du.Wj, this._1FR(_local1)).setReplacementsColor(this._0-y(_local1)));
                }
            }
        }

        private function 1FR(_arg1:XML):Object{
            var _local2:int = int(_arg1.@stat);
            var _local3:int = int(_arg1.@amount);
            var _local4:String = (((_local3)>-1) ? "+" : "");
            return ({
                statAmount:((_local4 + String(_local3)) + " "),
                statName:new 1cA().setParams(StatData.1Ky(_local2))
            });
        }

        private function 0-y(_arg1:XML):uint{
            var match:XML;
            var otherAmount:int;
            var activateXML:XML = _arg1;
            var stat:int = int(activateXML.@stat);
            var amount:int = int(activateXML.@amount);
            var textColor:uint = ((this._0Bw) ? TR.1HG : TR.1U4);
            var otherMatches:XMLList;
            if (this.curItemXML != null)
            {
                otherMatches = this.curItemXML.ActivateOnEquip.(@stat == stat);
            }
            if (((!((otherMatches == null))) && ((otherMatches.length() == 1))))
            {
                match = XML(otherMatches[0]);
                otherAmount = int(match.@amount);
                textColor = TR.1kE((amount - otherAmount));
            }
            if (amount < 0)
            {
                textColor = 0xFF0000;
            }
            return (textColor);
        }

        private function 0QT():void{
            if (this._0o4.hasOwnProperty("Treasure") == false)
            {
                this._1Qz.push(new Restriction(_du._1dK, 0xB3B3B3, false));
                if (((this.9V) || ((this._0Gh == 1Ha._CURRENT_PLAYER))))
                {
                    this._1Qz.push(new Restriction(_du._1fo, 0xB3B3B3, false));
                } else
                {
                    this._1Qz.push(new Restriction(_du._1Io, 0xB3B3B3, false));
                }
            }
        }

        private function 15e():void{
            this._1Qz.push(new Restriction(_du._1RZ, 0xFFFFFF, false));
        }

        private function z3():void{
            this._1Qz.push(new Restriction(_du.FF, 0xB3B3B3, false));
            if (((this.9V) || ((this._0Gh == 1Ha._CURRENT_PLAYER))))
            {
                this._1Qz.push(new Restriction(_du._1Y0, 0xFFFFFF, false));
            } else
            {
                this._1Qz.push(new Restriction(_du.KU, 0xFFFFFF, false));
            }
        }

        private function RD():void{
            this._1Qz.push(new Restriction(_du._16O, 0xB3B3B3, false));
            this._1Qz.push(new Restriction(_du._1Y0, 0xFFFFFF, false));
        }

        private function wa():void{
            var _local2:XML;
            var _local3:Boolean;
            var _local4:int;
            var _local5:int;
            this._1Qz = new Vector.<Restriction>();
            if (((((this._0o4.hasOwnProperty("VaultItem")) && (!((this._0Rs == -1))))) && (!((this._0Rs == ObjectLibrary.get["Vault Chest"])))))
            {
                this._1Qz.push(new Restriction(_du._0Ak, 16549442, true));
            }
            if (this._0o4.hasOwnProperty("Soulbound"))
            {
                this._1Qz.push(new Restriction(_du._0E7, 0xB3B3B3, false));
            }
            if (this._0o4.hasOwnProperty("@setType"))
            {
                this._1Qz.push(new Restriction(("This item is a part _of " + this._0o4.attribute("setName")), 0xFF9900, false));
            }
            if (this._0Bw)
            {
                if (this._0o4.hasOwnProperty("Usable"))
                {
                    this._15e();
                    this._0QT();
                } else
                {
                    if (this._0o4.hasOwnProperty("Consumable"))
                    {
                        this.z3();
                    } else
                    {
                        if (this._0o4.hasOwnProperty("InvUse"))
                        {
                            this.RD();
                        } else
                        {
                            this._0QT();
                        }
                    }
                }
            } else
            {
                if (this.player != null)
                {
                    this._1Qz.push(new Restriction(_du._0jn, 16549442, true));
                }
            }
            var _local1:Vector.<String> = ObjectLibrary.usableBy(this.objectType);
            if (_local1 != null)
            {
                this._1Qz.push(new Restriction(_du._11O, 0xB3B3B3, false));
            }
            for each (_local2 in this._0o4.EquipRequirement)
            {
                _local3 = ObjectLibrary.1Up(_local2, this.player);
                if (_local2.toString() == "Stat")
                {
                    _local4 = int(_local2.@stat);
                    _local5 = int(_local2.@value);
                    this._1Qz.push(new Restriction(((("Requires " + StatData.1Ky(_local4)) + " _of ") + _local5), ((_local3) ? 0xB3B3B3 : 16549442), ((_local3) ? false : true)));
                }
            }
        }

        private function 21p():void{
            this.line2 = new 1-p((1bH - 12), 0);
            addChild(this.line2);
        }

        private function 1W-():void{
            if (this._1Qz.length != 0)
            {
                this.Gn = new _13j().setSize(14).setColor(0xB3B3B3).setTextWidth((1bH - 4)).setIndent(-10).setLeftMargin(10).setWordWrap(true).setHTML(true);
                this.Gn.setStringBuilder(this.od());
                this.Gn.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
                1he.push(this.Gn.textChanged);
                addChild(this.Gn);
            }
        }

        private function od():1Jo{
            var _local2:Restriction;
            var _local3:String;
            var _local4:String;
            var _local5:String;
            var _local1:AppendingLineBuilder = new AppendingLineBuilder();
            for each (_local2 in this._1Qz)
            {
                _local3 = ((_local2.bold_) ? "<b>" : "");
                _local3 = _local3.concat((('<font color="#' + _local2.color_.toString(16)) + '">'));
                _local4 = "</font>";
                _local4 = _local4.concat(((_local2.bold_) ? "</b>" : ""));
                _local5 = ((this.player) ? ObjectLibrary.118[this.player.objectType_] : "");
                _local1.pushParams(_local2.text_, {
                    unUsableClass:_local5,
                    usableClasses:this._1jK(),
                    keyCode:02E.24x[Parameters.data_.useSpecial]
                }, _local3, _local4);
            }
            return (_local1);
        }

        private function 1jK():1Jo{
            var _local3:String;
            var _local1:Vector.<String> = ObjectLibrary.usableBy(this.objectType);
            var _local2:AppendingLineBuilder = new AppendingLineBuilder();
            _local2.setDelimiter(", ");
            for each (_local3 in _local1)
            {
                _local2.pushParams(_local3);
            }
            return (_local2);
        }

        private function 0B3():void{
            this.SG = new _13j().setSize(14).setColor(0xB3B3B3).setTextWidth(1bH).setWordWrap(true);
            this.SG.setStringBuilder(new 1cA().setParams(String(this._0o4.Description)));
            this.SG.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            1he.push(this.SG.textChanged);
            addChild(this.SG);
        }

        override protected function alignUI():void{
            this.Yi.x = (this.icon.width + 4);
            this.Yi.y = ((this.icon.height / 2) - (this.Yi.height / 2));
            if (this._0ym)
            {
                this._0ym.y = ((this.icon.height / 2) - (this._0ym.height / 2));
                this._0ym.x = (1bH - 30);
            }
            this.SG.x = 4;
            this.SG.y = (this.icon.height + 2);
            if (contains(this.line1))
            {
                this.line1.x = 8;
                this.line1.y = ((this.SG.y + this.SG.height) + 8);
                this._0Ya.x = 4;
                this._0Ya.y = (this.line1.y + 8);
            } else
            {
                this.line1.y = (this.SG.y + this.SG.height);
                this._0Ya.y = this.line1.y;
            }
            this.line2.x = 8;
            this.line2.y = ((this._0Ya.y + this._0Ya.height) + 8);
            var _local1:uint = (this.line2.y + 8);
            if (this.Gn)
            {
                this.Gn.x = 4;
                this.Gn.y = _local1;
                _local1 = (_local1 + this.Gn.height);
            }
            if (this._0yi)
            {
                if (contains(this._0yi))
                {
                    this._0yi.x = 4;
                    this._0yi.y = _local1;
                }
            }
        }

        private function yh():void{
            if (this.curItemXML != null)
            {
                this._07x = this._1jD.0vU(this._0o4, this.curItemXML);
            } else
            {
                this._07x = new 02M();
            }
        }

        private function gA():void{
            var _local3:XML;
            var _local4:XML;
            var _local5:String;
            var _local6:String;
            if (this.player == null)
            {
                return;
            }
            var _local1:Number = (this.player.00N + this.player.1zn);
            if (_local1 < 30)
            {
                return;
            }
            var _local2:Vector.<XML> = new Vector.<XML>();
            if (this.curItemXML != null)
            {
                this.curItemXML = this.curItemXML.copy();
                _local2.push(this.curItemXML);
            }
            if (this._0o4 != null)
            {
                this._0o4 = this._0o4.copy();
                _local2.push(this._0o4);
            }
            for each (_local4 in _local2)
            {
                for each (_local3 in _local4.Activate)
                {
                    _local5 = _local3.toString();
                    if (_local3.@effect != "Stasis")
                    {
                        _local6 = _local3.@useWisMod;
                        if (!(((((((_local6 == "")) || ((_local6 == "false")))) || ((_local6 == "0")))) || ((_local3.@effect == "Stasis"))))
                        {
                            switch (_local5)
                            {
                                case 0MX.0BM:
                                    _local3.@amount = this.tF(_local3.@amount, 0);
                                    _local3.@range = this.tF(_local3.@range);
                                    break;
                                case 0MX.Oa:
                                    _local3.@duration = this.tF(_local3.@duration);
                                    _local3.@range = this.tF(_local3.@range);
                                    break;
                                case 0MX.1YG:
                                    _local3.@duration = this.tF(_local3.@duration);
                                    break;
                                case 0MX.Zr:
                                    _local3.@amount = this.tF(_local3.@amount, 0);
                                    _local3.@duration = this.tF(_local3.@duration);
                                    _local3.@range = this.tF(_local3.@range);
                                    break;
                                case 0MX.0gf:
                                    _local3.@duration = this.tF(_local3.@duration);
                                    _local3.@range = this.tF(_local3.@range);
                                    break;
                            }
                        }
                    }
                }
            }
        }

        private function tF(_arg1:String, _arg2:Number=1):String{
            var _local5:Number;
            var _local6:int;
            var _local7:Number;
            var _local3 = "-1";
            var _local4:Number = (this.player.00N + this.player.1zn);
            if (_local4 < 30)
            {
                _local3 = _arg1;
            } else
            {
                _local5 = Number(_arg1);
                _local6 = (((_local5)<0) ? -1 : 1);
                _local7 = (((_local5 * _local4) / 150) + (_local5 * _local6));
                _local7 = (Math.floor((_local7 * Math.pow(10, _arg2))) / Math.pow(10, _arg2));
                if ((_local7 - (int(_local7) * _local6)) >= ((1 / Math.pow(10, _arg2)) * _local6))
                {
                    _local3 = _local7.toFixed(1);
                } else
                {
                    _local3 = _local7.toFixed(0);
                }
            }
            return (_local3);
        }


    }
}//package 0qj

import 1n4.1cA;
import 1n4.AppendingLineBuilder;

class Effect {

    public var name_:String;
    public var valueReplacements_:Object;
    public var replacementColor_:uint = 16777103;
    public var color_:uint = 0xB3B3B3;

    public function Effect(_arg1:String, _arg2:Object){
        this.name_ = _arg1;
        this.valueReplacements_ = _arg2;
    }

    public function setColor(_arg1:uint):Effect{
        this.color_ = _arg1;
        return (this);
    }

    public function setReplacementsColor(_arg1:uint):Effect{
        this.replacementColor_ = _arg1;
        return (this);
    }

    public function getValueReplacementsWithColor():Object{
        var _local4:String;
        var _local5:1cA;
        var _local1:Object = {}
        var _local2 = "";
        var _local3 = "";
        if (this.replacementColor_)
        {
            _local2 = (('</font><font color="#' + this.replacementColor_.toString(16)) + '">');
            _local3 = (('</font><font color="#' + this.color_.toString(16)) + '">');
        }
        for (_local4 in this.valueReplacements_)
        {
            if ((this.valueReplacements_[_local4] is AppendingLineBuilder))
            {
                _local1[_local4] = this.valueReplacements_[_local4];
            } else
            {
                if ((this.valueReplacements_[_local4] is 1cA))
                {
                    _local5 = (this.valueReplacements_[_local4] as 1cA);
                    _local5.setPrefix(_local2).setPostfix(_local3);
                    _local1[_local4] = _local5;
                } else
                {
                    _local1[_local4] = ((_local2 + this.valueReplacements_[_local4]) + _local3);
                }
            }
        }
        return (_local1);
    }


}
class Restriction {

    public var text_:String;
    public var color_:uint;
    public var bold_:Boolean;

    public function Restriction(_arg1:String, _arg2:uint, _arg3:Boolean){
        this.text_ = _arg1;
        this.color_ = _arg2;
        this.bold_ = _arg3;
    }

}

