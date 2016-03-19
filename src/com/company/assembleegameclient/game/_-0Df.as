// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.game.0Df

package com.company.assembleegameclient.game{
    import 0AB.Stats;
    import 0UV.13V;
    import 0UV.0rh;
    import 0UV.9-;
    import eC.0bp;
    import 2b.xS;
    import 0UV.11G;
    import gx.1z1;
    import 1qg.0io;
    import 1qg.11S;
    import 0xo.1Js;
    import JV.1OM;
    import 0UV.1P9;
    import 21k.1Xb;
    import flash.events.Event;
    import _04_._1JZ;
    import _0OG._22M;
    import qG.0bJ;
    import flash.events.MouseEvent;
    import flash.display.Stage;
    import flash.events.KeyboardEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import 0Px.12v;
    import com.company.assembleegameclient.tutorial.doneAction;
    import com.company.assembleegameclient.tutorial.Tutorial;
    import com.company.assembleegameclient.objects.GameObject;
    import com.company.assembleegameclient.map.Square;
    import com.company.util.02E;
    import gx.8Q;
    import 1Cr.L9;
    import _1zp.Options;
    import flash.system.Capabilities;
    import flash.display.StageDisplayState;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import 1u-.1Ys;
    import 0Px.1zw;
    import 1r4.1T2;

    public class 0Df {

        private static const 0WP:uint = 175;

        private static var Zg:Stats = new Stats();
        private static var 0Ym:Boolean = false;

        public var gs_:GameSprite;
        private var 1K7:Boolean = false;
        private var 1wi:Boolean = false;
        private var 1i2:Boolean = false;
        private var UO:Boolean = false;
        private var 1Fj:Boolean = false;
        private var 0EJ:Boolean = false;
        private var 1wo:Boolean = false;
        private var oy:Boolean = false;
        private var 0Dk:Boolean = false;
        private var 213:Boolean = true;
        private var 20e:13V;
        private var 12K:0rh;
        private var 1gY:9-;
        private var 1AX:0bp;
        private var 0rk:xS;
        private var Zc:11G;
        private var 12J:1z1;
        private var 1qM:0io;
        private var 1tT:11S;
        private var 1UT:1Js;
        private var W2:1OM;
        private var 173:1P9;
        private var Yu:Boolean;
        private var 0lQ:1Xb;

        public function 0Df(_arg1:GameSprite){
            this.gs_ = _arg1;
            this.gs_.addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
            this.gs_.addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            var _local2:_22M = _1JZ.0JF();
            this.20e = _local2.getInstance(13V);
            this.0lQ = _local2.getInstance(1Xb);
            this.12K = _local2.getInstance(0rh);
            this.1gY = _local2.getInstance(9-);
            this.0rk = _local2.getInstance(xS);
            this.Zc = _local2.getInstance(11G);
            this.12J = _local2.getInstance(1z1);
            this.1UT = _local2.getInstance(1Js);
            this.W2 = _local2.getInstance(1OM);
            this.1AX = _local2.getInstance(0bp);
            this.173 = _local2.getInstance(1P9);
            this.1qM = _local2.getInstance(0io);
            this.1tT = _local2.getInstance(11S);
            var _local3:0bJ = _local2.getInstance(0bJ);
            this.Yu = _local3.0Me();
            this.gs_.map.signalRenderSwitch.add(this.236);
        }

        public function 236(_arg1:Boolean):void{
            if (_arg1)
            {
                this.gs_.stage.removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
                this.gs_.stage.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
                this.gs_.map.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
                this.gs_.map.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            } else
            {
                this.gs_.map.removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
                this.gs_.map.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
                this.gs_.stage.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
                this.gs_.stage.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            }
        }

        public function clearInput():void{
            this.1K7 = false;
            this.1wi = false;
            this.1i2 = false;
            this.UO = false;
            this.1Fj = false;
            this.0EJ = false;
            this.1wo = false;
            this.oy = false;
            this.Az();
        }

        public function setEnablePlayerInput(_arg1:Boolean):void{
            if (this.213 != _arg1)
            {
                this.213 = _arg1;
                this.clearInput();
            }
        }

        private function onAddedToStage(_arg1:Event):void{
            var _local2:Stage = this.gs_.stage;
            _local2.addEventListener(Event.ACTIVATE, this.1xu);
            _local2.addEventListener(Event.DEACTIVATE, this.y3);
            _local2.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            _local2.addEventListener(KeyboardEvent.KEY_UP, this.0M9);
            _local2.addEventListener(MouseEvent.MOUSE_WHEEL, this.1Av);
            if (Parameters.TP())
            {
                _local2.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
                _local2.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            } else
            {
                this.gs_.map.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
                this.gs_.map.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            }
            _local2.addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            _local2.addEventListener(MouseEvent.RIGHT_CLICK, this.0fO);
        }

        public function 0fO(_arg1:MouseEvent):void{
        }

        private function onRemovedFromStage(_arg1:Event):void{
            var _local2:Stage = this.gs_.stage;
            _local2.removeEventListener(Event.ACTIVATE, this.1xu);
            _local2.removeEventListener(Event.DEACTIVATE, this.y3);
            _local2.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
            _local2.removeEventListener(KeyboardEvent.KEY_UP, this.0M9);
            _local2.removeEventListener(MouseEvent.MOUSE_WHEEL, this.1Av);
            if (Parameters.TP())
            {
                _local2.removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
                _local2.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            } else
            {
                this.gs_.map.removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
                this.gs_.map.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            }
            _local2.removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            _local2.removeEventListener(MouseEvent.RIGHT_CLICK, this.0fO);
        }

        private function 1xu(_arg1:Event):void{
        }

        private function y3(_arg1:Event):void{
            this.clearInput();
        }

        public function onMouseDown(_arg1:MouseEvent):void{
            var _local3:Number;
            var _local4:int;
            var _local5:XML;
            var _local6:Number;
            var _local7:Number;
            var _local2:Player = this.gs_.map.player_;
            if (_local2 == null)
            {
                return;
            }
            if (!this.213)
            {
                return;
            }
            if (_arg1.shiftKey)
            {
                _local4 = _local2.1Wz[1];
                if (_local4 == -1)
                {
                    return;
                }
                _local5 = ObjectLibrary.GD[_local4];
                if ((((_local5 == null)) || (_local5.hasOwnProperty("EndMpCost"))))
                {
                    return;
                }
                if (_local2.isUnstable())
                {
                    _local6 = ((Math.random() * 600) - 300);
                    _local7 = ((Math.random() * 600) - 325);
                } else
                {
                    _local6 = this.gs_.map.mouseX;
                    _local7 = this.gs_.map.mouseY;
                }
                if (Parameters.TP())
                {
                    if ((((((_arg1.currentTarget == _arg1.target)) || ((_arg1.target == this.gs_.map)))) || ((_arg1.target == this.gs_))))
                    {
                        _local2.useAltWeapon(_local6, _local7, 12v.1Oc);
                    }
                } else
                {
                    _local2.useAltWeapon(_local6, _local7, 12v.1Oc);
                }
                return;
            }
            if (Parameters.TP())
            {
                if ((((((((_arg1.currentTarget == _arg1.target)) || ((_arg1.target == this.gs_.map)))) || ((_arg1.target == this.gs_)))) || ((_arg1.currentTarget == this.gs_.4S.list))))
                {
                    _local3 = Math.atan2(this.gs_.map.mouseY, this.gs_.map.mouseX);
                } else
                {
                    return;
                }
            } else
            {
                _local3 = Math.atan2(this.gs_.map.mouseY, this.gs_.map.mouseX);
            }
            doneAction(this.gs_, Tutorial.1i3);
            if (_local2.isUnstable())
            {
                _local2.MP((Math.random() * 360));
            } else
            {
                _local2.MP(_local3);
            }
            this.1wo = true;
        }

        public function onMouseUp(_arg1:MouseEvent):void{
            this.1wo = false;
            var _local2:Player = this.gs_.map.player_;
            if (_local2 == null)
            {
                return;
            }
            _local2.isShooting = false;
        }

        private function 1Av(_arg1:MouseEvent):void{
            if (_arg1.delta > 0)
            {
                this.0rk.dispatch(xS.IN);
            } else
            {
                this.0rk.dispatch(xS.OUT);
            }
        }

        private function onEnterFrame(_arg1:Event):void{
            var _local2:Player;
            var _local3:Number;
            doneAction(this.gs_, Tutorial.1Te);
            if (((this.213) && (((this.1wo) || (this.oy)))))
            {
                _local2 = this.gs_.map.player_;
                if (_local2 != null)
                {
                    if (_local2.isUnstable())
                    {
                        _local2.MP((Math.random() * 360));
                    } else
                    {
                        _local3 = Math.atan2(this.gs_.map.mouseY, this.gs_.map.mouseX);
                        _local2.MP(_local3);
                    }
                }
            }
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            var _local4:GameObject;
            var _local5:Number;
            var _local6:Number;
            var _local7:Boolean;
            var _local8:Square;
            var _local2:Stage = this.gs_.stage;
            switch (_arg1.keyCode)
            {
                case 02E.F1:
                case 02E.F2:
                case 02E.F3:
                case 02E.F4:
                case 02E.F5:
                case 02E.F6:
                case 02E.F7:
                case 02E.F8:
                case 02E.F9:
                case 02E.F10:
                case 02E.F11:
                case 02E.F12:
                case 02E.BW:
                case 02E.eX:
                    break;
                default:
                    if (_local2.focus != null)
                    {
                        return;
                    }
            }
            var _local3:Player = this.gs_.map.player_;
            switch (_arg1.keyCode)
            {
                case Parameters.data_.moveUp:
                    doneAction(this.gs_, Tutorial.1i0);
                    this.1i2 = true;
                    break;
                case Parameters.data_.moveDown:
                    doneAction(this.gs_, Tutorial.1nn);
                    this.UO = true;
                    break;
                case Parameters.data_.moveLeft:
                    doneAction(this.gs_, Tutorial.18V);
                    this.1K7 = true;
                    break;
                case Parameters.data_.moveRight:
                    doneAction(this.gs_, Tutorial.1N4);
                    this.1wi = true;
                    break;
                case Parameters.data_.rotateLeft:
                    if (!Parameters.data_.allowRotation)
                    {
                        break;
                    }
                    doneAction(this.gs_, Tutorial.BH);
                    this.1Fj = true;
                    break;
                case Parameters.data_.rotateRight:
                    if (!Parameters.data_.allowRotation) break;
                    doneAction(this.gs_, Tutorial.0PU);
                    this.0EJ = true;
                    break;
                case Parameters.data_.resetToDefaultCameraAngle:
                    Parameters.data_.cameraAngle = Parameters.data_.defaultCameraAngle;
                    Parameters.save();
                    break;
                case Parameters.data_.useSpecial:
                    _local4 = this.gs_.map.player_;
                    if (_local4 == null) break;
                    if (!this.0Dk)
                    {
                        if (_local3.isUnstable())
                        {
                            _local5 = ((Math.random() * 600) - 300);
                            _local6 = ((Math.random() * 600) - 325);
                        } else
                        {
                            _local5 = this.gs_.map.mouseX;
                            _local6 = this.gs_.map.mouseY;
                        }
                        _local7 = _local3.useAltWeapon(_local5, _local6, 12v.1Oc);
                        if (_local7)
                        {
                            this.0Dk = true;
                        }
                    }
                    break;
                case Parameters.data_.autofireToggle:
                    this.gs_.map.player_.isShooting = (this.oy = !(this.oy));
                    break;
                case Parameters.data_.toggleHPBar:
                    Parameters.data_.HPBar = !(Parameters.data_.HPBar);
                    break;
                case Parameters.data_.useInvSlot1:
                    this.useItem(4);
                    break;
                case Parameters.data_.useInvSlot2:
                    this.useItem(5);
                    break;
                case Parameters.data_.useInvSlot3:
                    this.useItem(6);
                    break;
                case Parameters.data_.useInvSlot4:
                    this.useItem(7);
                    break;
                case Parameters.data_.useInvSlot5:
                    this.useItem(8);
                    break;
                case Parameters.data_.useInvSlot6:
                    this.useItem(9);
                    break;
                case Parameters.data_.useInvSlot7:
                    this.useItem(10);
                    break;
                case Parameters.data_.useInvSlot8:
                    this.useItem(11);
                    break;
                case Parameters.data_.useHealthPotion:
                    if (this.12J.08L(1z1.0Rl).available)
                    {
                        this.Zc.dispatch(new 8Q(1z1.0Rl, 8Q.05Z));
                    }
                    break;
                case Parameters.data_.GPURenderToggle:
                    Parameters.data_.GPURender = !(Parameters.data_.GPURender);
                    break;
                case Parameters.data_.useMagicPotion:
                    if (this.12J.08L(1z1.Ww).available)
                    {
                        this.Zc.dispatch(new 8Q(1z1.Ww, 8Q.05Z));
                    }
                    break;
                case Parameters.data_.miniMapZoomOut:
                    this.0rk.dispatch(xS.OUT);
                    break;
                case Parameters.data_.miniMapZoomIn:
                    this.0rk.dispatch(xS.IN);
                    break;
                case Parameters.data_.togglePerformanceStats:
                    this.togglePerformanceStats();
                    break;
                case Parameters.data_.escapeToNexus:
                case Parameters.data_.escapeToNexus2:
                    this.173.dispatch();
                    this.gs_.gsc_.escape();
                    Parameters.data_.needsRandomRealm = false;
                    Parameters.save();
                    break;
                case Parameters.data_.friendList:
                    Parameters.data_.friendListDisplayFlag = !(Parameters.data_.friendListDisplayFlag);
                    if (Parameters.data_.friendListDisplayFlag)
                    {
                        this.1qM.dispatch(new L9());
                    } else
                    {
                        this.1tT.dispatch();
                    }
                    break;
                case Parameters.data_.options:
                    this.clearInput();
                    this.W2.0sw.addChild(new Options(this.gs_));
                    break;
                case Parameters.data_.toggleCentering:
                    Parameters.data_.centerOnPlayer = !(Parameters.data_.centerOnPlayer);
                    Parameters.save();
                    break;
                case Parameters.data_.toggleFullscreen:
                    if (Capabilities.playerType == "Desktop")
                    {
                        Parameters.data_.fullscreenMode = !(Parameters.data_.fullscreenMode);
                        Parameters.save();
                        _local2.displayState = ((Parameters.data_.fullscreenMode) ? "fullScreenInteractive" : StageDisplayState.NORMAL);
                    }
                    break;
                case Parameters.data_.switchTabs:
                    this.1AX.dispatch();
                    break;
                case Parameters.data_.testOne:
                    break;
            }
            if (Parameters.0lx)
            {
                switch (_arg1.keyCode)
                {
                    case 02E.F2:
                        this.1rC();
                        break;
                    case 02E.F3:
                        Parameters.271 = !(Parameters.271);
                        break;
                    case 02E.F4:
                        this.gs_.map.mapOverlay_.visible = !(this.gs_.map.mapOverlay_.visible);
                        this.gs_.map.partyOverlay_.visible = !(this.gs_.map.partyOverlay_.visible);
                        break;
                }
            }
            if (this.Yu)
            {
                switch (_arg1.keyCode)
                {
                    case 02E.F6:
                        TextureRedrawer.clearCache();
                        Parameters.1KO = ((Parameters.1KO + 1) % 7);
                        this.12K.dispatch(1Ys.make(Parameters.1Wj, ("Projectile Color Type: " + Parameters.1KO)));
                        break;
                    case 02E.F7:
                        for each (_local8 in this.gs_.map.squares_)
                        {
                            if (_local8 == null)
                            {
                            } else
                            {
                                _local8.faces_.length = 0;
                            }
                        }
                        Parameters.1tu = ((Parameters.1tu + 1) % 2);
                        this.12K.dispatch(1Ys.make(Parameters.uL, ("Blend type: " + Parameters.1tu)));
                        break;
                    case 02E.F8:
                        Parameters.data_.surveyDate = 0;
                        Parameters.data_.needsSurvey = true;
                        Parameters.data_.playTimeLeftTillSurvey = 5;
                        Parameters.data_.surveyGroup = "testing";
                        break;
                    case 02E.F9:
                        Parameters.0pm = !(Parameters.0pm);
                        break;
                }
            }
            this.Az();
        }

        private function 0M9(_arg1:KeyboardEvent):void{
            var _local2:Number;
            var _local3:Number;
            switch (_arg1.keyCode)
            {
                case Parameters.data_.moveUp:
                    this.1i2 = false;
                    break;
                case Parameters.data_.moveDown:
                    this.UO = false;
                    break;
                case Parameters.data_.moveLeft:
                    this.1K7 = false;
                    break;
                case Parameters.data_.moveRight:
                    this.1wi = false;
                    break;
                case Parameters.data_.rotateLeft:
                    this.1Fj = false;
                    break;
                case Parameters.data_.rotateRight:
                    this.0EJ = false;
                    break;
                case Parameters.data_.useSpecial:
                    if (this.0Dk)
                    {
                        this.0Dk = false;
                        if (this.gs_.map.player_.isUnstable())
                        {
                            _local2 = ((Math.random() * 600) - 300);
                            _local3 = ((Math.random() * 600) - 325);
                        } else
                        {
                            _local2 = this.gs_.map.mouseX;
                            _local3 = this.gs_.map.mouseY;
                        }
                        this.gs_.map.player_.useAltWeapon(this.gs_.map.mouseX, this.gs_.map.mouseY, 12v.1J0);
                    }
                    break;
            }
            this.Az();
        }

        private function Az():void{
            var _local1:Player = this.gs_.map.player_;
            if (_local1 != null)
            {
                if (this.213)
                {
                    _local1.1qR((((this.0EJ) ? 1 : 0) - ((this.1Fj) ? 1 : 0)), (((this.1wi) ? 1 : 0) - ((this.1K7) ? 1 : 0)), (((this.UO) ? 1 : 0) - ((this.1i2) ? 1 : 0)));
                } else
                {
                    _local1.1qR(0, 0, 0);
                }
            }
        }

        private function useItem(_arg1:int):void{
            if (this.1UT.1Ee == 1Js.1yQ)
            {
                _arg1 = (_arg1 + 1zw.1dg);
            }
            1T2.1hP.useItem_new(this.gs_.map.player_, _arg1);
        }

        private function togglePerformanceStats():void{
            if (this.gs_.contains(Zg))
            {
                this.gs_.removeChild(Zg);
                this.gs_.removeChild(this.gs_.gsc_.jitterWatcher_);
                this.gs_.gsc_.disableJitterWatcher();
            } else
            {
                this.gs_.addChild(Zg);
                this.gs_.gsc_.enableJitterWatcher();
                this.gs_.gsc_.jitterWatcher_.y = Zg.height;
                this.gs_.addChild(this.gs_.gsc_.jitterWatcher_);
            }
        }

        private function 1rC():void{
            Parameters.1Wc = !(Parameters.1Wc);
            if (Parameters.1Wc)
            {
                this.gs_.hudView.visible = false;
                this.1gY.dispatch(false);
            } else
            {
                this.gs_.hudView.visible = true;
                this.1gY.dispatch(true);
            }
        }


    }
}//package com.company.assembleegameclient.game

