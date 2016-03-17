// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//EM.Console

package EM{
    import flash.display.Sprite;
    import 2-g.p7;
    import 1Tb.CommandLine;
    import 1Tb.9a;
    import 1Tb.1-T;
    import 1Tb.0cg;
    import 1Tb.aP;
    import 1Tb.xi;
    import 1Tb.Td;
    import 1Tb.0Ih;
    import flash.net.SharedObject;
    import flash.system.Capabilities;
    import flash.events.Event;
    import flash.events.KeyboardEvent;
    import flash.events.IEventDispatcher;
    import flash.display.LoaderInfo;
    import flash.events.ErrorEvent;
    import flash.geom.Rectangle;
    import 2-g.0kO;
    import flash.display.DisplayObjectContainer;
    import flash.utils.getTimer;
    import gh.Dq;

    public class Console extends Sprite {

        public static const VERSION:Number = 2.6;
        public static const 1R2:String = "";
        public static const 1HJ:int = 611;
        public static const 0Fj:String = "_2012/02/22 00:11";
        public static const 9Z:uint = 1;
        public static const INFO:uint = 3;
        public static const DEBUG:uint = 6;
        public static const WARN:uint = 8;
        public static const ERROR:uint = 9;
        public static const FATAL:uint = 10;
        public static const TI:String = " * ";
        public static const ss:String = "-";
        public static const 24a:String = "C";
        public static const Dk:String = "~";

        private var _config:12N;
        private var wE:p7;
        private var DE:CommandLine;
        private var 0jR:9a;
        private var lX:1-T;
        private var rv:0cg;
        private var 10T:aP;
        private var 1fH:xi;
        private var 26t:Td;
        private var E0:int = 50;
        private var 0dF:Boolean;
        private var 20p:1L8;
        private var 07S:0Ih;
        private var jY:SharedObject;
        private var 0Kd:Object;

        public function Console(_arg1:String="", _arg2:12N=null){
            var password:String = _arg1;
            var config = _arg2;
            this.0Kd = {};
            super();
            name = "Console";
            if (config == null)
            {
                config = new 12N();
            };
            this._config = config;
            if (password)
            {
                this._config.keystrokePassword = password;
            };
            this.1fH = new xi(this);
            this.07S = new 0Ih(this);
            this.lX = new 1-T(this);
            this.DE = new CommandLine(this);
            this.26t = new Td(this);
            this.10T = new aP(this);
            this.rv = new 0cg(this);
            this.0jR = new 9a(this);
            this.cl.addCLCmd("remotingSocket", function (_arg1:String=""):void{
                var _local2:Array = _arg1.split(/\s+|\:/);
                remotingSocket(_local2[0], _local2[1]);
            }, "Connect to socket remote. /remotingSocket ip port");
            if (this._config.XX)
            {
                try
                {
                    this.jY = SharedObject.getLocal(this._config.XX, this._config.0At);
                    this.0Kd = this.jY.data;
                } catch(e:Error)
                {
                };
            };
            this._config.style.updateStyleSheet();
            this.wE = new p7(this);
            if (password)
            {
                this.visible = false;
            };
            this.report(((((((((("<b>Console v" + VERSION) + 1R2) + "</b> build ") + 1HJ) + ". ") + Capabilities.playerType) + " ") + Capabilities.version) + "."), -2);
            addEventListener(Event.ENTER_FRAME, this.JA);
            addEventListener(Event.ADDED_TO_STAGE, this.0im);
        }

        public static function 0-U(_arg1):String{
            if ((_arg1 is String))
            {
                return ((_arg1 as String));
            };
            if (_arg1)
            {
                return (1-T.0Ds(_arg1));
            };
            return (ss);
        }


        private function 0im(_arg1:Event=null):void{
            if (this.DE.base == null)
            {
                this.DE.base = parent;
            };
            if (loaderInfo)
            {
                this.0Af(loaderInfo);
            };
            removeEventListener(Event.ADDED_TO_STAGE, this.0im);
            addEventListener(Event.REMOVED_FROM_STAGE, this.yw);
            stage.addEventListener(Event.MOUSE_LEAVE, this.h6, false, 0, true);
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this.0jR.1If, false, 0, true);
            stage.addEventListener(KeyboardEvent.KEY_UP, this.0jR.0TK, false, 0, true);
        }

        private function yw(_arg1:Event=null):void{
            this.DE.base = null;
            removeEventListener(Event.REMOVED_FROM_STAGE, this.yw);
            addEventListener(Event.ADDED_TO_STAGE, this.0im);
            stage.removeEventListener(Event.MOUSE_LEAVE, this.h6);
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.0jR.1If);
            stage.removeEventListener(KeyboardEvent.KEY_UP, this.0jR.0TK);
        }

        private function h6(_arg1:Event):void{
            this.wE.tooltip(null);
        }

        public function 0Af(_arg1:LoaderInfo):void{
            var _local2:IEventDispatcher;
            try
            {
                _local2 = _arg1["uncaughtErrorEvents"];
                if (_local2)
                {
                    _local2.addEventListener("uncaughtError", this.0Jm, false, 0, true);
                };
            } catch(err:Error)
            {
            };
        }

        private function 0Jm(_arg1:Event):void{
            var _local3:String;
            var _local2:* = ((_arg1.hasOwnProperty("error")) ? _arg1["error"] : _arg1);
            if ((_local2 is Error))
            {
                _local3 = this.lX.makeString(_local2);
            } else
            {
                if ((_local2 is ErrorEvent))
                {
                    _local3 = ErrorEvent(_local2).text;
                };
            };
            if (!_local3)
            {
                _local3 = String(_local2);
            };
            this.report(_local3, FATAL, false);
        }

        public function 0HV(_arg1:String, _arg2:Object, _arg3:String, _arg4:Number=-1, _arg5:String=null, _arg6:Rectangle=null, _arg7:Boolean=false):void{
            this.10T.add(_arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7);
        }

        public function d0(_arg1:String, _arg2:Number=NaN, _arg3:Number=NaN):void{
            this.10T.1Jz(_arg1, _arg2, _arg3);
        }

        public function removeGraph(_arg1:String, _arg2:Object=null, _arg3:String=null):void{
            this.10T.remove(_arg1, _arg2, _arg3);
        }

        public function 0cJ(_arg1:1L8, _arg2:Function, _arg3:Array=null):void{
            if (_arg1)
            {
                this.0jR.0cJ(_arg1, _arg2, _arg3);
            };
        }

        public function 4y(_arg1:String, _arg2:Function, _arg3:Array=null, _arg4:String=null):void{
            this.panels.mainPanel.4y(_arg1, _arg2, _arg3, _arg4);
        }

        public function get displayRoller():Boolean{
            return (this.wE.displayRoller);
        }

        public function set displayRoller(_arg1:Boolean):void{
            this.wE.displayRoller = _arg1;
        }

        public function setRollerCaptureKey(_arg1:String, _arg2:Boolean=false, _arg3:Boolean=false, _arg4:Boolean=false):void{
            if (this.20p)
            {
                this.0cJ(this.20p, null);
                this.20p = null;
            };
            if (((_arg1) && ((_arg1.length == 1))))
            {
                this.20p = new 1L8(_arg1, _arg2, _arg3, _arg4);
                this.0cJ(this.20p, this.1pJ);
            };
        }

        public function get rollerCaptureKey():1L8{
            return (this.20p);
        }

        private function 1pJ():void{
            if (this.displayRoller)
            {
                this.report(("Display Roller Capture:<br/>" + 0kO(this.wE.getPanel(0kO.NAME)).1Dm(true)), -1);
            };
        }

        public function get fpsMonitor():Boolean{
            return (this.10T.fpsMonitor);
        }

        public function set fpsMonitor(_arg1:Boolean):void{
            this.10T.fpsMonitor = _arg1;
        }

        public function get memoryMonitor():Boolean{
            return (this.10T.memoryMonitor);
        }

        public function set memoryMonitor(_arg1:Boolean):void{
            this.10T.memoryMonitor = _arg1;
        }

        public function 1XE(_arg1:Object, _arg2:String=null):String{
            return (this.rv.1XE(_arg1, _arg2));
        }

        public function 0EI(_arg1:String):void{
            this.rv.0EI(_arg1);
        }

        public function gc():void{
            this.rv.gc();
        }

        public function 0HC(_arg1:String, _arg2:Object, _arg3:Boolean=false):void{
            this.DE.0HC(_arg1, _arg2, _arg3);
        }

        public function map(_arg1:DisplayObjectContainer, _arg2:uint=0):void{
            this.26t.map(_arg1, _arg2, ss);
        }

        public function mapch(_arg1, _arg2:DisplayObjectContainer, _arg3:uint=0):void{
            this.26t.map(_arg2, _arg3, 0-U(_arg1));
        }

        public function inspect(_arg1:Object, _arg2:Boolean=true):void{
            this.lX.inspect(_arg1, _arg2, ss);
        }

        public function f-(_arg1, _arg2:Object, _arg3:Boolean=true):void{
            this.lX.inspect(_arg2, _arg3, 0-U(_arg1));
        }

        public function explode(_arg1:Object, _arg2:int=3):void{
            this.1ZF(new Array(this.26t.explode(_arg1, _arg2)), 1, null, false, true);
        }

        public function explodech(_arg1, _arg2:Object, _arg3:int=3):void{
            this.1ZF(new Array(this.26t.explode(_arg2, _arg3)), 1, _arg1, false, true);
        }

        public function get paused():Boolean{
            return (this.0dF);
        }

        public function set paused(_arg1:Boolean):void{
            if (this.0dF == _arg1)
            {
                return;
            };
            if (_arg1)
            {
                this.report("Paused", 10);
            } else
            {
                this.report("Resumed", -1);
            };
            this.0dF = _arg1;
            this.wE.mainPanel.mI(_arg1);
        }

        override public function get width():Number{
            return (this.wE.mainPanel.width);
        }

        override public function set width(_arg1:Number):void{
            this.wE.mainPanel.width = _arg1;
        }

        override public function set height(_arg1:Number):void{
            this.wE.mainPanel.height = _arg1;
        }

        override public function get height():Number{
            return (this.wE.mainPanel.height);
        }

        override public function get x():Number{
            return (this.wE.mainPanel.x);
        }

        override public function set x(_arg1:Number):void{
            this.wE.mainPanel.x = _arg1;
        }

        override public function set y(_arg1:Number):void{
            this.wE.mainPanel.y = _arg1;
        }

        override public function get y():Number{
            return (this.wE.mainPanel.y);
        }

        override public function set visible(_arg1:Boolean):void{
            super.visible = _arg1;
            if (_arg1)
            {
                this.wE.mainPanel.visible = true;
            };
        }

        private function JA(_arg1:Event):void{
            var _local4:Array;
            var _local2:int = getTimer();
            var _local3:Boolean = this.07S.update(_local2);
            this.lX.update(_local2);
            this.rv.update();
            if (this.remoter.remoting != xi.1pv)
            {
                _local4 = this.10T.update(((stage) ? stage.frameRate : 0));
            };
            this.1fH.update();
            if (((visible) && (parent)))
            {
                if (((((this.config.26s) && (!((parent.getChildAt((parent.numChildren - 1)) == this))))) && ((this.E0 > 0))))
                {
                    this.E0--;
                    parent.addChild(this);
                    this.report((("Moved console on top (alwaysOnTop enabled), " + this.E0) + " attempts left."), -1);
                };
                this.wE.update(this.0dF, _local3);
                if (_local4)
                {
                    this.wE.updateGraphs(_local4);
                };
            };
        }

        public function get remoting():Boolean{
            return ((this.1fH.remoting == xi.2-q));
        }

        public function set remoting(_arg1:Boolean):void{
            this.1fH.remoting = ((_arg1) ? xi.2-q : xi.NONE);
        }

        public function remotingSocket(_arg1:String, _arg2:int):void{
            this.1fH.remotingSocket(_arg1, _arg2);
        }

        public function setViewingChannels(... _args):void{
            this.wE.mainPanel.setViewingChannels.apply(this, _args);
        }

        public function 2-6(... _args):void{
            this.wE.mainPanel.2-6.apply(this, _args);
        }

        public function set w9(_arg1:uint):void{
            this.wE.mainPanel.priority = _arg1;
        }

        public function report(_arg1, _arg2:int=0, _arg3:Boolean=true, _arg4:String=null):void{
            if (!_arg4)
            {
                _arg4 = this.wE.mainPanel.reportChannel;
            };
            this.1ZF([_arg1], _arg2, _arg4, false, _arg3, 0);
        }

        public function 1ZF(_arg1:Array, _arg2:int=0, _arg3=null, _arg4:Boolean=false, _arg5:Boolean=false, _arg6:int=-1):void{
            var _local7 = "";
            var _local8:int = _arg1.length;
            var _local9:int;
            while (_local9 < _local8)
            {
                _local7 = (_local7 + (((_local9) ? " " : "") + this.lX.makeString(_arg1[_local9], null, _arg5)));
                _local9++;
            };
            if ((((_arg2 >= this._config.04h)) && ((_arg6 < 0))))
            {
                _arg6 = this._config.0i5;
            };
            if (((!(_arg5)) && ((_arg6 > 0))))
            {
                _local7 = (_local7 + this.26t.0d9(_arg6, _arg2));
            };
            this.07S.add(new Dq(_local7, 0-U(_arg3), _arg2, _arg4, _arg5));
        }

        public function set commandLine(_arg1:Boolean):void{
            this.wE.mainPanel.commandLine = _arg1;
        }

        public function get commandLine():Boolean{
            return (this.wE.mainPanel.commandLine);
        }

        public function 1Az(_arg1:String, _arg2:Function, _arg3:String="", _arg4:Boolean=true, _arg5:String=";"):void{
            this.DE.1Az(_arg1, _arg2, _arg3, _arg4, _arg5);
        }

        public function add(_arg1, _arg2:int=2, _arg3:Boolean=false):void{
            this.1ZF([_arg1], _arg2, ss, _arg3);
        }

        public function xU(_arg1, _arg2:int=-1, _arg3:int=5):void{
            this.1ZF([_arg1], _arg3, ss, false, false, (((_arg2 >= 0)) ? _arg2 : this._config.0i5));
        }

        public function Uu(_arg1, _arg2, _arg3:int=-1, _arg4:int=5):void{
            this.1ZF([_arg2], _arg4, _arg1, false, false, (((_arg3 >= 0)) ? _arg3 : this._config.0i5));
        }

        public function log(... _args):void{
            this.1ZF(_args, 9Z);
        }

        public function info(... _args):void{
            this.1ZF(_args, INFO);
        }

        public function debug(... _args):void{
            this.1ZF(_args, DEBUG);
        }

        public function 0K(... _args):void{
            this.1ZF(_args, WARN);
        }

        public function error(... _args):void{
            this.1ZF(_args, ERROR);
        }

        public function 0bx(... _args):void{
            this.1ZF(_args, FATAL);
        }

        public function ch(_arg1, _arg2, _arg3:int=2, _arg4:Boolean=false):void{
            this.1ZF([_arg2], _arg3, _arg1, _arg4);
        }

        public function 1jz(_arg1, ... _args):void{
            this.1ZF(_args, 9Z, _arg1);
        }

        public function 0EL(_arg1, ... _args):void{
            this.1ZF(_args, INFO, _arg1);
        }

        public function Fs(_arg1, ... _args):void{
            this.1ZF(_args, DEBUG, _arg1);
        }

        public function 1Ck(_arg1, ... _args):void{
            this.1ZF(_args, WARN, _arg1);
        }

        public function Y5(_arg1, ... _args):void{
            this.1ZF(_args, ERROR, _arg1);
        }

        public function dx(_arg1, ... _args):void{
            this.1ZF(_args, FATAL, _arg1);
        }

        public function m7(_arg1, _arg2:Array, _arg3:int=2, _arg4:Boolean=false):void{
            this.1ZF(_arg2, _arg3, _arg1, _arg4);
        }

        public function t-(... _args):void{
            this.1ZF(_args, 2, ss, false, this.eE(_args));
        }

        public function m2(_arg1, _arg2:int, ... _args):void{
            this.1ZF(_args, _arg2, _arg1, false, this.eE(_args));
        }

        private function eE(_arg1:Array):Boolean{
            var args:Array = _arg1;
            try
            {
                new XML((("<p>" + args.join("")) + "</p>"));
            } catch(err:Error)
            {
                return (false);
            };
            return (true);
        }

        public function clear(_arg1:String=null):void{
            this.07S.clear(_arg1);
            if (!this.0dF)
            {
                this.wE.mainPanel.FV();
            };
            this.wE.updateMenu();
        }

        public function 1xe(_arg1:String="\r\n"):String{
            return (this.07S.getLogsAsString(_arg1));
        }

        public function get config():12N{
            return (this._config);
        }

        public function get panels():p7{
            return (this.wE);
        }

        public function get cl():CommandLine{
            return (this.DE);
        }

        public function get remoter():xi{
            return (this.1fH);
        }

        public function get graphing():aP{
            return (this.10T);
        }

        public function get refs():1-T{
            return (this.lX);
        }

        public function get logs():0Ih{
            return (this.07S);
        }

        public function get 1Uy():Td{
            return (this.26t);
        }

        public function get so():Object{
            return (this.0Kd);
        }

        public function updateSO(_arg1:String=null):void{
            if (this.jY)
            {
                if (_arg1)
                {
                    this.jY.setDirty(_arg1);
                } else
                {
                    this.jY.clear();
                };
            };
        }


    }
}//package EM

