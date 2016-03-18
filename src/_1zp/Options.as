// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zp.Options

p_ackage __1zp{

import _1aA._Lz;

import _1zp._ac;

import _AO._du;

import com.company.assembleegameclient.game.GameSprite;

import flash.display.Sprite;

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
        private var 0N2:Vector.<Sprite>;

        public function Options(_arg1:GameSprite){
            var _local2:__13j;
            var _local3:int;
            var _local5:_ac;
            this.b = new Vector.<_ac>();
            this.0N2 = new Vector.<Sprite>();
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
            _local2.setStringBuilder(new 1cA().setParams(_du.1Gp));
            _local2.setAutoSize(TextFieldAutoSize.CENTER);
            _local2.filters = [new DropShadowFilter(0, 0, 0)];
            _local2.x = ((800 / 2) - (_local2.width / 2));
            _local2.y = 8;
            addChild(_local2);
            addChild(new ScreenGraphic());
            this.25z = new _Lz(_du.16g, 36, false);
            this.25z.setVerticalAlign(_13j.MIDDLE);
            this.25z.setAutoSize(TextFieldAutoSize.CENTER);
            this.25z.addEventListener(MouseEvent.CLICK, this.13J);
            addChild(this.25z);
            this.1TO = new _Lz(_du.27C, 22, false);
            this.1TO.setVerticalAlign(_13j.MIDDLE);
            this.1TO.setAutoSize(TextFieldAutoSize.LEFT);
            this.1TO.addEventListener(MouseEvent.CLICK, this.1OK);
            addChild(this.1TO);
            this.2F = new _Lz(_du.0CA, 22, false);
            this.2F.setVerticalAlign(_13j.MIDDLE);
            this.2F.setAutoSize(TextFieldAutoSize.RIGHT);
            this.2F.addEventListener(MouseEvent.CLICK, this.8N);
            addChild(this.2F);
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

        private static function 6-():0kr{
            return (new 0kr("contextualPotionBuy", 1TT(), [true, false], _du.02g, _du.ji, null));
        }

        private static function 1TT():Vector.<1Jo>{
            return (new <1Jo>[00f(_du.1qx), 00f(_du.0ZW)]);
        }

        private static function 1AO():Vector.<1Jo>{
            return (new <1Jo>[new 1WS("High"), new 1WS("Low")]);
        }

        private static function 0hx():Vector.<1Jo>{
            return (new <1Jo>[new 1WS("Off"), new 1WS("1"), new 1WS("2"), new 1WS("3"), new 1WS("5"), new 1WS("10")]);
        }

        private static function 1ur():Vector.<1Jo>{
            return (new <1Jo>[new 1WS("Off"), new 1WS("ProX"), new 1WS("X2"), new 1WS("X3"), new 1WS("X4"), new 1WS("Corner1"), new 1WS("Corner2"), new 1WS("Symb"), new 1WS("Alien"), new 1WS("Xhair"), new 1WS("Dystopia+")]);
        }

        private static function 00f(_arg1:String):1cA{
            return (new 1cA().setParams(_arg1));
        }

        private static function 0Id():0kr{
            return (new 0kr("clickForGold", 1TT(), [true, false], _du.15C, _du.52, null));
        }

        private static function 7I():void{
            StatusBar.lQ.dispatch(Parameters.data_.toggleBarText);
        }

        public static function rX():void{
            var _local1:MouseCursorData;
            var _local2:Vector.<BitmapData>;
            if (((!((Parameters.data_.cursorSelect == MouseCursor.AUTO))) && ((4E.indexOf(Parameters.data_.cursorSelect) == -1))))
            {
                _local1 = new MouseCursorData();
                _local1.hotSpot = new Point(15, 15);
                _local2 = new Vector.<BitmapData>(1, true);
                _local2[0] = AssetLibrary.1JR("cursorsEmbed", int(Parameters.data_.cursorSelect));
                _local1.data = _local2;
                Mouse.registerCursor(Parameters.data_.cursorSelect, _local1);
                4E.push(Parameters.data_.cursorSelect);
            };
            Mouse.cursor = Parameters.data_.cursorSelect;
        }

        private static function 0Sb():Vector.<1Jo>{
            return (new <1Jo>[new 1WS("45°"), new 1WS("0°")]);
        }

        private static function 0NS():void{
            Parameters.data_.cameraAngle = Parameters.data_.defaultCameraAngle;
            Parameters.save();
        }


        private function 13J(_arg1:MouseEvent):void{
            this.close();
        }

        private function 1OK(_arg1:MouseEvent):void{
            var _local3:0vQ;
            var _local2:int;
            while (_local2 < this.0N2.length)
            {
                _local3 = (this.0N2[_local2] as 0vQ);
                if (_local3 == null)
                {
                } else
                {
                    delete Parameters.data_[_local3.1aN];
                };
                _local2++;
            };
            Parameters.0S2();
            Parameters.save();
            this.refresh();
        }

        private function 8N(_arg1:MouseEvent):void{
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
            this.0Gg();
            switch (this.selected_.text_)
            {
                case _du.1ne:
                    this.1B9();
                    return;
                case _du.0VK:
                    this.1Gv();
                    return;
                case _du.0NP:
                    this.1o-();
                    return;
                case _du.24r:
                    this.0dz();
                    return;
                case _du.00Y:
                    this.0_Lz();
                    return;
                case _du.0I7:
                    this.1NC();
                    return;
                case _du.1V7:
                    this.ma();
                    return;
            };
        }

        private function onAddedToStage(_arg1:Event):void{
            this.25z.x = (stage.stageWidth / 2);
            this.25z.y = 1OD;
            this.1TO.x = 20;
            this.1TO.y = 1OD;
            this.2F.x = (stage.stageWidth - 20);
            this.2F.y = 1OD;
            if (Capabilities.playerType == "Desktop")
            {
                Parameters.data_.fullscreenMode = (stage.displayState == "fullScreenInter_active");
                Parameters.save();
            };
            this.setSelected(this.b[0]);
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw, false, 1);
            stage.addEventListener(KeyboardEvent.KEY_UP, this.0M9, false, 1);
        }

        private function onRemovedFromStage(_arg1:Event):void{
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw, false);
            stage.removeEventListener(KeyboardEvent.KEY_UP, this.0M9, false);
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if ((((Capabilities.playerType == "Desktop")) && ((_arg1.keyCode == 02E.ESCAPE))))
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

        private function 0M9(_arg1:KeyboardEvent):void{
            _arg1.stopImmediatePropagation();
        }

        private function 0Gg():void{
            var _local1:Sprite;
            for e_ach (_local1 in this.0N2)
            {
                removeChild(_local1);
            };
            this.0N2.length = 0;
        }

        private function 1B9():void{
            this.10y(new B7("moveUp", _du.11w, _du.0mM));
            this.10y(new B7("moveLeft", _du.TH, _du.0Ts));
            this.10y(new B7("moveDown", _du.276, _du.ku));
            this.10y(new B7("moveRight", _du.0ZB, _du.Dm));
            this.10y(this.R2());
            this.10y(this.o6());
            this.10y(new B7("rotateLeft", _du.1qh, _du.Rh, !(Parameters.data_.allowRotation)));
            this.10y(new B7("rotateRight", _du.00X, _du.1Ie, !(Parameters.data_.allowRotation)));
            this.10y(new B7("useSpecial", _du.0e3, _du.rU));
            this.10y(new B7("autofireToggle", _du.1-D, _du.do ));
            this.10y(new B7("toggleHPBar", _du.0OK, _du.jU));
            this.10y(new B7("resetToDefaultCameraAngle", _du.0R7, _du.Gd));
            this.10y(new B7("togglePerformanceStats", _du.15z, _du.04Z));
            this.10y(new B7("toggleCentering", _du.Km, _du.0hV));
            this.10y(new B7("inter_act", _du.1jc, _du.oS));
            this.10y(0Id());
            this.10y(6-());
        }

        private function R2():0kr{
            return (new 0kr("allowRotation", 1TT(), [true, false], _du.1YT, _du.1Df, this.076));
        }

        private function o6():0kr{
            return (new 0kr("allowMiniMapRotation", 1TT(), [true, false], _du.1P6, _du.6b, null));
        }

        private function 076():void{
            var _local2:B7;
            var _local1:int;
            while (_local1 < this.0N2.length)
            {
                _local2 = (this.0N2[_local1] as B7);
                if (_local2 == null)
                {
                } else
                {
                    if ((((_local2.1aN == "rotateLeft")) || ((_local2.1aN == "rotateRight"))))
                    {
                        _local2.r3(!(Parameters.data_.allowRotation));
                    };
                };
                _local1++;
            };
        }

        private function 1Gv():void{
            this.10y(new B7("useHealthPotion", _du.0CH, _du.r5));
            this.10y(new B7("useMagicPotion", _du.1Jn, _du.0yh));
            this.az();
            this.10y(new B7("miniMapZoomIn", _du.vG, _du.1Qo));
            this.10y(new B7("miniMapZoomOut", _du.17y, _du.25y));
            this.10y(new B7("escapeToNexus", _du.24F, _du.1MT));
            this.10y(new B7("options", _du.0cc, _du.0SE));
            this.10y(new B7("switchTabs", _du.1ke, _du.1IZ));
            this.10y(new B7("GPURenderToggle", _du.0XZ, _du.1jW));
            this.Dx();
            if (this.07T())
            {
                this.10y(new B7("toggleFullscreen", _du.WN, _du.19z));
            };
        }

        public function 07T():Boolean{
            return ((Capabilities.playerType == "Desktop"));
        }

        public function Dx():void{
            var _local1:String = (((Capabilities.os.split(" ")[0] == "M_ac")) ? "Command" : "Ctrl");
            var _local2:0kr = new 0kr("inventorySwap", 1TT(), [true, false], _du.05Q, "", null);
            _local2.0Wk(new 1cA().setParams(_du.1mB, {key:_local1}));
            this.10y(_local2);
        }

        public function az():void{
            var _local2:B7;
            var _local1:int = 1;
            while (_local1 <= 8)
            {
                _local2 = new B7(("useInvSlot" + _local1), "", "");
                _local2.1GZ(new 1cA().setParams(_du.3P, {n:_local1}));
                _local2.0Wk(new 1cA().setParams(_du.0nl, {n:_local1}));
                this.10y(_local2);
                _local1++;
            };
        }

        private function 1o-():void{
            this.10y(new B7(1d6, _du.11X, _du.fJ));
            this.10y(new B7(0r1, _du.0tZ, _du.Ej));
            this.10y(new B7(1oY, _du.qS, _du.rB));
            this.10y(new B7(1bU, _du.NH, _du.0RL));
            this.10y(new 0kr("filterLanguage", 1TT(), [true, false], _du.0wz, _du.0e1, null));
            this.10y(new B7(pZ, _du.XQ, _du.qX));
            this.10y(new B7(1Xg, _du.qz, _du.0y9));
            this.10y(new 0kr("forceChatQuality", 1TT(), [true, false], _du.NS, _du.4L, null));
            this.10y(new 0kr("hidePlayerChat", 1TT(), [true, false], _du.0fC, _du.mt, null));
            this.10y(new 0kr("chatStarRequirement", 0hx(), [0, 1, 2, 3, 5, 10], _du.Ad, _du.0vT, null));
            this.10y(new 0kr("chatAll", 1TT(), [true, false], _du.1JL, _du.os, this.26J));
            this.10y(new 0kr("chatWhisper", 1TT(), [true, false], _du.0J0, _du.I5, this.Mc));
            this.10y(new 0kr("chatGuild", 1TT(), [true, false], _du.26E, _du.vw, this.Mc));
            this.10y(new 0kr("chatTrade", 1TT(), [true, false], _du.1HV, _du.0W2, null));
        }

        private function Mc():void{
            var _local2:0kr;
            Parameters.data_.chatAll = false;
            var _local1:int;
            while (_local1 < this.0N2.length)
            {
                _local2 = (this.0N2[_local1] as 0kr);
                if (_local2 == null)
                {
                } else
                {
                    switch (_local2.1aN)
                    {
                        case "chatAll":
                            _local2.1JE();
                            break;
                    };
                };
                _local1++;
            };
        }

        private function 26J():void{
            var _local2:0kr;
            Parameters.data_.hidePlayerChat = false;
            Parameters.data_.chatWhisper = true;
            Parameters.data_.chatGuild = true;
            Parameters.data_.chatFriend = false;
            var _local1:int;
            while (_local1 < this.0N2.length)
            {
                _local2 = (this.0N2[_local1] as 0kr);
                if (_local2 == null)
                {
                } else
                {
                    switch (_local2.1aN)
                    {
                        case "hidePlayerChat":
                        case "chatWhisper":
                        case "chatGuild":
                        case "chatFriend":
                            _local2.1JE();
                            break;
                    };
                };
                _local1++;
            };
        }

        private function 0dz():void{
            var _local1:String;
            var _local2:Number;
            this.10y(new 0kr("defaultCameraAngle", 0Sb(), [((7 * Math.PI) / 4), 0], _du.0nQ, _du.06A, 0NS));
            this.10y(new 0kr("centerOnPlayer", 1TT(), [true, false], _du.1rG, _du.uj, null));
            this.10y(new 0kr("showQuestPortraits", 1TT(), [true, false], _du.0Xm, _du.Ns, this.018));
            this.10y(new 0kr("showProtips", 1TT(), [true, false], _du.10O, _du.0jS, null));
            this.10y(new 0kr("drawShadows", 1TT(), [true, false], _du.X7, _du.0ha, null));
            this.10y(new 0kr("textBubbles", 1TT(), [true, false], _du.03-, _du.Mk, null));
            this.10y(new 0kr("showTradePopup", 1TT(), [true, false], _du.pQ, _du.1nP, null));
            this.10y(new 0kr("showGuildInvitePopup", 1TT(), [true, false], _du.1fu, _du.14j, null));
            this.10y(new 0kr("cursorSelect", 1ur(), [MouseCursor.AUTO, "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"], "Custom Cursor", "Click here to change the mouse cursor. May help _with aiming.", rX));
            if (!Parameters.0Td)
            {
                _local1 = _du.25B;
                _local2 = 0xFFFFFF;
            } else
            {
                _local1 = _du.06i;
                _local2 = 16724787;
            };
            this.10y(new 0kr("GPURender", 1TT(), [true, false], _du.0fV, _local1, null, _local2));
            if (Capabilities.playerType == "Desktop")
            {
                this.10y(new 0kr("fullscreenMode", 1TT(), [true, false], _du.Jh, _du.Lk, this.1YI));
            };
            this.10y(new 0kr("toggleBarText", 1TT(), [true, false], _du.12M, _du.1d4, 7I));
            this.10y(new 0kr("particleEffect", 1AO(), [true, false], _du.1nl, _du.H2, null));
            this.10y(new 0kr("HPBar", 1TT(), [true, false], _du.aO, _du.04o, null));
        }

        private function 018():void{
            if (((((((!((this.gs_ == null))) && (!((this.gs_.map == null))))) && (!((this.gs_.map.partyOverlay_ == null))))) && (!((this.gs_.map.partyOverlay_.questArrow_ == null)))))
            {
                this.gs_.map.partyOverlay_.questArrow_.refreshToolTip();
            };
        }

        private function 1YI():void{
            stage.displayState = ((Parameters.data_.fullscreenMode) ? "fullScreenInter_active" : StageDisplayState.NORMAL);
        }

        private function 0_Lz():void{
            this.10y(new 0kr("playMusic", 1TT(), [true, false], _du.L3, _du.WG, this.0SW));
            this.10y(new 25h("musicVolume", this.zb), -120, 15);
            this.10y(new 0kr("playSFX", 1TT(), [true, false], _du.1KH, _du.1LI, this.13a));
            this.10y(new 25h("SFXVolume", this.0x4), -120, 34);
            this.10y(new 0kr("playPewPew", 1TT(), [true, false], _du.0bE, _du.1oL, null));
        }

        private function 1NC():void{
            this.10y(new 0kr("showProtips", new <1Jo>[00f(_du.1bR), 00f(_du.1bR)], [Parameters.data_.showProtips, Parameters.data_.showProtips], _du.039, _du.0gN, this.0wH));
            this.10y(new 13w());
            this.10y(new 0kr("showProtips", new <1Jo>[00f(_du.1bR), 00f(_du.1bR)], [Parameters.data_.showProtips, Parameters.data_.showProtips], _du.MU, _du.0qO, this.Zq));
            this.10y(new 13w());
        }

        private function ma():void{
            this.10y(new 0kr("tradeWithFriends", 1TT(), [true, false], _du.1M7, _du.1kc, this.13a));
            this.10y(new B7("friendList", _du.1ql, _du.hO));
            this.10y(new 0kr("chatFriend", 1TT(), [true, false], _du.6j, _du.0JV, null));
            this.10y(new 0kr("friendStarRequirement", 0hx(), [0, 1, 2, 3, 5, 10], _du.Ad, _du.DA, null));
        }

        private function 0SW():void{
            0H7.rs(Parameters.data_.playMusic);
            if (Parameters.data_.playMusic)
            {
                0H7.5W(1);
            } else
            {
                0H7.5W(0);
            };
            this.refresh();
        }

        private function 13a():void{
            VA.12W(Parameters.data_.playSFX);
            if (((Parameters.data_.playSFX) || (Parameters.data_.playPewPew)))
            {
                VA.00G(1);
            } else
            {
                VA.00G(0);
            };
            this.refresh();
        }

        private function zb(_arg1:Number):void{
            0H7.5W(_arg1);
        }

        private function 0x4(_arg1:Number):void{
            VA.00G(_arg1);
        }

        private function 0wH():void{
            var _local1:URLRequest = new URLRequest();
            _local1.url = Parameters.0ku;
            _local1.method = URLRequestMethod.GET;
            navigateToURL(_local1, "_blank");
        }

        private function Zq():void{
            var _local1:URLRequest = new URLRequest();
            _local1.url = Parameters.dynamic;
            _local1.method = URLRequestMethod.GET;
            navigateToURL(_local1, "_blank");
        }

        private function 10y(_arg1:0Kt, _arg2:Number=0, _arg3:Number=0):void{
            var positionOption:Function;
            var option:0Kt = _arg1;
            var offsetX:int = _arg2;
            var offsetY:int = _arg3;
            positionOption = function ():void{
                option.x = (((((0N2.length % 2) == 0)) ? 20 : 415) + offsetX);
                option.y = (((int((0N2.length / 2)) * 44) + 122) + offsetY);
            };
            option.textChanged.addOnce(positionOption);
            this.6h(option);
        }

        private function 6h(_arg1:0Kt):void{
            addChild(_arg1);
            _arg1.addEventListener(Event.CHANGE, this.1c0);
            this.0N2.push(_arg1);
        }

        private function 1c0(_arg1:Event):void{
            this.refresh();
        }

        private function refresh():void{
            var _local2:0vQ;
            var _local1:int;
            while (_local1 < this.0N2.length)
            {
                _local2 = (this.0N2[_local1] as 0vQ);
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

