// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.EquipmentToolTip

package 0qj{
    import flash.display.Bitmap;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1-p;
    import com.company.assembleegameclient.objects.Player;
    import __AS3__.vec.Vector;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import 1n4.1WS;
    import flash.filters.DropShadowFilter;
    import 1n4.AppendingLineBuilder;
    import AO.du;
    import flash.display.BitmapData;
    import com.company.util.BitmapUtil;
    import 1n4.1cA;
    import 0Px.0MX;
    import g0.StatData;
    import 1jB.1Ha;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.util.02E;
    import 1n4.1Jo;
    import __AS3__.vec.*;
    import 0Px.*;

    public class EquipmentToolTip extends 1ae {

        private static const 1bH:int = 230;

        private var icon:Bitmap;
        public var Yi:_13j;
        private var 0ym:_13j;
        private var SG:_13j;
        private var line1:1-p;
        private var 0Ya:_13j;
        private var line2:1-p;
        private var Gn:_13j;
        private var player:Player;
        private var 0rZ:Boolean = false;
        private var objectType:int;
        private var curItemXML:XML = null;
        private var 0o4:XML = null;
        private var 1jD:13P;
        private var 1Qz:Vector.<Restriction>;
        private var 1EF:Vector.<Effect>;
        private var 1gU:Vector.<Effect>;
        private var 013:int;
        private var 0Rs:int;
        private var 0FL:uint;
        private var 0Gh:String;
        private var 9V:Boolean;
        private var 0Bw:Boolean;
        private var 07x:02M;
        private var 0yi:_13j;

        public function EquipmentToolTip(_arg1:int, _arg2:Player, _arg3:int, _arg4:String){
            this.1gU = new Vector.<Effect>();
            this.objectType = _arg1;
            this.player = _arg2;
            this.0Rs = _arg3;
            this.0Gh = _arg4;
            this.9V = ((_arg2) ? _arg2.9V() : false);
            this.0Bw = ((_arg2) ? ObjectLibrary.0dd(_arg1, _arg2) : false);
            var _local5:int = ((_arg2) ? ObjectLibrary.Hq(_arg1, _arg2) : -1);
            var _local6:uint = ((((this.0Bw) || ((this.player == null)))) ? 0x363636 : 6036765);
            var _local7:uint = ((((this.0Bw) || ((_arg2 == null)))) ? 0x9B9B9B : 10965039);
            super(_local6, 1, _local7, 1, true);
            this.1jD = new 13P();
            this.0o4 = ObjectLibrary.GD[_arg1];
            this.0rZ = !((_local5 == -1));
            this.1EF = new Vector.<Effect>();
            this.013 = int(this.0o4.SlotType);
            if (this.player == null)
            {
                this.curItemXML = this.0o4;
            } else
            {
                if (this.0rZ)
                {
                    if (this.player.1Wz[_local5] != -1)
                    {
                        this.curItemXML = ObjectLibrary.GD[this.player.1Wz[_local5]];
                    };
                };
            };
            this.0IT();
            this.0sK();
            this.0t1();
            this.0B3();
            this.gA();
            this.yh();
            this.15n();
            this.0YX();
            this.ht();
            this.0sX();
            this.0P1();
            this.0L9();
            this.1bq();
            this.X2();
            this.1R-();
            this.21p();
            this.wa();
            this.1W-();
            this.24B();
        }

        private function 24B():void{
            var _local1:int;
            if (this.0o4.hasOwnProperty("feedPower"))
            {
                _local1 = ((((this.0Bw) || ((this.player == null)))) ? 0xFFFFFF : 16549442);
                this.0yi = new _13j().setSize(12).setColor(_local1).setBold(true).setTextWidth((((1bH - this.icon.width) - 4) - 30)).setWordWrap(true);
                this.0yi.setStringBuilder(new 1WS().setString(("Feed Power: " + this.0o4.feedPower)));
                this.0yi.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
                1he.push(this.0yi.textChanged);
                addChild(this.0yi);
            };
        }

        private function 15n():void{
            var _local1:XMLList;
            var _local2:XML;
            var _local3:String;
            var _local4:String;
            var _local5:String;
            var _local6:AppendingLineBuilder;
            if (this.0o4.hasOwnProperty("ExtraTooltipData"))
            {
                _local1 = this.0o4.ExtraTooltipData.EffectInfo;
                for each (_local2 in _local1)
                {
                    _local3 = _local2.attribute("name");
                    _local4 = _local2.attribute("description");
                    _local5 = ((((_local3) && (_local4))) ? ": " : "\n");
                    _local6 = new AppendingLineBuilder();
                    if (_local3)
                    {
                        _local6.pushParams(_local3);
                    };
                    if (_local4)
                    {
                        _local6.pushParams(_local4, {}, TR.1pw(16777103), TR.17H());
                    };
                    _local6.setDelimiter(_local5);
                    this.1gU.push(new Effect(du.1h6, {data:_local6}));
                };
            };
        }

        private function Hx():Boolean{
            return (((this.0rZ) && ((this.curItemXML == null))));
        }

        private function 0IT():void{
            var _local1:XML = ObjectLibrary.GD[this.objectType];
            var _local2:int = 5;
            if ((((this.objectType == 4874)) || ((this.objectType == 4618))))
            {
                _local2 = 8;
            };
            if (_local1.hasOwnProperty("ScaleValue"))
            {
                _local2 = _local1.ScaleValue;
            };
            var _local3:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.objectType, 60, true, true, _local2);
            _local3 = BitmapUtil.0Bs(_local3, 4, 4, (_local3.width - 8), (_local3.height - 8));
            this.icon = new Bitmap(_local3);
            addChild(this.icon);
        }

        private function 0t1():void{
            var _local1 = (this.tI() == false);
            var _local2 = (this.0o4.hasOwnProperty("Consumable") == false);
            var _local3 = (this.0o4.hasOwnProperty("Treasure") == false);
            var _local4:Boolean = this.0o4.hasOwnProperty("Tier");
            if (((((_local1) && (_local2))) && (_local3)))
            {
                this.0ym = new _13j().setSize(16).setColor(0xFFFFFF).setTextWidth(30).setBold(true);
                if (_local4)
                {
                    this.0ym.setStringBuilder(new 1cA().setParams(du.l0, {tier:this.0o4.Tier}));
                } else
                {
                    if (this.0o4.hasOwnProperty("@setType"))
                    {
                        this.0ym.setColor(0xFF9900);
                        this.0ym.setStringBuilder(new 1WS("ST"));
                    } else
                    {
                        this.0ym.setColor(9055202);
                        this.0ym.setStringBuilder(new 1cA().setParams(du.eg));
                    };
                };
                addChild(this.0ym);
            };
        }

        private function tI():Boolean{
            var activateTags:XMLList;
            activateTags = this.0o4.Activate.(text() == "PermaPet");
            return ((activateTags.length() >= 1));
        }

        private function 0sK():void{
            var _local1:int = ((((this.0Bw) || ((this.player == null)))) ? 0xFFFFFF : 16549442);
            this.Yi = new _13j().setSize(16).setColor(_local1).setBold(true).setTextWidth((((1bH - this.icon.width) - 4) - 30)).setWordWrap(true);
            this.Yi.setStringBuilder(new 1cA().setParams(ObjectLibrary.118[this.objectType]));
            this.Yi.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            1he.push(this.Yi.textChanged);
            addChild(this.Yi);
        }

        private function 0-R():String{
            var _local1:XMLList;
            var _local2:Vector.<Effect>;
            var _local3:XML;
            if (this.0o4.hasOwnProperty("ExtraTooltipData"))
            {
                _local1 = this.0o4.ExtraTooltipData.EffectInfo;
                _local2 = new Vector.<Effect>();
                for each (_local3 in _local1)
                {
                    _local2.push(new Effect(_local3.attribute("name"), _local3.attribute("description")));
                };
            };
            return ("");
        }

        private function 1R-():void{
            var _local1:AppendingLineBuilder;
            if (((((!((this.1EF.length == 0))) || (!((this.07x.zM == null))))) || (this.0o4.hasOwnProperty("ExtraTooltipData"))))
            {
                this.line1 = new 1-p((1bH - 12), 0);
                this.0Ya = new _13j().setSize(14).setColor(0xB3B3B3).setTextWidth(1bH).setWordWrap(true).setHTML(true);
                _local1 = this.04p();
                this.0Ya.setStringBuilder(_local1);
                this.0Ya.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
                if (_local1.0My())
                {
                    addChild(this.line1);
                    addChild(this.0Ya);
                };
            };
        }

        private function 04p():AppendingLineBuilder{
            var _local1:AppendingLineBuilder = new AppendingLineBuilder();
            this. do(this.1gU, _local1);
            if (this.07x.zM.0My())
            {
                _local1.pushParams(du.1h6, {data:this.07x.zM});
            };
            this. do(this.1EF, _local1);
            return (_local1);
        }

        private function  do(_arg1:Vector.<Effect>, _arg2:AppendingLineBuilder):void{
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
                };
                _arg2.pushParams(_local3.name_, _local3.getValueReplacementsWithColor(), _local4, _local5);
            };
        }

        private function 0YX():void{
            if (((this.0o4.hasOwnProperty("NumProjectiles")) && (!((this.07x.ZX.hasOwnProperty(this.0o4.NumProjectiles.toXMLString()) == true)))))
            {
                this.1EF.push(new Effect(du.01s, {numShots:this.0o4.NumProjectiles}));
            };
        }

        private function X2():void{
            var _local1:int;
            var _local2:uint;
            var _local3:int;
            if (this.0o4.hasOwnProperty("FameBonus"))
            {
                _local1 = int(this.0o4.FameBonus);
                _local2 = ((this.0Bw) ? TR.1HG : TR.1U4);
                if (((!((this.curItemXML == null))) && (this.curItemXML.hasOwnProperty("FameBonus"))))
                {
                    _local3 = int(this.curItemXML.FameBonus.text());
                    _local2 = TR.1kE((_local1 - _local3));
                };
                this.1EF.push(new Effect(du.243, {percent:(this.0o4.FameBonus + "%")}).setReplacementsColor(_local2));
            };
        }

        private function 1bq():void{
            if (this.0o4.hasOwnProperty("MpEndCost"))
            {
                if (!this.07x.ZX[this.0o4.MpEndCost[0].toXMLString()])
                {
                    this.1EF.push(new Effect(du.09M, {cost:this.0o4.MpEndCost}));
                };
            } else
            {
                if (((this.0o4.hasOwnProperty("MpCost")) && (!(this.07x.ZX[this.0o4.MpCost[0].toXMLString()]))))
                {
                    if (!this.07x.ZX[this.0o4.MpCost[0].toXMLString()])
                    {
                        this.1EF.push(new Effect(du.09M, {cost:this.0o4.MpCost}));
                    };
                };
            };
        }

        private function 0L9():void{
            if (this.0o4.hasOwnProperty("Doses"))
            {
                this.1EF.push(new Effect(du.xf, {dose:this.0o4.Doses}));
            };
        }

        private function ht():void{
            var _local1:XML;
            var _local2:int;
            var _local3:int;
            var _local4:Number;
            var _local5:XML;
            if (((this.0o4.hasOwnProperty("Projectile")) && (!(this.07x.ZX.hasOwnProperty(this.0o4.Projectile.toXMLString())))))
            {
                _local1 = XML(this.0o4.Projectile);
                _local2 = int(_local1.MinDamage);
                _local3 = int(_local1.MaxDamage);
                this.1EF.push(new Effect(du.DAMAGE, {damage:(((_local2 == _local3)) ? _local2 : ((_local2 + " - ") + _local3)).toString()}));
                _local4 = ((Number(_local1.Speed) * Number(_local1.LifetimeMS)) / 10000);
                this.1EF.push(new Effect(du.1x5, {range:TR.rI(_local4)}));
                if (this.0o4.Projectile.hasOwnProperty("MultiHit"))
                {
                    this.1EF.push(new Effect(du.0YQ, {}).setColor(TR.1U4));
                };
                if (this.0o4.Projectile.hasOwnProperty("PassesCover"))
                {
                    this.1EF.push(new Effect(du.12u, {}).setColor(TR.1U4));
                };
                if (this.0o4.Projectile.hasOwnProperty("ArmorPiercing"))
                {
                    this.1EF.push(new Effect(du.if , {}).setColor(TR.1U4));
                };
                for each (_local5 in _local1.ConditionEffect)
                {
                    if (this.07x.ZX[_local5.toXMLString()] != null)
                    {
                    } else
                    {
                        this.1EF.push(new Effect(du.0ZE, {effect:""}));
                        this.1EF.push(new Effect(du.0P9, {
                            effect:this.0o4.Projectile.ConditionEffect,
                            duration:this.0o4.Projectile.ConditionEffect.@duration
                        }).setColor(TR.1U4));
                    };
                };
            };
        }

        private function 0sX():void{
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
            for each (_local1 in this.0o4.Activate)
            {
                _local5 = this.07x.ZX[_local1.toXMLString()];
                if (this.07x.ZX[_local1.toXMLString()] == true)
                {
                } else
                {
                    _local6 = _local1.toString();
                    switch (_local6)
                    {
                        case 0MX.Oa:
                            this.1EF.push(new Effect(du.Nk, {effect:new AppendingLineBuilder().pushParams(du.l, {range:_local1.@range}, TR.1pw(TR.1U4), TR.17H())}));
                            this.1EF.push(new Effect(du.0P9, {
                                effect:_local1.@effect,
                                duration:_local1.@duration
                            }).setColor(TR.1U4));
                            break;
                        case 0MX.1YG:
                            this.1EF.push(new Effect(du.1Dr, {effect:""}));
                            this.1EF.push(new Effect(du.0P9, {
                                effect:_local1.@effect,
                                duration:_local1.@duration
                            }));
                            break;
                        case 0MX.136:
                            this.1EF.push(new Effect(du.Wj, {
                                statAmount:(("+" + _local1.@amount) + " "),
                                statName:new 1cA().setParams(du.10h)
                            }));
                            break;
                        case 0MX.0BM:
                            this.1EF.push(new Effect(du.0HX, {effect:new AppendingLineBuilder().pushParams(du.1ge, {
                                    amount:_local1.@amount,
                                    range:_local1.@range
                                }, TR.1pw(TR.1U4), TR.17H())}));
                            break;
                        case 0MX.1o8:
                            this.1EF.push(new Effect(du.Wj, {
                                statAmount:(("+" + _local1.@amount) + " "),
                                statName:new 1cA().setParams(du.0b-)
                            }));
                            break;
                        case 0MX.0Cp:
                            this.1EF.push(new Effect(du.1MF, (((_local1.@amount + " MP at ") + _local1.@range) + " sqrs")));
                            break;
                        case 0MX.TELEPORT:
                            this.1EF.push(new Effect(du.1h6, {data:new 1cA().setParams(du.1l7)}));
                            break;
                        case 0MX.0W1:
                            this.1EF.push(new Effect(du.wB, {effect:new AppendingLineBuilder().pushParams(du.1ge, {
                                    amount:_local1.@totalDamage,
                                    range:_local1.@radius
                                }, TR.1pw(TR.1U4), TR.17H())}));
                            break;
                        case 0MX.0ny:
                            _local7 = ((_local1.hasOwnProperty("@condEffect")) ? _local1.@condEffect : new 1cA().setParams(du.0sH));
                            _local8 = ((_local1.hasOwnProperty("@condDuration")) ? _local1.@condDuration : "5");
                            this.1EF.push(new Effect(du.0ny, {data:new AppendingLineBuilder().pushParams(du.1ge, {
                                    amount:_local1.@totalDamage,
                                    range:_local1.@radius
                                }, TR.1pw(TR.1U4), TR.17H()).pushParams(du.0P9, {
                                    effect:_local7,
                                    duration:_local8
                                }, TR.1pw(TR.1U4), TR.17H())}));
                            break;
                        case 0MX.Oc:
                            this.1EF.push(new Effect(du.1Rm, {stasis:new AppendingLineBuilder().pushParams(du.1oV, {duration:_local1.@duration}, TR.1pw(TR.1U4), TR.17H())}));
                            break;
                        case 0MX.18W:
                            this.1EF.push(new Effect(du.18W, {data:new AppendingLineBuilder().pushParams(du.1oV, {duration:_local1.@duration}, TR.1pw(TR.1U4), TR.17H())}));
                            break;
                        case 0MX.07W:
                            this.1EF.push(new Effect(du.07W, {data:new AppendingLineBuilder().pushParams(du.1bC, {
                                    damage:_local1.@totalDamage,
                                    targets:_local1.@maxTargets
                                }, TR.1pw(TR.1U4), TR.17H())}));
                            break;
                        case 0MX.22a:
                            this.1EF.push(new Effect(du.22a, {data:""}));
                            this.1EF.push(new Effect(du.1n7, {
                                damage:_local1.@totalDamage,
                                duration:_local1.@duration,
                                radius:_local1.@radius
                            }).setColor(TR.1U4));
                            break;
                        case 0MX.hv:
                            this.1EF.push(new Effect(du.OC, {}).setColor(TR.1U4));
                            break;
                        case 0MX.vn:
                            this.1EF.push(new Effect(du.OC, {}).setColor(TR.1U4));
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
                                        };
                                    };
                                };
                            };
                            _local11 = {
                                range:_local1.@range,
                                effect:_local1.@effect,
                                duration:_local1.@duration
                            };
                            _local12 = "Within {range} sqrs {effect} for {duration} seconds";
                            if (_local1.@target != "enemy")
                            {
                                this.1EF.push(new Effect(du.Nk, {effect:1cA.1b2(_local12, _local11)}).setReplacementsColor(_local9));
                            } else
                            {
                                this.1EF.push(new Effect(du.pd, {effect:1cA.1b2(_local12, _local11)}).setReplacementsColor(_local9));
                            };
                            break;
                        case 0MX.Zr:
                            _local13 = 16777103;
                            if (this.curItemXML != null)
                            {
                                _local14 = this.1Sm(this.curItemXML, _local1.@stat);
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
                                        };
                                    };
                                };
                            };
                            _local3 = int(_local1.@stat);
                            _local15 = 1cA.DO(StatData.1Ky(_local3));
                            _local16 = {
                                range:_local1.@range,
                                stat:_local15,
                                amount:_local1.@amount,
                                duration:_local1.@duration
                            };
                            _local17 = "Within {range} sqrs increase {stat} by {amount} for {duration} seconds";
                            this.1EF.push(new Effect(du.Nk, {effect:1cA.1b2(_local17, _local16)}).setReplacementsColor(_local13));
                            break;
                        case 0MX.Wj:
                            _local3 = int(_local1.@stat);
                            _local4 = int(_local1.@amount);
                            _local18 = {};
                            if (((!((_local3 == StatData.14a))) && (!((_local3 == StatData.0X7)))))
                            {
                                _local2 = du.H-;
                                _local18["statName"] = new 1cA().setParams(StatData.1Ky(_local3));
                                this.1EF.push(new Effect(_local2, _local18).setColor(16777103));
                                break;
                            };
                            _local2 = du.1h6;
                            _local31 = new AppendingLineBuilder().setDelimiter(" ");
                            _local31.pushParams(du.1h6, {data:new 1WS(("+" + _local4))});
                            _local31.pushParams(StatData.1Ky(_local3));
                            _local18["data"] = _local31;
                            this.1EF.push(new Effect(_local2, _local18));
                            break;
                    };
                };
            };
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
                };
            };
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
                };
            };
            return (null);
        }

        private function 0P1():void{
            var _local1:XML;
            var _local2:Boolean = true;
            for each (_local1 in this.0o4.ActivateOnEquip)
            {
                if (_local2)
                {
                    this.1EF.push(new Effect(du.0bj, ""));
                    _local2 = false;
                };
                if (_local1.toString() == "IncrementStat")
                {
                    this.1EF.push(new Effect(du.Wj, this.1FR(_local1)).setReplacementsColor(this.0-y(_local1)));
                };
            };
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
            var textColor:uint = ((this.0Bw) ? TR.1HG : TR.1U4);
            var otherMatches:XMLList;
            if (this.curItemXML != null)
            {
                otherMatches = this.curItemXML.ActivateOnEquip.(@stat == stat);
            };
            if (((!((otherMatches == null))) && ((otherMatches.length() == 1))))
            {
                match = XML(otherMatches[0]);
                otherAmount = int(match.@amount);
                textColor = TR.1kE((amount - otherAmount));
            };
            if (amount < 0)
            {
                textColor = 0xFF0000;
            };
            return (textColor);
        }

        private function 0QT():void{
            if (this.0o4.hasOwnProperty("Treasure") == false)
            {
                this.1Qz.push(new Restriction(du.1dK, 0xB3B3B3, false));
                if (((this.9V) || ((this.0Gh == 1Ha._CURRENT_PLAYER))))
                {
                    this.1Qz.push(new Restriction(du.1fo, 0xB3B3B3, false));
                } else
                {
                    this.1Qz.push(new Restriction(du.1Io, 0xB3B3B3, false));
                };
            };
        }

        private function 15e():void{
            this.1Qz.push(new Restriction(du.1RZ, 0xFFFFFF, false));
        }

        private function z3():void{
            this.1Qz.push(new Restriction(du.FF, 0xB3B3B3, false));
            if (((this.9V) || ((this.0Gh == 1Ha._CURRENT_PLAYER))))
            {
                this.1Qz.push(new Restriction(du.1Y0, 0xFFFFFF, false));
            } else
            {
                this.1Qz.push(new Restriction(du.KU, 0xFFFFFF, false));
            };
        }

        private function RD():void{
            this.1Qz.push(new Restriction(du.16O, 0xB3B3B3, false));
            this.1Qz.push(new Restriction(du.1Y0, 0xFFFFFF, false));
        }

        private function wa():void{
            var _local2:XML;
            var _local3:Boolean;
            var _local4:int;
            var _local5:int;
            this.1Qz = new Vector.<Restriction>();
            if (((((this.0o4.hasOwnProperty("VaultItem")) && (!((this.0Rs == -1))))) && (!((this.0Rs == ObjectLibrary.get["Vault Chest"])))))
            {
                this.1Qz.push(new Restriction(du.0Ak, 16549442, true));
            };
            if (this.0o4.hasOwnProperty("Soulbound"))
            {
                this.1Qz.push(new Restriction(du.0E7, 0xB3B3B3, false));
            };
            if (this.0o4.hasOwnProperty("@setType"))
            {
                this.1Qz.push(new Restriction(("This item is a part of " + this.0o4.attribute("setName")), 0xFF9900, false));
            };
            if (this.0Bw)
            {
                if (this.0o4.hasOwnProperty("Usable"))
                {
                    this.15e();
                    this.0QT();
                } else
                {
                    if (this.0o4.hasOwnProperty("Consumable"))
                    {
                        this.z3();
                    } else
                    {
                        if (this.0o4.hasOwnProperty("InvUse"))
                        {
                            this.RD();
                        } else
                        {
                            this.0QT();
                        };
                    };
                };
            } else
            {
                if (this.player != null)
                {
                    this.1Qz.push(new Restriction(du.0jn, 16549442, true));
                };
            };
            var _local1:Vector.<String> = ObjectLibrary.usableBy(this.objectType);
            if (_local1 != null)
            {
                this.1Qz.push(new Restriction(du.11O, 0xB3B3B3, false));
            };
            for each (_local2 in this.0o4.EquipRequirement)
            {
                _local3 = ObjectLibrary.1Up(_local2, this.player);
                if (_local2.toString() == "Stat")
                {
                    _local4 = int(_local2.@stat);
                    _local5 = int(_local2.@value);
                    this.1Qz.push(new Restriction(((("Requires " + StatData.1Ky(_local4)) + " of ") + _local5), ((_local3) ? 0xB3B3B3 : 16549442), ((_local3) ? false : true)));
                };
            };
        }

        private function 21p():void{
            this.line2 = new 1-p((1bH - 12), 0);
            addChild(this.line2);
        }

        private function 1W-():void{
            if (this.1Qz.length != 0)
            {
                this.Gn = new _13j().setSize(14).setColor(0xB3B3B3).setTextWidth((1bH - 4)).setIndent(-10).setLeftMargin(10).setWordWrap(true).setHTML(true);
                this.Gn.setStringBuilder(this.od());
                this.Gn.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
                1he.push(this.Gn.textChanged);
                addChild(this.Gn);
            };
        }

        private function od():1Jo{
            var _local2:Restriction;
            var _local3:String;
            var _local4:String;
            var _local5:String;
            var _local1:AppendingLineBuilder = new AppendingLineBuilder();
            for each (_local2 in this.1Qz)
            {
                _local3 = ((_local2.bold_) ? "<b>" : "");
                _local3 = _local3.concat((('<font color="#' + _local2.color_.toString(16)) + '">'));
                _local4 = "</font>";
                _local4 = _local4.concat(((_local2.bold_) ? "</b>" : ""));
                _local5 = ((this.player) ? ObjectLibrary.118[this.player.objectType_] : "");
                _local1.pushParams(_local2.text_, {
                    unUsableClass:_local5,
                    usableClasses:this.1jK(),
                    keyCode:02E.24x[Parameters.data_.useSpecial]
                }, _local3, _local4);
            };
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
            };
            return (_local2);
        }

        private function 0B3():void{
            this.SG = new _13j().setSize(14).setColor(0xB3B3B3).setTextWidth(1bH).setWordWrap(true);
            this.SG.setStringBuilder(new 1cA().setParams(String(this.0o4.Description)));
            this.SG.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            1he.push(this.SG.textChanged);
            addChild(this.SG);
        }

        override protected function alignUI():void{
            this.Yi.x = (this.icon.width + 4);
            this.Yi.y = ((this.icon.height / 2) - (this.Yi.height / 2));
            if (this.0ym)
            {
                this.0ym.y = ((this.icon.height / 2) - (this.0ym.height / 2));
                this.0ym.x = (1bH - 30);
            };
            this.SG.x = 4;
            this.SG.y = (this.icon.height + 2);
            if (contains(this.line1))
            {
                this.line1.x = 8;
                this.line1.y = ((this.SG.y + this.SG.height) + 8);
                this.0Ya.x = 4;
                this.0Ya.y = (this.line1.y + 8);
            } else
            {
                this.line1.y = (this.SG.y + this.SG.height);
                this.0Ya.y = this.line1.y;
            };
            this.line2.x = 8;
            this.line2.y = ((this.0Ya.y + this.0Ya.height) + 8);
            var _local1:uint = (this.line2.y + 8);
            if (this.Gn)
            {
                this.Gn.x = 4;
                this.Gn.y = _local1;
                _local1 = (_local1 + this.Gn.height);
            };
            if (this.0yi)
            {
                if (contains(this.0yi))
                {
                    this.0yi.x = 4;
                    this.0yi.y = _local1;
                };
            };
        }

        private function yh():void{
            if (this.curItemXML != null)
            {
                this.07x = this.1jD.0vU(this.0o4, this.curItemXML);
            } else
            {
                this.07x = new 02M();
            };
        }

        private function gA():void{
            var _local3:XML;
            var _local4:XML;
            var _local5:String;
            var _local6:String;
            if (this.player == null)
            {
                return;
            };
            var _local1:Number = (this.player.00N + this.player.1zn);
            if (_local1 < 30)
            {
                return;
            };
            var _local2:Vector.<XML> = new Vector.<XML>();
            if (this.curItemXML != null)
            {
                this.curItemXML = this.curItemXML.copy();
                _local2.push(this.curItemXML);
            };
            if (this.0o4 != null)
            {
                this.0o4 = this.0o4.copy();
                _local2.push(this.0o4);
            };
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
                            };
                        };
                    };
                };
            };
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
                };
            };
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
        var _local1:Object = {};
        var _local2 = "";
        var _local3 = "";
        if (this.replacementColor_)
        {
            _local2 = (('</font><font color="#' + this.replacementColor_.toString(16)) + '">');
            _local3 = (('</font><font color="#' + this.color_.toString(16)) + '">');
        };
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
                };
            };
        };
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

