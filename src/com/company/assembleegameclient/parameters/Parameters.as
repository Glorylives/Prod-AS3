// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.parameters.Parameters

package com.company.assembleegameclient.parameters{
    import flash.display.DisplayObject;
    import flash.net.SharedObject;
    import flash.utils.Dictionary;
    import com.company.util._02E;
    import com.company.assembleegameclient.map.Map;
    import flash.events.Event;
    import com.company.util.YB;
    import flash.system.Capabilities;

    public class Parameters {

        public static const __01b:String = "27.7";
        public static const _1Vw:String = "6";
        public static const _1YJ:Boolean = true;
        public static const _1xJ:int = 2050;
        public static const _0lx:Boolean = false;
        public static const _19c:uint = 10944349;
        public static const _0zj:uint = 0xFCDF00;
        public static const _0g8:Number = 0.003;
        public static const kk:int = 20;
        public static const si:String = "";
        public static const uL:String = "*Client*";
        public static const _1Wj:String = "*Error*";
        public static const Iu:String = "*Help*";
        public static const PB:String = "*Guild*";
        public static const _1Zf:Number = 1.1;
        public static const ZO:int = 1000;
        public static const _0QE:int = 1000;
        public static const _1HD:int = -1;
        public static const _1rc:int = -2;
        public static const _0AM:int = -3;
        public static const _1qH:int = -6;
        public static const _0vd:Number = 18;
        public static const _dynamic:String = "https://www.kabam.com/corporate/terms-of-service";
        public static const _0ku:String = "https://www.kabam.com/corporate/privacy-policy";
        public static const RANDOM1:String = "311f80691451c71b09a13a2a6e";
        public static const RANDOM2:String = "72c5583cafb6818995cbd74b80";
        public static const dL:String = ((((("-----BEGIN PUBLIC KEY-----\n" + "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDCKFctVrhfF3m2Kes0FBL/JFeO") + "cmNg9eJz8k/hQy1kadD+XFUpluRqa//Uxp2s9W2qE0EoUCu59ugcf/p7lGuL99Uo") + "SGmQEynkBvZct+/M40L0E0rZ4BVgzLOJmIbXMp0J4PnPcb6VLZvxazGcmSfjauC7") + "F3yWYqUbZd/HCBtawwIDAQAB\n") + "-----END PUBLIC KEY-----");

        public static var root:DisplayObject;
        public static var data_:Object = null;
        public static var _0Td:Boolean = false;
        public static var _1tu:int = 1;
        public static var _1KO:int = 0;
        public static var _0pm:Boolean = true;
        public static var _1Wc:Boolean = false;
        public static var _271:Boolean = false;
        public static var _1cS:Boolean = true;
        private static var _0bh:SharedObject = null;
        public static var _0JG:Boolean = false;
        private static var _0Fq:Dictionary = new Dictionary();


        public static function load():void{
            try
            {
                _0bh = SharedObject.getLocal("AssembleeGameClientOptions", "/");
                data_ = _0bh.data;
            } catch(error:Error)
            {
                data_ = new Object();
            };
            _0S2();
            save();
        }

        public static function save():void{
            try
            {
                if (_0bh != null)
                {
                    _0bh.flush();
                };
            } catch(error:Error)
            {
            };
        }

        private static function uB(_arg1:String, _arg2:uint):void{
            if (!data_.hasOwnProperty(_arg1))
            {
                data_[_arg1] = _arg2;
            };
            _0Fq[_arg1] = true;
        }

        public static function setKey(_arg1:String, _arg2:uint):void{
            var _local3:String;
            for (_local3 in _0Fq)
            {
                if (data_[_local3] == _arg2)
                {
                    data_[_local3] = _02E._0Bo;
                };
            };
            data_[_arg1] = _arg2;
        }

        private static function _0b3(_arg1:String, _arg2):void{
            if (!data_.hasOwnProperty(_arg1))
            {
                data_[_arg1] = _arg2;
            };
        }

        public static function TP():Boolean{
            return (((((!(_0Td)) && (data_.GPURender))) && (!(Map.dD))));
        }

        public static function _1A5(_arg1:Event):void{
            kT();
        }

        public static function kT():void{
            _0Td = true;
        }

        public static function _0S2():void{
            uB("moveLeft", _02E.A);
            uB("moveRight", _02E.D);
            uB("moveUp", _02E.W);
            uB("moveDown", _02E.S);
            uB("rotateLeft", _02E.Q);
            uB("rotateRight", _02E.E);
            uB("useSpecial", _02E.SPACE);
            uB("interact", _02E.NUMBER_0);
            uB("useInvSlot1", _02E.NUMBER_1);
            uB("useInvSlot2", _02E.NUMBER_2);
            uB("useInvSlot3", _02E.NUMBER_3);
            uB("useInvSlot4", _02E.NUMBER_4);
            uB("useInvSlot5", _02E.NUMBER_5);
            uB("useInvSlot6", _02E.NUMBER_6);
            uB("useInvSlot7", _02E.NUMBER_7);
            uB("useInvSlot8", _02E.NUMBER_8);
            uB("escapeToNexus2", _02E.F5);
            uB("escapeToNexus", _02E.R);
            uB("autofireToggle", _02E.I);
            uB("scrollChatUp", _02E._0Nz);
            uB("scrollChatDown", _02E._0iK);
            uB("miniMapZoomOut", _02E._16Y);
            uB("miniMapZoomIn", _02E._1oQ);
            uB("resetToDefaultCameraAngle", _02E.Z);
            uB("togglePerformanceStats", _02E._0Bo);
            uB("options", _02E.O);
            uB("toggleCentering", _02E._0Bo);
            uB("chat", _02E.ENTER);
            uB("chatCommand", _02E._15v);
            uB("tell", _02E.TAB);
            uB("guildChat", _02E.G);
            uB("testOne", _02E._1V);
            uB("toggleFullscreen", _02E._0Bo);
            uB("useHealthPotion", _02E.F);
            uB("GPURenderToggle", _02E._0Bo);
            uB("friendList", _02E._0Bo);
            uB("useMagicPotion", _02E.V);
            uB("switchTabs", _02E.B);
            uB("particleEffect", _02E.P);
            uB("toggleHPBar", _02E.H);
            _0b3("playerObjectType", 782);
            _0b3("playMusic", true);
            _0b3("playSFX", true);
            _0b3("playPewPew", true);
            _0b3("centerOnPlayer", true);
            _0b3("preferredServer", null);
            _0b3("needsTutorial", true);
            _0b3("needsRandomRealm", true);
            _0b3("cameraAngle", ((7 * Math.PI) / 4));
            _0b3("defaultCameraAngle", ((7 * Math.PI) / 4));
            _0b3("showQuestPortraits", true);
            _0b3("fullscreenMode", false);
            _0b3("showProtips", true);
            _0b3("protipIndex", 0);
            _0b3("joinDate", YB.D8());
            _0b3("lastDailyAnalytics", null);
            _0b3("allowRotation", false);
            _0b3("allowMiniMapRotation", false);
            _0b3("charIdUseMap", {});
            _0b3("drawShadows", true);
            _0b3("textBubbles", true);
            _0b3("showTradePopup", true);
            _0b3("paymentMethod", null);
            _0b3("filterLanguage", true);
            _0b3("showGuildInvitePopup", true);
            _0b3("showBeginnersOffer", false);
            _0b3("beginnersOfferTimeLeft", 0);
            _0b3("beginnersOfferShowNow", false);
            _0b3("beginnersOfferShowNowTime", 0);
            _0b3("watchForTutorialExit", false);
            _0b3("clickForGold", false);
            _0b3("contextualPotionBuy", true);
            _0b3("inventorySwap", true);
            _0b3("particleEffect", false);
            _0b3("cursorSelect", "4");
            _0b3("friendListDisplayFlag", false);
            if (Capabilities.playerType == "Desktop")
            {
                _0b3("GPURender", false);
            } else
            {
                _0b3("GPURender", false);
            };
            _0b3("forceChatQuality", false);
            _0b3("hidePlayerChat", false);
            _0b3("chatStarRequirement", 1);
            _0b3("chatAll", true);
            _0b3("chatWhisper", true);
            _0b3("chatGuild", true);
            _0b3("chatTrade", true);
            _0b3("toggleBarText", false);
            _0b3("particleEffect", true);
            if (((data_.hasOwnProperty("playMusic")) && ((data_.playMusic == true))))
            {
                _0b3("musicVolume", 1);
            } else
            {
                _0b3("musicVolume", 0);
            };
            if (((data_.hasOwnProperty("playSFX")) && ((data_.playMusic == true))))
            {
                _0b3("SFXVolume", 1);
            } else
            {
                _0b3("SFXVolume", 0);
            };
            _0b3("friendList", _02E._0Bo);
            _0b3("tradeWithFriends", false);
            _0b3("chatFriend", false);
            _0b3("friendStarRequirement", 0);
            _0b3("HPBar", false);
            if (!data_.hasOwnProperty("needsSurvey"))
            {
                data_.needsSurvey = data_.needsTutorial;
                switch (int((Math.random() * 5)))
                {
                    case 0:
                        data_.surveyDate = 0;
                        data_.playTimeLeftTillSurvey = (5 * 60);
                        data_.surveyGroup = "5MinPlaytime";
                        return;
                    case 1:
                        data_.surveyDate = 0;
                        data_.playTimeLeftTillSurvey = (10 * 60);
                        data_.surveyGroup = "10MinPlaytime";
                        return;
                    case 2:
                        data_.surveyDate = 0;
                        data_.playTimeLeftTillSurvey = (30 * 60);
                        data_.surveyGroup = "30MinPlaytime";
                        return;
                    case 3:
                        data_.surveyDate = (new Date().time + ((((1000 * 60) * 60) * 24) * 7));
                        data_.playTimeLeftTillSurvey = (2 * 60);
                        data_.surveyGroup = "1WeekRealtime";
                        return;
                    case 4:
                        data_.surveyDate = (new Date().time + ((((1000 * 60) * 60) * 24) * 14));
                        data_.playTimeLeftTillSurvey = (2 * 60);
                        data_.surveyGroup = "2WeekRealtime";
                        return;
                };
            };
        }


    }
}//package com.company.assembleegameclient.parameters

