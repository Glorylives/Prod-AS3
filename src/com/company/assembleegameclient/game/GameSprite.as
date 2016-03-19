// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.game.GameSprite

package com.company.assembleegameclient.game{
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import _Jy._1HZ;
    import com.company.assembleegameclient.objects.Player;
    import 0Fa.Chat;
    import com.company.assembleegameclient.ui.RankText;
    import com.company.assembleegameclient.ui.1sK;
    import BG.02I;
    import BG.GiftStatusDisplay;
    import BG.17B;
    import 1mO.0bI;
    import 1UB.ve;
    import 1UB.0Ja;
    import WZ._NV;
    import 1Bt.l-;
    import 1g8.Bd;
    import 1tt.0jv;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.display.DisplayObject;
    import 099.PlayerMenu;
    import flash.display.Sprite;
    import com.company.assembleegameclient.map.Map;
    import 1r4.2-c;
    import flash.events.MouseEvent;
    import 0y3.Server;
    import flash.utils.ByteArray;
    import WZ.0Te;
    import _04_._1JZ;
    import 0a-.0iQ;
    import 1zG.0BS;
    import 0a-.1lD;
    import 1PB.yi;
    import aq.Account;
    import 0Ln.1zI;
    import _0BB.Fu;
    import com.company.util.1X3;
    import com.company.assembleegameclient.parameters.Parameters;
    import yA.oF;
    import bD.0A-;
    import 0sk.26Z;
    import 0Ux.0tu;
    import TN.PackageButton;
    import flash.external.ExternalInterface;
    import com.company.assembleegameclient.tutorial.Tutorial;
    import com.company.assembleegameclient.objects.18p;
    import 0Px.1zw;
    import com.company.assembleegameclient.objects.Pet;
    import com.company.util.PointUtil;
    import 1m9.0lt;
    import flash.utils.getTimer;
    import F7.Ig;
    import flash.events.Event;
    import 01c.0h3;
    import 01c.0-7;
    import com.company.util._hd;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.assembleegameclient.objects.Projectile;
    import com.company.googleanalytics.GA;

    public class GameSprite extends nx {

        protected static const _1hD:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._1Z6);

        public const ES:_1HZ = new _1HZ(String, int);
        public const _1_ZS:_1HZ = new _1HZ();
        public const _0GM:_1HZ = new _1HZ(Player);

        public var _4S:Chat;
        public var isNexus_:Boolean = false;
        public var _0E9:_0lO;
        public var gZ:RankText;
        public var J9:_1sK;
        public var _0qv:_02I;
        public var I1:GiftStatusDisplay;
        public var f4:_17B;
        public var _1ro:_0bI;
        public var _0pK:ve;
        public var _1kM:_0Ja;
        public var _8e:_NV;
        public var _1JK:l;
        public var _1ji:Bd;
        public var _1IO:_1HZ;
        public var _2M:_0jv;
        private var focus:GameObject;
        private var _1D0:int = 0;
        private var UQ:int = 0;
        private var _1n:Boolean;
        private var sE:uint = 4;
        private var V3:DisplayObject;
        private var jm:Number;
        public var _0ZL:PlayerMenu;

        public function GameSprite(_arg1:Server, _arg2:int, _arg3:Boolean, _arg4:int, _arg5:int, _arg6:ByteArray, _arg7:0Te, _arg8:String, _arg9:Boolean){
            this.1IO = new _1HZ();
            this.V3 = new Sprite();
            super();
            this.model = _arg7;
            map = new Map(this);
            addChild(map);
            gsc_ = new 2-c(this, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg8, _arg9);
            mui_ = new 0Df(this);
            this.4S = new Chat();
            this.4S.list.addEventListener(MouseEvent.MOUSE_DOWN, this.Dj);
            this.4S.list.addEventListener(MouseEvent.MOUSE_UP, this.9i);
            addChild(this.4S);
            this.0E9 = new 0lO();
        }

        public static function 0VF(_arg1:0BS):void{
            var _local2:0iQ = _1JZ.0JF().getInstance(0iQ);
            ((_local2) && (_local2.dispatch(_arg1)));
        }

        private static function 1H3():void{
            var _local1:1lD = _1JZ.0JF().getInstance(1lD);
            ((_local1) && (_local1.dispatch()));
        }


        public function Dj(_arg1:MouseEvent):void{
            if (this.0ZL != null)
            {
                this.1tj();
            };
            mui_.onMouseDown(_arg1);
        }

        public function 9i(_arg1:MouseEvent):void{
            mui_.onMouseUp(_arg1);
        }

        override public function setFocus(_arg1:GameObject):void{
            _arg1 = ((_arg1) || (map.player_));
            this.focus = _arg1;
        }

        public function FP(_arg1:Player, _arg2:Number, _arg3:Number, _arg4:String=null, _arg5:Boolean=false, _arg6:Boolean=false):void{
            this.1tj();
            this.0ZL = new PlayerMenu();
            if (_arg4 == null)
            {
                this.0ZL.init(this, _arg1);
            } else
            {
                if (_arg6)
                {
                    this.0ZL.Us(this, _arg4, _arg5, _arg6);
                } else
                {
                    if ((((_arg4.length > 0)) && ((((((_arg4.charAt(0) == "#")) || ((_arg4.charAt(0) == "*")))) || ((_arg4.charAt(0) == "@"))))))
                    {
                        return;
                    };
                    this.0ZL.Us(this, _arg4, _arg5);
                };
            };
            addChild(this.0ZL);
            this.0ZL.x = _arg2;
            this.0ZL.y = (_arg3 - this.0ZL.height);
        }

        public function 1tj():void{
            if (((!((this.0ZL == null))) && (!((this.0ZL.parent == null)))))
            {
                removeChild(this.0ZL);
                this.0ZL = null;
            };
        }

        override public function applyMapInfo(_arg1:0BS):void{
            map.setProps(_arg1.width_, _arg1.height_, _arg1.name_, _arg1.background_, _arg1.allowPlayerTeleport_, _arg1.showDisplays_);
            0VF(_arg1);
        }

        public function We():void{
            hudView = new yi();
            hudView.x = 600;
            addChild(hudView);
        }

        override public function initialize():void{
            var _local1:Account;
            var _local4:1zI;
            map.initialize();
            this.1_ZS.dispatch();
            if (this.evalIsNotInCombatMapArea())
            {
                this.0EF();
            };
            if (map.name_ == "Arena")
            {
                this.0mn();
                this.0va();
            };
            _local1 = _1JZ.0JF().getInstance(Account);
            if (((this.2M.0wW()) && ((map.name_ == Map.1U3))))
            {
                if (this.1JK.oN())
                {
                    this.1ji.dispatch();
                } else
                {
                    this.1IO.dispatch();
                };
                this.2M.BC++;
            };
            this.isNexus_ = (map.name_ == Map.1U3);
            if (((this.isNexus_) || ((map.name_ == Map.1aw))))
            {
                this.0qv = new 02I(this, true, true);
            } else
            {
                this.0qv = new 02I(this);
            };
            this.0qv.x = 594;
            this.0qv.y = 0;
            addChild(this.0qv);
            var _local2:Fu = _1JZ.0JF().getInstance(Fu);
            var _local3:Object = {
                game_net_user_id:_local1.0yO(),
                game_net:_local1.Gc(),
                play_platform:_local1.229()
            };
            1X3.1J7(_local3, _local1.1Y());
            if (((((((!((map.name_ == "Kitchen"))) && (!((map.name_ == "Tutorial"))))) && (!((map.name_ == "Nexus Explanation"))))) && ((Parameters.data_.watchForTutorialExit == true))))
            {
                Parameters.data_.watchForTutorialExit = false;
                this.18E('rotmg.Marketing.track("tutorialComplete")');
                _local3["fteStepCompleted"] = 9900;
                _local2.sendRequest("/log/logFteStep", _local3);
            };
            if (map.name_ == "Kitchen")
            {
                _local3["fteStepCompleted"] = 200;
                _local2.sendRequest("/log/logFteStep", _local3);
            };
            if (map.name_ == "Tutorial")
            {
                if (Parameters.data_.needsTutorial == true)
                {
                    Parameters.data_.watchForTutorialExit = true;
                    this.18E('rotmg.Marketing.track("install")');
                    _local3["fteStepCompleted"] = 100;
                    _local2.sendRequest("/log/logFteStep", _local3);
                };
                this.1qo();
            } else
            {
                if (((((((((((((!((map.name_ == "Arena"))) && (!((map.name_ == "Kitchen"))))) && (!((map.name_ == "Nexus Explanation"))))) && (!((map.name_ == "Vault Explanation"))))) && (!((map.name_ == "Guild Explanation"))))) && (!(this.evalIsNotInCombatMapArea())))) && (Parameters.data_.showProtips)))
                {
                    _local4 = _1JZ.0JF().getInstance(1zI);
                    ((_local4) && (_local4.dispatch()));
                };
            };
            if (map.name_ == "Daily Quest Room")
            {
                oF.Ft();
            };
            Parameters.save();
            1H3();
        }

        private function 0EF():void{
            this.144();
            this.vp();
            this.0-S();
            this.1yj();
            if (((((("production".toLowerCase() == "dev")) || (Player.QH))) || (("production".toLowerCase() == "localhost"))))
            {
                this.Y4();
            };
            this.1Ze();
        }

        private function 0mn():void{
            this.0pK = new ve();
            this.0pK.y = 5;
            addChild(this.0pK);
        }

        private function 0va():void{
            this.1kM = new 0Ja();
            this.1kM.y = 5;
            this.1kM.x = 5;
            addChild(this.1kM);
        }

        private function 1Ze():void{
            this.1ro = new 0bI();
            this.1ro.x = (300 - (this.1ro.width / 2));
            this.1ro.y = (5 + 0A-.0Fi);
            addChild(this.1ro);
        }

        private function 1yj():void{
            this.I1 = new GiftStatusDisplay();
            this.I1.x = 6;
            this.I1.y = (this.sE + 2);
            this.sE = (this.sE + 0A-.0Fi);
            addChild(this.I1);
        }

        private function Y4(_arg1:Boolean=true):void{
            var _local3:17B;
            var _local2:26Z = _1JZ.0JF().getInstance(26Z);
            if (_local2.0FY())
            {
                _local3 = new 17B();
                _local3.x = 6;
                _local3.y = 92;
                if (_arg1)
                {
                    this.sE = (this.sE + 0A-.0Fi);
                };
                if (this.f4 != null)
                {
                    removeChild(this.f4);
                };
                this.f4 = _local3;
                addChild(this.f4);
            };
        }

        public function 1w():void{
            this.Y4(false);
        }

        private function 0-S():void{
            this.jm = (this.sE + 2);
            this.sE = (this.sE + 0A-.0Fi);
            this.0hp();
        }

        private function 0hp():void{
            this.V3.x = 6;
            this.V3.y = this.jm;
        }

        public function 1Hy():void{
            if (this.evalIsNotInCombatMapArea())
            {
                this.19K(new 0tu());
            };
        }

        public function 1IH():void{
            if (this.evalIsNotInCombatMapArea())
            {
                this.19K(new PackageButton());
            };
        }

        private function 19K(_arg1:DisplayObject):void{
            this.V3 = _arg1;
            addChild(this.V3);
            this.0hp();
        }

        private function vp():void{
            this.J9 = new 1sK("", -1);
            this.J9.x = 64;
            this.J9.y = 6;
            addChild(this.J9);
        }

        private function 144():void{
            this.gZ = new RankText(-1, true, false);
            this.gZ.x = 8;
            this.gZ.y = this.sE;
            this.sE = (this.sE + 0A-.0Fi);
            addChild(this.gZ);
        }

        private function 18E(_arg1:String):void{
            if (ExternalInterface.available == false)
            {
                return;
            };
            try
            {
                ExternalInterface.call(_arg1);
            } catch(err:Error)
            {
            };
        }

        private function 1qo():void{
            tutorial_ = new Tutorial(this);
            addChild(tutorial_);
        }

        private function Po():void{
            var _local4:Number;
            var _local7:GameObject;
            var _local8:18p;
            if (((!(map)) || (!(map.player_))))
            {
                return;
            };
            var _local1:Player = map.player_;
            var _local2:Number = 1zw.1rb;
            var _local3:18p;
            var _local5:Number = _local1.x_;
            var _local6:Number = _local1.y_;
            for each (_local7 in map.goDict_)
            {
                _local8 = (_local7 as 18p);
                if (((_local8) && (((!((_local8 is Pet))) || (this.map.isPetYard)))))
                {
                    if ((((Math.abs((_local5 - _local7.x_)) < 1zw.1rb)) || ((Math.abs((_local6 - _local7.y_)) < 1zw.1rb))))
                    {
                        _local4 = PointUtil.Fg(_local7.x_, _local7.y_, _local5, _local6);
                        if ((((_local4 < 1zw.1rb)) && ((_local4 < _local2))))
                        {
                            _local2 = _local4;
                            _local3 = _local8;
                        };
                    };
                };
            };
            this.8e.25S = _local3;
        }

        private function Re():Boolean{
            return (true);
        }

        public function connect():void{
            if (!this.1n)
            {
                this.1n = true;
                0lt.0uZ = true;
                gsc_.connect();
                this.0E9.start(this);
                lastUpdate_ = getTimer();
                stage.addEventListener(Ig.MONEY_CHANGED, this.1LV);
                stage.addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
                0h3.024(new 0-7(100, this.Po));
            };
        }

        public function disconnect():void{
            if (this.1n)
            {
                this.1n = false;
                0lt.0uZ = false;
                this.0E9.stop();
                stage.removeEventListener(Ig.MONEY_CHANGED, this.1LV);
                stage.removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
                0h3.LT();
                ((contains(map)) && (removeChild(map)));
                map.dispose();
                hd.clear();
                TextureRedrawer.clearCache();
                Projectile.dispose();
                gsc_.disconnect();
            };
        }

        private function 1LV(_arg1:Event):void{
            gsc_.checkCredits();
        }

        override public function evalIsNotInCombatMapArea():Boolean{
            return ((((((((((((map.name_ == Map.1U3)) || ((map.name_ == Map.1YS)))) || ((map.name_ == Map.mb)))) || ((map.name_ == Map.0nP)))) || ((map.name_ == Map.tJ)))) || ((map.name_ == Map.1aw))));
        }

        private function onEnterFrame(_arg1:Event):void{
            var _local7:Number;
            var _local2:int = getTimer();
            var _local3:int = (_local2 - lastUpdate_);
            if (this.0E9.update(_local3))
            {
                closed.dispatch();
                return;
            };
            0h3.1-2(_local2);
            this.1D0 = (this.1D0 + _local3);
            this.UQ = (this.UQ + 1);
            if (this.1D0 > 300000)
            {
                _local7 = int(Math.round(((1000 * this.UQ) / this.1D0)));
                GA.global().trackEvent("performance", "frameRate", map.name_, _local7);
                this.UQ = 0;
                this.1D0 = 0;
            };
            var _local4:int = getTimer();
            map.update(_local2, _local3);
            this.ES.dispatch("Map.update", (getTimer() - _local4));
            camera_.update(_local3);
            var _local5:Player = map.player_;
            if (this.focus)
            {
                camera_.configureCamera(this.focus, ((_local5) ? _local5.1VL() : false));
                map.draw(camera_, _local2);
            };
            if (_local5 != null)
            {
                this.0qv.draw(_local5.credits_, _local5.1iQ, _local5.0NG);
                this.0GM.dispatch(_local5);
                if (this.evalIsNotInCombatMapArea())
                {
                    this.gZ.draw(_local5.numStars_);
                    this.J9.draw(_local5.guildName_, _local5.guildRank_);
                };
                if (_local5.isPaused())
                {
                    map.filters = [1hD];
                    hudView.filters = [1hD];
                    map.mouseEnabled = false;
                    map.mouseChildren = false;
                    hudView.mouseEnabled = false;
                    hudView.mouseChildren = false;
                } else
                {
                    if (map.filters.length > 0)
                    {
                        map.filters = [];
                        hudView.filters = [];
                        map.mouseEnabled = true;
                        map.mouseChildren = true;
                        hudView.mouseEnabled = true;
                        hudView.mouseChildren = true;
                    };
                };
                moveRecords_.addRecord(_local2, _local5.x_, _local5.y_);
            };
            lastUpdate_ = _local2;
            var _local6:int = (getTimer() - _local2);
            this.ES.dispatch("GameSprite.loop", _local6);
        }

        public function da(_arg1:Boolean):void{
        }


    }
}//package com.company.assembleegameclient.game

