// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp.Options

package _1zp{

import _1aA._Lz;

import _1n4._1Jo;
import _1n4._1WS;

import _1n4._1cA;

import _1zp._ac;

import _AO._du;

import _CU._13j;

import _ZS._0H7;

import _ZS._VA;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.ui.StatusBar;
import com.company.rotmg.graphics.ScreenGraphic;
import com.company.util.AssetLibrary;
import com.company.util._02E;

import flash.display.BitmapData;

import flash.display.Sprite;
import flash.display.StageDisplayState;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.geom.Point;
import flash.net.URLRequest;
import flash.net.URLRequestMethod;
import flash.system.Capabilities;
import flash.text.TextFieldAutoSize;
import flash.ui.Mouse;
import flash.ui.MouseCursor;
import flash.ui.MouseCursorData;

public class Options extends Sprite {

        private static const Bl:Vector.<String> = new <String>[_du._1ne, _du._0VK, _du._0NP, _du._24r, _du._00Y, _du._1V7, _du._0I7];
        public static const _1OD:int = 550;
        public static const _0r1:String = "chatCommand";
        public static const _1d6:String = "chat";
        public static const _1oY:String = "tell";
        public static const _1bU:String = "guildChat";
        public static const _pZ:String = "scrollChatUp";
        public static const _1Xg:String = "scrollChatDown";

        private static var _4E:Vector.<String> = new <String>[];

        private var gs_:GameSprite;
        private var _25z:_Lz;
        private var _1TO:_Lz;
        private var _2F:_Lz;
        private var b:Vector.<_ac>;
        private var selected_:_ac = null;
        private var _0N2:Vector.<Sprite>;

        public function Options(_arg1:GameSprite){
            var _local2:_13j;
            var _local3:int;
            var _local5:_ac;
            this.b = new Vector.<_ac>();
            this._0N2 = new Vector.<Sprite>();
            super();
            this.gs_ = _arg1;
            graphics.clear();
            graphics.beginFill(0x2B2B2B, 0.8);
            graphics.drawRect(0, 0, 800, 600);
            graphics.endFill();
            graphics.lineStyle(1, 0x5E5E5E);
            graphics.moveTo(0, 100);
            graphics.lineTo(800, 100);
            graphics.lineStyle();
            _local2 = new _13j().setSize(36).setColor(0xFFFFFF);
            _local2.setBold(true);
            _local2.setStringBuilder(new _1cA().setParams(_du._1Gp));
            _local2.setAutoSize(TextFieldAutoSize.CENTER);
            _local2.filters = [new DropShadowFilter(0, 0, 0)];
            _local2.x = ((800 / 2) - (_local2.width / 2));
            _local2.y = 8;
            addChild(_local2);
            addChild(new ScreenGraphic());
            this._25z = new _Lz(_du._16g, 36, false);
            this._25z.setVerticalAlign(_13j.MIDDLE);
            this._25z.setAutoSize(TextFieldAutoSize.CENTER);
            this._25z.addEventListener(MouseEvent.CLICK, this._13J);
            addChild(this._25z);
            this._1TO = new _Lz(_du._27C, 22, false);
            this._1TO.setVerticalAlign(_13j.MIDDLE);
            this._1TO.setAutoSize(TextFieldAutoSize.LEFT);
            this._1TO.addEventListener(MouseEvent.CLICK, this._1OK);
            addChild(this._1TO);
            this._2F = new _Lz(_du._0CA, 22, false);
            this._2F.setVerticalAlign(_13j.MIDDLE);
            this._2F.setAutoSize(TextFieldAutoSize.RIGHT);
            this._2F.addEventListener(MouseEvent.CLICK, this._8N);
            addChild(this._2F);
            _local3 = 14;
            var _local4:int;
            while (_local4 < Bl.length)
            {
                _local5 = new _ac(Bl[_local4]);
                _local5.x = _local3;
                _local5.y = 70;
                addChild(_local5);
                _local5.addEventListener(MouseEvent.CLICK, this.Rb);
                this.b.push(_local5);
                _local3 = (_local3 + 108);
                _local4++;
            };
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }

        private static function _6():_0kr{
            return (new _0kr("contextualPotionBuy", _1TT(), [true, false], _du._02g, _du._ji, null));
        }

        private static function _1TT():Vector.<_1Jo>{
            return (new <_1Jo>[_00f(_du._1qx), _00f(_du._0ZW)]);
        }

        private static function _1AO():Vector.<_1Jo>{
            return (new <_1Jo>[new _1WS("High"), new _1WS("Low")]);
        }

        private static function _0hx():Vector.<_1Jo>{
            return (new <_1Jo>[new _1WS("Off"), new _1WS("1"), new _1WS("2"), new _1WS("3"), new _1WS("5"), new _1WS("10")]);
        }

        private static function _1ur():Vector.<_1Jo>{
            return (new <_1Jo>[new _1WS("Off"), new _1WS("ProX"), new _1WS("X2"), new _1WS("X3"), new _1WS("X4"), new _1WS("Corner1"), new _1WS("Corner2"), new _1WS("Symb"), new _1WS("Alien"), new _1WS("Xhair"), new _1WS("Dystopia+")]);
        }

        private static function _00f(_arg1:String):_1cA{
            return (new _1cA().setParams(_arg1));
        }

        private static function _0Id():_0kr{
            return (new _0kr("clickForGold", _1TT(), [true, false], _du._15C, _du._52, null));
        }

        private static function _7I():void{
            StatusBar.lQ.dispatch(Parameters.data_.toggleBarText);
        }

        public static function rX():void{
            var _local1:MouseCursorData;
            var _local2:Vector.<BitmapData>;
            if (((!((Parameters.data_.cursorSelect == MouseCursor.AUTO))) && ((_4E.indexOf(Parameters.data_.cursorSelect) == -1))))
            {
                _local1 = new MouseCursorData();
                _local1.hotSpot = new Point(15, 15);
                _local2 = new Vector.<BitmapData>(1, true);
                _local2[0] = AssetLibrary._1JR("cursorsEmbed", int(Parameters.data_.cursorSelect));
                _local1.data = _local2;
                Mouse.registerCursor(Parameters.data_.cursorSelect, _local1);
                _4E.push(Parameters.data_.cursorSelect);
            };
            Mouse.cursor = Parameters.data_.cursorSelect;
        }

        private static function _0Sb():Vector.<_1Jo>{
            return (new <_1Jo>[new _1WS("45°"), new _1WS("0°")]);
        }

        private static function _0NS():void{
            Parameters.data_.cameraAngle = Parameters.data_.defaultCameraAngle;
            Parameters.save();
        }


        private function _13J(_arg1:MouseEvent):void{
            this.close();
        }

        private function _1OK(_arg1:MouseEvent):void{
            var _local3:_0vQ;
            var _local2:int;
            while (_local2 < this._0N2.length)
            {
                _local3 = (this._0N2[_local2] as _0vQ);
                if (_local3 == null)
                {
                } else
                {
                    delete Parameters.data_[_local3._1aN];
                };
                _local2++;
            };
            Parameters._0S2();
            Parameters.save();
            this.refresh();
        }

        private function _8N(_arg1:MouseEvent):void{
            this.close();
            this.gs_.closed.dispatch();
        }

        private function Rb(_arg1:MouseEvent):void{
            var _local2:_ac = (_arg1.currentTarget as _ac);
            this.setSelected(_local2);
        }

        private function setSelected(_arg1:_ac):void{
            if (_arg1 == this.selected_)
            {
                return;
            };
            if (this.selected_ != null)
            {
                this.selected_.setSelected(false);
            };
            this.selected_ = _arg1;
            this.selected_.setSelected(true);
            this._0Gg();
            switch (this.selected_.text_)
            {
                case _du._1ne:
                    this._1B9();
                    return;
                case _du._0VK:
                    this._1Gv();
                    return;
                case _du._0NP:
                    this._1o();
                    return;
                case _du._24r:
                    this._0dz();
                    return;
                case _du._00Y:
                    this._0_Lz();
                    return;
                case _du._0I7:
                    this._1NC();
                    return;
                case _du._1V7:
                    this.ma();
                    return;
            };
        }

        private function onAddedToStage(_arg1:Event):void{
            this._25z.x = (stage.stageWidth / 2);
            this._25z.y = _1OD;
            this._1TO.x = 20;
            this._1TO.y = _1OD;
            this._2F.x = (stage.stageWidth - 20);
            this._2F.y = _1OD;
            if (Capabilities.playerType == "Desktop")
            {
                Parameters.data_.fullscreenMode = (stage.displayState == "fullScreenInter_active");
                Parameters.save();
            };
            this.setSelected(this.b[0]);
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this._1lw, false, 1);
            stage.addEventListener(KeyboardEvent.KEY_UP, this._0M9, false, 1);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._1lw, false);
            stage.removeEventListener(KeyboardEvent.KEY_UP, this._0M9, false);
        }

        private function _1lw(_arg1:KeyboardEvent):void{
            if ((((Capabilities.playerType == "Desktop")) && ((_arg1.keyCode == _02E.ESCAPE))))
            {
                Parameters.data_.fullscreenMode = false;
                Parameters.save();
                this.refresh();
            };
            if (_arg1.keyCode == Parameters.data_.options)
            {
                this.close();
            };
            _arg1.stopImmediatePropagation();
        }

        private function close():void{
            stage.focus = null;
            parent.removeChild(this);
        }

        private function _0M9(_arg1:KeyboardEvent):void{
            _arg1.stopImmediatePropagation();
        }

        private function _0Gg():void{
            var _local1:Sprite;
            for each (_local1 in this._0N2)
            {
                removeChild(_local1);
            };
            this._0N2.length = 0;
        }

        private function _1B9():void{
            this._10y(new _B7("moveUp", _du._11w, _du._0mM));
            this._10y(new _B7("moveLeft", _du._TH, _du._0Ts));
            this._10y(new _B7("moveDown", _du._276, _du._ku));
            this._10y(new _B7("moveRight", _du._0ZB, _du._Dm));
            this._10y(this.R2());
            this._10y(this.o6());
            this._10y(new _B7("rotateLeft", _du._1qh, _du._Rh, !(Parameters.data_.allowRotation)));
            this._10y(new _B7("rotateRight", _du._00X, _du._1Ie, !(Parameters.data_.allowRotation)));
            this._10y(new _B7("useSpecial", _du._0e3, _du._rU));
            this._10y(new _B7("autofireToggle", _du._1D, _du._do ));
            this._10y(new _B7("toggleHPBar", _du._0OK, _du._jU));
            this._10y(new _B7("resetToDefaultCameraAngle", _du._0R7, _du._Gd));
            this._10y(new _B7("togglePerformanceStats", _du._15z, _du._04Z));
            this._10y(new _B7("toggleCentering", _du._Km, _du._0hV));
            this._10y(new _B7("inter_act", _du._1jc, _du._oS));
            this._10y(_0Id());
            this._10y(_6());
        }

        private function R2():_0kr{
            return (new _0kr("allowRotation", _1TT(), [true, false], _du._1YT, _du._1Df, this._076));
        }

        private function o6():_0kr{
            return (new _0kr("allowMiniMapRotation", _1TT(), [true, false], _du._1P6, _du._6b, null));
        }

        private function _076():void{
            var _local2:_B7;
            var _local1:int;
            while (_local1 < this._0N2.length)
            {
                _local2 = (this._0N2[_local1] as _B7);
                if (_local2 == null)
                {
                } else
                {
                    if ((((_local2._1aN == "rotateLeft")) || ((_local2._1aN == "rotateRight"))))
                    {
                        _local2.r3(!(Parameters.data_.allowRotation));
                    };
                };
                _local1++;
            };
        }

        private function _1Gv():void{
            this._10y(new _B7("useHealthPotion", _du._0CH, _du._r5));
            this._10y(new _B7("useMagicPotion", _du._1Jn, _du._0yh));
            this.az();
            this._10y(new _B7("miniMapZoomIn", _du._vG, _du._1Qo));
            this._10y(new _B7("miniMapZoomOut", _du._17y, _du._25y));
            this._10y(new _B7("escapeToNexus", _du._24F, _du._1MT));
            this._10y(new _B7("options", _du._0cc, _du._0SE));
            this._10y(new _B7("switchTabs", _du._1ke, _du._1IZ));
            this._10y(new _B7("GPURenderToggle", _du._0XZ, _du._1jW));
            this.Dx();
            if (this._07T())
            {
                this._10y(new _B7("toggleFullscreen", _du._WN, _du._19z));
            };
        }

        public function _07T():Boolean{
            return ((Capabilities.playerType == "Desktop"));
        }

        public function Dx():void{
            var _local1:String = (((Capabilities.os.split(" ")[0] == "M_ac")) ? "Command" : "Ctrl");
            var _local2:_0kr = new _0kr("inventorySwap", _1TT(), [true, false], _du._05Q, "", null);
            _local2._0Wk(new _1cA().setParams(_du._1mB, {key:_local1}));
            this._10y(_local2);
        }

        public function az():void{
            var _local2:_B7;
            var _local1:int = 1;
            while (_local1 <= 8)
            {
                _local2 = new _B7(("useInvSlot" + _local1), "", "");
                _local2._1GZ(new _1cA().setParams(_du._3P, {n:_local1}));
                _local2._0Wk(new _1cA().setParams(_du._0nl, {n:_local1}));
                this._10y(_local2);
                _local1++;
            };
        }

        private function _1o():void{
            this._10y(new _B7(_1d6, _du._11X, _du._fJ));
            this._10y(new _B7(_0r1, _du._0tZ, _du._Ej));
            this._10y(new _B7(_1oY, _du._qS, _du._rB));
            this._10y(new _B7(_1bU, _du._NH, _du._0RL));
            this._10y(new _0kr("filterLanguage", _1TT(), [true, false], _du._0wz, _du._0e1, null));
            this._10y(new _B7(_pZ, _du._XQ, _du._qX));
            this._10y(new _B7(_1Xg, _du._qz, _du._0y9));
            this._10y(new _0kr("forceChatQuality", _1TT(), [true, false], _du._NS, _du._4L, null));
            this._10y(new _0kr("hidePlayerChat", _1TT(), [true, false], _du._0fC, _du._mt, null));
            this._10y(new _0kr("chatStarRequirement", _0hx(), [0, 1, 2, 3, 5, 10], _du._Ad, _du._0vT, null));
            this._10y(new _0kr("chatAll", _1TT(), [true, false], _du._1JL, _du._os, this._26J));
            this._10y(new _0kr("chatWhisper", _1TT(), [true, false], _du._0J0, _du._I5, this.Mc));
            this._10y(new _0kr("chatGuild", _1TT(), [true, false], _du._26E, _du._vw, this.Mc));
            this._10y(new _0kr("chatTrade", _1TT(), [true, false], _du._1HV, _du._0W2, null));
        }

        private function Mc():void{
            var _local2:_0kr;
            Parameters.data_.chatAll = false;
            var _local1:int;
            while (_local1 < this._0N2.length)
            {
                _local2 = (this._0N2[_local1] as _0kr);
                if (_local2 == null)
                {
                } else
                {
                    switch (_local2._1aN)
                    {
                        case "chatAll":
                            _local2._1JE();
                            break;
                    };
                };
                _local1++;
            };
        }

        private function _26J():void{
            var _local2:_0kr;
            Parameters.data_.hidePlayerChat = false;
            Parameters.data_.chatWhisper = true;
            Parameters.data_.chatGuild = true;
            Parameters.data_.chatFriend = false;
            var _local1:int;
            while (_local1 < this._0N2.length)
            {
                _local2 = (this._0N2[_local1] as _0kr);
                if (_local2 == null)
                {
                } else
                {
                    switch (_local2._1aN)
                    {
                        case "hidePlayerChat":
                        case "chatWhisper":
                        case "chatGuild":
                        case "chatFriend":
                            _local2._1JE();
                            break;
                    };
                };
                _local1++;
            };
        }

        private function _0dz():void{
            var _local1:String;
            var _local2:Number;
            this._10y(new _0kr("defaultCameraAngle", _0Sb(), [((7 * Math.PI) / 4), 0], _du._0nQ, _du._06A, _0NS));
            this._10y(new _0kr("centerOnPlayer", _1TT(), [true, false], _du._1rG, _du._uj, null));
            this._10y(new _0kr("showQuestPortraits", _1TT(), [true, false], _du._0Xm, _du._Ns, this._018));
            this._10y(new _0kr("showProtips", _1TT(), [true, false], _du._10O, _du._0jS, null));
            this._10y(new _0kr("drawShadows", _1TT(), [true, false], _du._X7, _du._0ha, null));
            this._10y(new _0kr("textBubbles", _1TT(), [true, false], _du._03, _du._Mk, null));
            this._10y(new _0kr("showTradePopup", _1TT(), [true, false], _du._pQ, _du._1nP, null));
            this._10y(new _0kr("showGuildInvitePopup", _1TT(), [true, false], _du._1fu, _du._14j, null));
            this._10y(new _0kr("cursorSelect", _1ur(), [MouseCursor.AUTO, "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"], "Custom Cursor", "Click here to change the mouse cursor. May help _with aiming.", rX));
            if (!Parameters._0Td)
            {
                _local1 = _du._25B;
                _local2 = 0xFFFFFF;
            } else
            {
                _local1 = _du._06i;
                _local2 = 16724787;
            };
            this._10y(new _0kr("GPURender", _1TT(), [true, false], _du._0fV, _local1, null, _local2));
            if (Capabilities.playerType == "Desktop")
            {
                this._10y(new _0kr("fullscreenMode", _1TT(), [true, false], _du._Jh, _du._Lk, this._1YI));
            };
            this._10y(new _0kr("toggleBarText", _1TT(), [true, false], _du._12M, _du._1d4, _7I));
            this._10y(new _0kr("particleEffect", _1AO(), [true, false], _du._1nl, _du._H2, null));
            this._10y(new _0kr("HPBar", _1TT(), [true, false], _du._aO, _du._04o, null));
        }

        private function _018():void{
            if (((((((!((this.gs_ == null))) && (!((this.gs_.map == null))))) && (!((this.gs_.map.partyOverlay_ == null))))) && (!((this.gs_.map.partyOverlay_.questArrow_ == null)))))
            {
                this.gs_.map.partyOverlay_.questArrow_.refreshToolTip();
            };
        }

        private function _1YI():void{
            stage.displayState = ((Parameters.data_.fullscreenMode) ? "fullScreenInter_active" : StageDisplayState.NORMAL);
        }

        private function _0_Lz():void{
            this._10y(new _0kr("playMusic", _1TT(), [true, false], _du._L3, _du._WG, this._0SW));
            this._10y(new _25h("musicVolume", this.zb), -120, 15);
            this._10y(new _0kr("playSFX", _1TT(), [true, false], _du._1KH, _du._1LI, this._13a));
            this._10y(new _25h("SFXVolume", this._0x4), -120, 34);
            this._10y(new _0kr("playPewPew", _1TT(), [true, false], _du._0bE, _du._1oL, null));
        }

        private function _1NC():void{
            this._10y(new _0kr("showProtips", new <_1Jo>[_00f(_du._1bR), _00f(_du._1bR)], [Parameters.data_.showProtips, Parameters.data_.showProtips], _du._039, _du._0gN, this._0wH));
            this._10y(new _13w());
            this._10y(new _0kr("showProtips", new <_1Jo>[_00f(_du._1bR), _00f(_du._1bR)], [Parameters.data_.showProtips, Parameters.data_.showProtips], _du._MU, _du._0qO, this.Zq));
            this._10y(new _13w());
        }

        private function ma():void{
            this._10y(new _0kr("tradeWithFriends", _1TT(), [true, false], _du._1M7, _du._1kc, this._13a));
            this._10y(new _B7("friendList", _du._1ql, _du._hO));
            this._10y(new _0kr("chatFriend", _1TT(), [true, false], _du._6j, _du._0JV, null));
            this._10y(new _0kr("friendStarRequirement", _0hx(), [0, 1, 2, 3, 5, 10], _du._Ad, _du._DA, null));
        }

        private function _0SW():void{
            _0H7.rs(Parameters.data_.playMusic);
            if (Parameters.data_.playMusic)
            {
                _0H7._5W(1);
            } else
            {
                _0H7._5W(0);
            };
            this.refresh();
        }

        private function _13a():void{
            _VA._12W(Parameters.data_.playSFX);
            if (((Parameters.data_.playSFX) || (Parameters.data_.playPewPew)))
            {
                _VA._00G(1);
            } else
            {
                _VA._00G(0);
            };
            this.refresh();
        }

        private function zb(_arg1:Number):void{
            _0H7._5W(_arg1);
        }

        private function _0x4(_arg1:Number):void{
            _VA._00G(_arg1);
        }

        private function _0wH():void{
            var _local1:URLRequest = new URLRequest();
            _local1.url = Parameters._0ku;
            _local1.method = URLRequestMethod.GET;
            navigateToURL(_local1, "_blank");
        }

        private function Zq():void{
            var _local1:URLRequest = new URLRequest();
            _local1.url = Parameters._dynamic;
            _local1.method = URLRequestMethod.GET;
            navigateToURL(_local1, "_blank");
        }

        private function _10y(_arg1:_0Kt, _arg2:Number=0, _arg3:Number=0):void{
            var positionOption:Function;
            var option:_0Kt = _arg1;
            var offsetX:int = _arg2;
            var offsetY:int = _arg3;
            positionOption = function ():void{
                option.x = (((((_0N2.length % 2) == 0)) ? 20 : 415) + offsetX);
                option.y = (((int((_0N2.length / 2)) * 44) + 122) + offsetY);
            };
            option.textChanged.addOnce(positionOption);
            this._6h(option);
        }

        private function _6h(_arg1:_0Kt):void{
            addChild(_arg1);
            _arg1.addEventListener(Event.CHANGE, this._1c0);
            this._0N2.push(_arg1);
        }

        private function _1c0(_arg1:Event):void{
            this.refresh();
        }

        private function refresh():void{
            var _local2:_0vQ;
            var _local1:int;
            while (_local1 < this._0N2.length)
            {
                _local2 = (this._0N2[_local1] as _0vQ);
                if (_local2 == null)
                {
                } else
                {
                    _local2.refresh();
                };
                _local1++;
            };
        }


    }
}//p_ackage _1zp

