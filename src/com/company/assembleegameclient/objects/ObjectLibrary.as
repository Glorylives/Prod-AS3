// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ObjectLibrary

package com.company.assembleegameclient.objects{
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;

import flash.display.BitmapData;
import flash.utils.Dictionary;
    import com.company.util.ConversionUtil;

import flash.utils.getDefinitionByName;

import g0.StatData;

    public class ObjectLibrary {

        public static const _01g:String = "lofiObj3";
        public static const _1hq:int = 0xFF;
        public static const _0Ri:Dictionary = new Dictionary();
        public static const GD:Dictionary = new Dictionary();
        public static const get:Dictionary = new Dictionary();
        public static const _118:Dictionary = new Dictionary();
        public static const hE:Dictionary = new Dictionary();
        public static const _1Vi:Dictionary = new Dictionary();
        public static const Kx:Dictionary = new Dictionary();
        public static const _1AS:Dictionary = new Dictionary();
        public static const RY:Dictionary = new Dictionary();
        public static const _8v:ObjectProperties = new ObjectProperties(null);
        public static const _0SQ:Object = {
            ArenaGuard:ArenaGuard,
            ArenaPortal:ArenaPortal,
            CaveWall:CaveWall,
            Character:Character,
            CharacterChanger:CharacterChanger,
            ClosedGiftChest:ClosedGiftChest,
            ClosedVaultChest:ClosedVaultChest,
            ConnectedWall:ConnectedWall,
            Container:Container,
            DoubleWall:DoubleWall,
            FortuneGround:FortuneGround,
            FortuneTeller:FortuneTeller,
            GameObject:GameObject,
            GuildBoard:GuildBoard,
            GuildChronicle:GuildChronicle,
            GuildHallPortal:GuildHallPortal,
            GuildMerchant:GuildMerchant,
            GuildRegister:GuildRegister,
            Merchant:Merchant,
            MoneyChanger:MoneyChanger,
            MysteryBoxGround:MysteryBoxGround,
            NameChanger:NameChanger,
            ReskinVendor:ReskinVendor,
            OneWayContainer:OneWayContainer,
            Player:Player,
            Portal:Portal,
            Projectile:Projectile,
            QuestRewards:QuestRewards,
            Sign:Sign,
            SpiderWeb:SpiderWeb,
            Stalagmite:Stalagmite,
            Wall:Wall,
            Pet:Pet,
            PetUpgrader:PetUpgrader,
            YardUpgrader:YardUpgrader
        };

        public static var wh:_1jJ = new _1jJ();
        public static var _1wa:Vector.<XML> = new Vector.<XML>();
        public static var _0XI:Vector.<XML> = new Vector.<XML>();
        public static var _hR:Dictionary = new Dictionary();


        public static function _1ty(_arg1:XML):void{
            var _local2:XML;
            var _local3:String;
            var _local4:String;
            var _local5:int;
            var _local6:Boolean;
            var _local7:int;
            for each (_local2 in _arg1.Object)
            {
                _local3 = String(_local2.@id);
                _local4 = _local3;
                if (_local2.hasOwnProperty("DisplayId"))
                {
                    _local4 = _local2.DisplayId;
                };
                if (_local2.hasOwnProperty("Group"))
                {
                    if (_local2.Group == "Hexable")
                    {
                        _0XI.push(_local2);
                    };
                };
                _local5 = int(_local2.@type);
                if (((_local2.hasOwnProperty("PetBehavior")) || (_local2.hasOwnProperty("PetAbility"))))
                {
                    _1AS[_local5] = _local2;
                } else
                {
                    _0Ri[_local5] = new ObjectProperties(_local2);
                    GD[_local5] = _local2;
                    get[_local3] = _local5;
                    118[_local5] = _local4;
                    if (String(_local2.Class) == "Player")
                    {
                        hR[_local5] = String(_local2.@id).substr(0, 2);
                        _local6 = false;
                        _local7 = 0;
                        while (_local7 < _1wa.length)
                        {
                            if (int(_1wa[_local7].@type) == _local5)
                            {
                                _1wa[_local7] = _local2;
                                _local6 = true;
                            };
                            _local7++;
                        };
                        if (!_local6)
                        {
                            _1wa.push(_local2);
                        };
                    };
                    hE[_local5] = wh.create(_local2);
                    if (_local2.hasOwnProperty("Top"))
                    {
                        _1Vi[_local5] = wh.create(XML(_local2.Top));
                    };
                    if (_local2.hasOwnProperty("Animation"))
                    {
                        Kx[_local5] = new Zv(_local2);
                    };
                };
            };
        }

        public static function Uq(_arg1:int):String{
            var _local2:XML = GD[_arg1];
            if (_local2 == null)
            {
                return (null);
            };
            return (String(_local2.@id));
        }

        public static function _0MQ(_arg1:String):ObjectProperties{
            var _local2:int = get[_arg1];
            return (_0Ri[_local2]);
        }

        public static function _0vY(_arg1:String):XML{
            var _local2:int = get[_arg1];
            return (GD[_local2]);
        }

        public static function oP(_arg1:int):GameObject{
            var _local2:XML = GD[_arg1];
            var _local3:String = _local2.Class;
            var _local4:Class = ((_0SQ[_local3]) || (hn(_local3)));
            return (new _local4(_local2));
        }

        private static function hn(_arg1:String):Class{
            var _local2:String = ("com.company.assembleegameclient.objects." + _arg1);
            return ((getDefinitionByName(_local2) as Class));
        }

        public static function getTextureFromType(_arg1:int):BitmapData{
            var _local2:_27S = hE[_arg1];
            if (_local2 == null)
            {
                return (null);
            };
            return (_local2.getTexture());
        }

        public static function getBitmapData(_arg1:int):BitmapData{
            var _local2:_27S = hE[_arg1];
            var _local3:BitmapData = ((_local2) ? _local2.getTexture() : null);
            if (_local3)
            {
                return (_local3);
            };
            return (AssetLibrary._1JR(_01g, _1hq));
        }

        public static function getRedrawnTextureFromType(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:Boolean=true, _arg5:Number=5):BitmapData{
            var _local6:BitmapData = getBitmapData(_arg1);
            var _local7:_27S = hE[_arg1];
            var _local8:BitmapData = ((_local7) ? _local7.mask_ : null);
            if (_local8 == null)
            {
                return (TextureRedrawer.redraw(_local6, _arg2, _arg3, 0, _arg4, _arg5));
            };
            var _local9:XML = GD[_arg1];
            var _local10:int = ((_local9.hasOwnProperty("Tex1")) ? int(_local9.Tex1) : 0);
            var _local11:int = ((_local9.hasOwnProperty("Tex2")) ? int(_local9.Tex2) : 0);
            _local6 = TextureRedrawer.resize(_local6, _local8, _arg2, _arg3, _local10, _local11, _arg5);
            _local6 = _1go._0Lr(_local6, 0);
            return (_local6);
        }

        public static function _1ya(_arg1:int):int{
            var _local2:XML = GD[_arg1];
            if (!_local2.hasOwnProperty("Size"))
            {
                return (100);
            };
            return (int(_local2.Size));
        }

        public static function _1Qc(_arg1:int):int{
            var _local2:XML = GD[_arg1];
            if (!_local2.hasOwnProperty("SlotType"))
            {
                return (-1);
            };
            return (int(_local2.SlotType));
        }

        public static function _0Dj(_arg1:int, _arg2:Player):Boolean{
            if (_arg1 == _0J9._1Qx)
            {
                return (false);
            };
            var _local3:XML = GD[_arg1];
            var _local4:int = int(_local3.SlotType.toString());
            var _local5:uint;
            while (_local5 < _1zw._1ye)
            {
                if (_arg2.px[_local5] == _local4)
                {
                    return (true);
                };
                _local5++;
            };
            return (false);
        }

        public static function Hq(_arg1:int, _arg2:Player):int{
            var _local3:XML;
            var _local4:int;
            var _local5:uint;
            if (_arg1 != _0J9._1Qx)
            {
                _local3 = GD[_arg1];
                _local4 = int(_local3.SlotType);
                _local5 = 0;
                while (_local5 < _1zw._1ye)
                {
                    if (_arg2.px[_local5] == _local4)
                    {
                        return (_local5);
                    };
                    _local5++;
                };
            };
            return (-1);
        }

        public static function _0dd(_arg1:int, _arg2:Player):Boolean{
            if (_arg2 == null)
            {
                return (true);
            };
            var _local3:XML = GD[_arg1];
            if ((((_local3 == null)) || (!(_local3.hasOwnProperty("SlotType")))))
            {
                return (false);
            };
            var _local4:int = _local3.SlotType;
            if ((((_local4 == _0J9._1en)) || ((_local4 == _0J9._0ne))))
            {
                return (true);
            };
            var _local5:int;
            while (_local5 < _arg2.px.length)
            {
                if (_arg2.px[_local5] == _local4)
                {
                    return (true);
                };
                _local5++;
            };
            return (false);
        }

        public static function _1JM(_arg1:int):Boolean{
            var _local2:XML = GD[_arg1];
            return (((!((_local2 == null))) && (_local2.hasOwnProperty("Soulbound"))));
        }

        public static function usableBy(_arg1:int):Vector.<String>{
            var _local5:XML;
            var _local6:Vector.<int>;
            var _local7:int;
            var _local2:XML = GD[_arg1];
            if ((((_local2 == null)) || (!(_local2.hasOwnProperty("SlotType")))))
            {
                return (null);
            };
            var _local3:int = _local2.SlotType;
            if ((((((_local3 == _0J9._1en)) || ((_local3 == _0J9._1S5)))) || ((_local3 == _0J9._0ne))))
            {
                return (null);
            };
            var _local4:Vector.<String> = new Vector.<String>();
            for each (_local5 in _1wa)
            {
                _local6 = ConversionUtil._0HU(_local5.SlotTypes);
                _local7 = 0;
                while (_local7 < _local6.length)
                {
                    if (_local6[_local7] == _local3)
                    {
                        _local4.push(118[int(_local5.@type)]);
                        break;
                    };
                    _local7++;
                };
            };
            return (_local4);
        }

        public static function T2(_arg1:int, _arg2:Player):Boolean{
            var _local4:XML;
            if (_arg2 == null)
            {
                return (true);
            };
            var _local3:XML = GD[_arg1];
            for each (_local4 in _local3.EquipRequirement)
            {
                if (!_1Up(_local4, _arg2))
                {
                    return (false);
                };
            };
            return (true);
        }

        public static function _1Up(_arg1:XML, _arg2:Player):Boolean{
            var _local3:int;
            if (_arg1.toString() == "Stat")
            {
                _local3 = int(_arg1.@value);
                switch (int(_arg1.@stat))
                {
                    case StatData._0S8:
                        return ((_arg2.ba >= _local3));
                    case StatData._26o:
                        return ((_arg2._1nC >= _local3));
                    case StatData._3b:
                        return ((_arg2._0Sj >= _local3));
                    case StatData._8r:
                        return ((_arg2._17R >= _local3));
                    case StatData.HB:
                        return ((_arg2._1vs >= _local3));
                    case StatData._18f:
                        return ((_arg2.speed_ >= _local3));
                    case StatData._0jH:
                        return ((_arg2._0aj >= _local3));
                    case StatData._0R5:
                        return ((_arg2._00N >= _local3));
                    case StatData._0tQ:
                        return ((_arg2._0B0 >= _local3));
                };
            };
            return (false);
        }

        public static function _0sm(_arg1:int):XML{
            return (_1AS[_arg1]);
        }


    }
}//package com.company.assembleegameclient.objects

