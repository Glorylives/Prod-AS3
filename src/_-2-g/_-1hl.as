// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2-g.1hl

package 2-g{
    import flash.text.TextField;
    import flash.display.Shape;
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.text.TextFieldAutoSize;
    import flash.geom.Rectangle;
    import flash.text.TextFormat;
    import flash.text.TextFieldType;
    import flash.events.KeyboardEvent;
    import flash.events.FocusEvent;
    import flash.events.MouseEvent;
    import flash.events.TextEvent;
    import EM.Console;
    import flash.ui.Keyboard;
    import flash.geom.ColorTransform;
    import gh.Dq;
    import 1Tb.1-T;
    import 1Tb.xi;
    import flash.net.FileReference;
    import flash.system.System;
    import flash.system.Security;
    import flash.system.SecurityPanel;

    public class 1hl extends 1ZC {

        public static const NAME:String = "mainPanel";
        private static const Ob:String = "clhistory";
        private static const 0dQ:String = "viewingChannels";
        private static const 1Jb:String = "ignoredChannels";
        private static const uC:String = "priority";

        private var 0qo:TextField;
        private var var :TextField;
        private var 10e:TextField;
        private var aD:TextField;
        private var 1Uj:Shape;
        private var 09W:Shape;
        private var sG:Boolean;
        private var 1B7:Boolean;
        private var 1-k:Boolean;
        private var eV:Boolean;
        private var 1JO:Sprite;
        private var Xi:Sprite;
        private var 9n:uint;
        private var s4:int;
        private var kc:Boolean;
        private var 0fc:Number;
        private var KK:int;
        private var 1ZM:int;
        private var oZ:Array;
        private var 21b:Array;
        private var 0sY:Object;
        private var 0v8:int = -1;
        private var Ke:uint;
        private var 0iS:String;
        private var NZ:RegExp;
        private var 1jT:String = "";
        private var 1j:Boolean;
        private var 59:Boolean;
        private var 01z:Boolean;
        private var 1kF:Boolean = true;
        private var AZ:Boolean;
        private var 0fH:String;
        private var 1YX:Array;

        public function 1hl(_arg1:Console){
            this.0sY = new Object();
            super(_arg1);
            var _local2:int = style.menuFontSize;
            console.cl.addCLCmd("filter", this.0ET, "Filter console logs to matching string. When done, click on the * (global channel) at top.", true);
            console.cl.addCLCmd("filterexp", this.1Y9, "Filter console logs to matching regular expression", true);
            console.cl.addCLCmd("clearhistory", this.0A1, "Clear history _of commands you have entered.", true);
            name = NAME;
            1St = 50;
            1Iq = 18;
            this.0qo = 0AQ("traceField");
            this.0qo.wordWrap = true;
            this.0qo.multiline = true;
            this.0qo.y = _local2;
            this.0qo.addEventListener(Event.SCROLL, this.0wA);
            addChild(this.0qo);
            8h = 0AQ("menuField");
            8h.wordWrap = true;
            8h.multiline = true;
            8h.autoSize = TextFieldAutoSize.RIGHT;
            8h.height = (_local2 + 6);
            8h.y = -2;
            25e(8h, this.onMenuRollOver);
            addChild(8h);
            this.1Uj = new Shape();
            this.1Uj.name = "commandBackground";
            this.1Uj.graphics.beginFill(style.commandLineColor, 0.1);
            this.1Uj.graphics.drawRoundRect(0, 0, 100, 18, _local2, _local2);
            this.1Uj.scale9Grid = new Rectangle(9, 9, 80, 1);
            addChild(this.1Uj);
            var _local3:TextFormat = new TextFormat(style.menuFont, style.menuFontSize, style.highColor);
            this.10e = new TextField();
            this.10e.name = "commandField";
            this.10e.type = TextFieldType.INPUT;
            this.10e.x = 40;
            this.10e.height = (_local2 + 6);
            this.10e.addEventListener(KeyboardEvent.KEY_DOWN, this.nU);
            this.10e.addEventListener(KeyboardEvent.KEY_UP, this.03i);
            this.10e.addEventListener(FocusEvent.FO_CUS_IN, this.1Hm);
            this.10e.addEventListener(FocusEvent.FO_CUS_OUT, this.1Ov);
            this.10e.defaultTextFormat = _local3;
            addChild(this.10e);
            this.aD = 0AQ("hintField", true);
            this.aD.mouseEnabled = false;
            this.aD.x = this.10e.x;
            this.aD.autoSize = TextFieldAutoSize.LEFT;
            addChild(this.aD);
            this.19o();
            _local3.color = style.commandLineColor;
            this.var  = new TextField();
            this.var .name = "commandPrefx";
            this.var .type = TextFieldType.DYNAMIC;
            this.var .x = 2;
            this.var .height = (_local2 + 6);
            this.var .selectable = false;
            this.var .defaultTextFormat = _local3;
            this.var .addEventListener(MouseEvent.MOUSE_DOWN, this.0a6);
            this.var .addEventListener(MouseEvent.MOUSE_MOVE, this.Yn);
            this.var .addEventListener(MouseEvent.ROLL_OUT, this.Yn);
            addChild(this.var );
            this.09W = new Shape();
            this.09W.name = "blinkLine";
            this.09W.alpha = 0.2;
            addChild(this.09W);
            this.1JO = new Sprite();
            this.1JO.name = "scroller";
            this.1JO.tabEnabled = false;
            this.1JO.y = (_local2 + 4);
            this.1JO.buttonMode = true;
            this.1JO.addEventListener(MouseEvent.MOUSE_DOWN, this.Uj, false, 0, true);
            this.Xi = new Sprite();
            this.Xi.name = "scrollbar";
            this.Xi.tabEnabled = false;
            this.Xi.y = style.controlSize;
            this.Xi.graphics.beginFill(style.controlColor, 1);
            this.Xi.graphics.drawRect(-(style.controlSize), 0, style.controlSize, 30);
            this.Xi.graphics.beginFill(0, 0);
            this.Xi.graphics.drawRect((-(style.controlSize) * 2), 0, (style.controlSize * 2), 30);
            this.Xi.graphics.endFill();
            this.Xi.addEventListener(MouseEvent.MOUSE_DOWN, this.0Is, false, 0, true);
            this.1JO.addChild(this.Xi);
            addChild(this.1JO);
            this.10e.visible = false;
            this.var .visible = false;
            this.1Uj.visible = false;
            this.0IM("");
            init(640, 100, true);
            Qf(8h);
            if ((console.so[Ob] is Array))
            {
                this.1YX = console.so[Ob];
            } else
            {
                console.so[Ob] = (this.1YX = new Array());
            };
            if (((config.rememberFilterSettings) && ((console.so[0dQ] is Array))))
            {
                this.oZ = console.so[0dQ];
            } else
            {
                console.so[0dQ] = (this.oZ = new Array());
            };
            if (((config.rememberFilterSettings) && ((console.so[1Jb] is Array))))
            {
                this.21b = console.so[1Jb];
            };
            if ((((this.oZ.length > 0)) || ((this.21b == null))))
            {
                console.so[1Jb] = (this.21b = new Array());
            };
            if (((config.rememberFilterSettings) && ((console.so[uC] is uint))))
            {
                this.Ke = console.so[uC];
            };
            addEventListener(MouseEvent.MOUSE_WHEEL, this.1Av, false, 0, true);
            addEventListener(TextEvent.LINK, this.v5, false, 0, true);
            addEventListener(Event.ADDED_TO_STAGE, this.0im, false, 0, true);
            addEventListener(Event.REMOVED_FROM_STAGE, this.yw, false, 0, true);
        }

        public function 4y(_arg1:String, _arg2:Function, _arg3:Array, _arg4:String):void{
            if (_arg1)
            {
                _arg1 = _arg1.replace(/[^\w]*/g, "");
                if (_arg2 == null)
                {
                    delete this.0sY[_arg1];
                } else
                {
                    this.0sY[_arg1] = new Array(_arg2, _arg3, _arg4);
                };
                this.1j = true;
            } else
            {
                console.report("ERROR: Invalid add menu params.", 9);
            };
        }

        private function 0im(_arg1:Event=null):void{
            stage.addEventListener(MouseEvent.MOUSE_DOWN, this.1eX, true, 0, true);
            stage.addEventListener(KeyboardEvent.KEY_UP, this.0TK, false, 0, true);
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1If, false, 0, true);
        }

        private function yw(_arg1:Event=null):void{
            stage.removeEventListener(MouseEvent.MOUSE_DOWN, this.1eX, true);
            stage.removeEventListener(KeyboardEvent.KEY_UP, this.0TK);
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1If);
        }

        private function 1eX(_arg1:MouseEvent):void{
            this.1B7 = _arg1.shiftKey;
            this.1-k = _arg1.ctrlKey;
            this.eV = _arg1.altKey;
        }

        private function 1Av(_arg1:MouseEvent):void{
            var _local2:int;
            if (this.1B7)
            {
                _local2 = (console.config.style.traceFontSize + (((_arg1.delta > 0)) ? 1 : -1));
                if ((((_local2 > 10)) && ((_local2 < 20))))
                {
                    console.config.style.traceFontSize = _local2;
                    console.config.style.updateStyleSheet();
                    this.FV();
                    _arg1.stopPropagation();
                };
            };
        }

        private function Yn(_arg1:MouseEvent):void{
            console.panels.tooltip((((_arg1.type == MouseEvent.MOUSE_MOVE)) ? "Current scope::(CommandLine)" : ""), this);
        }

        private function 0a6(_arg1:MouseEvent):void{
            try
            {
                stage.focus = this.10e;
                this.0m3();
            } catch(err:Error)
            {
            };
        }

        private function 1If(_arg1:KeyboardEvent):void{
            if (_arg1.keyCode == Keyboard.SHIFT)
            {
                this.1B7 = true;
            };
            if (_arg1.keyCode == Keyboard.CONTROL)
            {
                this.1-k = true;
            };
            if (_arg1.keyCode == 18)
            {
                this.eV = true;
            };
        }

        private function 0TK(_arg1:KeyboardEvent):void{
            if (_arg1.keyCode == Keyboard.SHIFT)
            {
                this.1B7 = false;
            } else
            {
                if (_arg1.keyCode == Keyboard.CONTROL)
                {
                    this.1-k = false;
                } else
                {
                    if (_arg1.keyCode == 18)
                    {
                        this.eV = false;
                    };
                };
            };
            if ((((((((((_arg1.keyCode == Keyboard.TAB)) || ((_arg1.keyCode == Keyboard.ENTER)))) && (parent.visible))) && (visible))) && (this.10e.visible)))
            {
                try
                {
                    stage.focus = this.10e;
                    this.0m3();
                } catch(err:Error)
                {
                };
            };
        }

        public function requestLogin(_arg1:Boolean=true):void{
            var _local2:ColorTransform = new ColorTransform();
            if (_arg1)
            {
                console.commandLine = true;
                console.report("//", -2);
                console.report("// <b>Enter remoting password</b> in CommandLine below...", -2);
                this.0IM("Password");
                _local2.color = style.controlColor;
                this.1Uj.transform.colorTransform = _local2;
                this.0qo.transform.colorTransform = new ColorTransform(0.7, 0.7, 0.7);
            } else
            {
                this.0IM("");
                this.1Uj.transform.colorTransform = _local2;
                this.0qo.transform.colorTransform = _local2;
            };
            this.10e.displayAsPassword = _arg1;
            this.AZ = _arg1;
        }

        public function update(_arg1:Boolean):void{
            if (this.09W.alpha > 0)
            {
                this.09W.alpha = (this.09W.alpha - 0.25);
            };
            if (style.showCommandLineScope)
            {
                if (this.1jT != console.cl.scopeString)
                {
                    this.1jT = console.cl.scopeString;
                    this.0IM(this.1jT);
                };
            } else
            {
                if (this.1jT != null)
                {
                    this.1jT = "";
                    this.0IM("");
                };
            };
            if (_arg1)
            {
                this.09W.alpha = 1;
                this.1j = true;
                this.59 = true;
            };
            if (this.59)
            {
                this.59 = false;
                this.t4(true);
            };
            if (this.1j)
            {
                this.1j = false;
                this.1P();
            };
        }

        public function FV():void{
            this.1kF = true;
            this.59 = true;
        }

        private function t4(_arg1:Boolean=false):void{
            if (this.1kF)
            {
                this.LH();
            } else
            {
                if (!_arg1)
                {
                    this.0D2();
                };
            };
            if (this.KK != this.1ZM)
            {
                if (this.1kF)
                {
                    this.0qo.setSelection((this.0qo.text.length - this.KK), (this.0qo.text.length - this.1ZM));
                } else
                {
                    this.0qo.setSelection((this.0qo.text.length - this.1ZM), (this.0qo.text.length - this.KK));
                };
                this.1ZM = -1;
                this.KK = -1;
            };
        }

        private function 0D2():void{
            var _local1 = "";
            var _local2:Dq = console.logs.first;
            var _local3 = !((this.oZ.length == 1));
            var _local4:Boolean = (((this.Ke == 0)) && ((this.oZ.length == 0)));
            while (_local2)
            {
                if (((_local4) || (this.KE(_local2))))
                {
                    _local1 = (_local1 + this.08O(_local2, _local3));
                };
                _local2 = _local2.next;
            };
            this.01z = true;
            this.0qo.htmlText = (("<logs>" + _local1) + "</logs>");
            this.01z = false;
            this.1T7();
        }

        public function mI(_arg1:Boolean):void{
            if (((_arg1) && (this.1kF)))
            {
                this.1kF = false;
                this.t4();
                this.0qo.scrollV = this.0qo.maxScrollV;
            } else
            {
                if (!_arg1)
                {
                    this.1kF = true;
                    this.LH();
                };
            };
            this.updateMenu();
        }

        private function LH():void{
            var _local6:int;
            var _local1 = "";
            var _local2:int = Math.round((this.0qo.height / style.traceFontSize));
            var _local3:int = Math.round(((this.0qo.width * 5) / style.traceFontSize));
            var _local4:Dq = console.logs.last;
            var _local5 = !((this.oZ.length == 1));
            while (_local4)
            {
                if (this.KE(_local4))
                {
                    _local6 = Math.ceil((_local4.text.length / _local3));
                    if (((_local4.html) || ((_local2 >= _local6))))
                    {
                        _local1 = (this.08O(_local4, _local5) + _local1);
                    } else
                    {
                        _local4 = _local4.clone();
                        _local4.text = _local4.text.substring(Math.max(0, (_local4.text.length - (_local3 * _local2))));
                        _local1 = (this.08O(_local4, _local5) + _local1);
                        break;
                    };
                    _local2 = (_local2 - _local6);
                    if (_local2 <= 0)
                    {
                        break;
                    };
                };
                _local4 = _local4.gR;
            };
            this.01z = true;
            this.0qo.htmlText = (("<logs>" + _local1) + "</logs>");
            this.0qo.scrollV = this.0qo.maxScrollV;
            this.01z = false;
            this.1T7();
        }

        private function KE(_arg1:Dq):Boolean{
            return ((((((this.Ke == 0)) || ((_arg1.priority >= this.Ke)))) && (((((this.1SI(_arg1.ch)) || (((((this.0iS) && ((this.oZ.indexOf(Console.Dk) >= 0)))) && ((_arg1.text.toLowerCase().indexOf(this.0iS) >= 0)))))) || (((((this.NZ) && ((this.oZ.indexOf(Console.Dk) >= 0)))) && ((_arg1.text.search(this.NZ) >= 0))))))));
        }

        private function 1SI(_arg1:String):Boolean{
            return ((((((this.oZ.length == 0)) || ((this.oZ.indexOf(_arg1) >= 0)))) && ((((this.21b.length == 0)) || ((this.21b.indexOf(_arg1) < 0))))));
        }

        public function get reportChannel():String{
            return ((((this.oZ.length == 1)) ? this.oZ[0] : Console.24a));
        }

        public function setViewingChannels(... _args):void{
            var _local3:Object;
            var _local4:String;
            var _local2:Array = new Array();
            for each (_local3 in _args)
            {
                _local2.push(Console.0-U(_local3));
            };
            if ((((this.oZ[0] == 1-T.1lI)) && (((!(_local2)) || (!((_local2[0] == this.oZ[0])))))))
            {
                console.refs.exitFocus();
            };
            this.21b.splice(0);
            this.oZ.splice(0);
            if ((((_local2.indexOf(Console.TI) < 0)) && ((_local2.indexOf(null) < 0))))
            {
                for each (_local4 in _local2)
                {
                    if (_local4)
                    {
                        this.oZ.push(_local4);
                    };
                };
            };
            this.FV();
            console.panels.updateMenu();
        }

        public function get viewingChannels():Array{
            return (this.oZ);
        }

        public function 2-6(... _args):void{
            var _local3:Object;
            var _local4:String;
            var _local2:Array = new Array();
            for each (_local3 in _args)
            {
                _local2.push(Console.0-U(_local3));
            };
            if (this.oZ[0] == 1-T.1lI)
            {
                console.refs.exitFocus();
            };
            this.21b.splice(0);
            this.oZ.splice(0);
            if ((((_local2.indexOf(Console.TI) < 0)) && ((_local2.indexOf(null) < 0))))
            {
                for each (_local4 in _local2)
                {
                    if (_local4)
                    {
                        this.21b.push(_local4);
                    };
                };
            };
            this.FV();
            console.panels.updateMenu();
        }

        public function get ignoredChannels():Array{
            return (this.21b);
        }

        private function 0ET(_arg1:String=""):void{
            if (_arg1)
            {
                this.NZ = null;
                this.0iS = 1-T.wA(_arg1.toLowerCase());
                this.0hk();
            } else
            {
                this.4H();
            };
        }

        private function 1Y9(_arg1:String=""):void{
            if (_arg1)
            {
                this.0iS = null;
                this.NZ = new RegExp(1-T.wA(_arg1), "gi");
                this.0hk();
            } else
            {
                this.4H();
            };
        }

        private function 0hk():void{
            console.clear(Console.Dk);
            console.logs.addChannel(Console.Dk);
            this.setViewingChannels(Console.Dk);
        }

        private function 4H():void{
            this.NZ = null;
            this.0iS = null;
            if ((((this.oZ.length == 1)) && ((this.oZ[0] == Console.Dk))))
            {
                this.setViewingChannels(Console.TI);
            };
        }

        private function 08O(_arg1:Dq, _arg2:Boolean):String{
            var _local3 = "<p>";
            if (_arg2)
            {
                _local3 = (_local3 + _arg1.04z);
            };
            if (config.showLineNumber)
            {
                _local3 = (_local3 + _arg1.8w);
            };
            if (config.showTimestamp)
            {
                _local3 = (_local3 + _arg1.1ET);
            };
            var _local4:String = ("p" + _arg1.priority);
            return ((((((((_local3 + "<") + _local4) + ">") + this.xD(_arg1.text)) + "</") + _local4) + "></p>"));
        }

        private function xD(_arg1:String):String{
            var _local2:Object;
            var _local3:int;
            var _local4:String;
            var _local5:String;
            var _local6:int;
            if (this.NZ)
            {
                this.NZ.lastIndex = 0;
                _local2 = this.NZ.exec(_arg1);
                while (_local2 != null)
                {
                    _local3 = _local2.index;
                    _local4 = _local2[0];
                    if (_local4.search("<|>") >= 0)
                    {
                        this.NZ.lastIndex = (this.NZ.lastIndex - (_local4.length - _local4.search("<|>")));
                    } else
                    {
                        if (_arg1.lastIndexOf("<", _local3) <= _arg1.lastIndexOf(">", _local3))
                        {
                            _arg1 = ((((_arg1.substring(0, _local3) + "<u>") + _arg1.substring(_local3, (_local3 + _local4.length))) + "</u>") + _arg1.substring((_local3 + _local4.length)));
                            this.NZ.lastIndex = (this.NZ.lastIndex + 7);
                        };
                    };
                    _local2 = this.NZ.exec(_arg1);
                };
            } else
            {
                if (this.0iS)
                {
                    _local5 = _arg1.toLowerCase();
                    _local6 = _local5.lastIndexOf(this.0iS);
                    while (_local6 >= 0)
                    {
                        _arg1 = ((((_arg1.substring(0, _local6) + "<u>") + _arg1.substring(_local6, (_local6 + this.0iS.length))) + "</u>") + _arg1.substring((_local6 + this.0iS.length)));
                        _local6 = _local5.lastIndexOf(this.0iS, (_local6 - 2));
                    };
                };
            };
            return (_arg1);
        }

        private function 0wA(_arg1:Event=null):void{
            var _local3:int;
            if (((this.01z) || (this.1B7)))
            {
                return;
            };
            var _local2 = (this.0qo.scrollV >= this.0qo.maxScrollV);
            if (((!(console.paused)) && (!((this.1kF == _local2)))))
            {
                _local3 = (this.0qo.maxScrollV - this.0qo.scrollV);
                this.KK = (this.0qo.text.length - this.0qo.selectionBeginIndex);
                this.1ZM = (this.0qo.text.length - this.0qo.selectionEndIndex);
                this.1kF = _local2;
                this.t4();
                this.0qo.scrollV = (this.0qo.maxScrollV - _local3);
            };
            this.1T7();
        }

        private function 1T7():void{
            if (this.0qo.maxScrollV <= 1)
            {
                this.1JO.visible = false;
            } else
            {
                this.1JO.visible = true;
                if (this.1kF)
                {
                    this.1y5 = 1;
                } else
                {
                    this.1y5 = ((this.0qo.scrollV - 1) / (this.0qo.maxScrollV - 1));
                };
            };
        }

        private function Uj(_arg1:MouseEvent):void{
            if (((((this.Xi.visible) && ((this.Xi.mouseY > 0)))) || (((!(this.Xi.visible)) && ((this.1JO.mouseY > (this.0fc / 2)))))))
            {
                this.s4 = 3;
            } else
            {
                this.s4 = -3;
            };
            this.0qo.scrollV = (this.0qo.scrollV + this.s4);
            this.9n = 0;
            addEventListener(Event.ENTER_FRAME, this.5b, false, 0, true);
            stage.addEventListener(MouseEvent.MOUSE_UP, this.09, false, 0, true);
        }

        private function 5b(_arg1:Event):void{
            this.9n++;
            if (this.9n > 10)
            {
                this.9n = 9;
                if ((((((this.s4 < 0)) && ((this.Xi.y > this.1JO.mouseY)))) || ((((this.s4 > 0)) && (((this.Xi.y + this.Xi.height) < this.1JO.mouseY))))))
                {
                    this.0qo.scrollV = (this.0qo.scrollV + this.s4);
                };
            };
        }

        private function 09(_arg1:Event):void{
            removeEventListener(Event.ENTER_FRAME, this.5b);
            stage.removeEventListener(MouseEvent.MOUSE_UP, this.09);
        }

        private function get 1y5():Number{
            return (((this.Xi.y - style.controlSize) / ((this.0fc - 30) - (style.controlSize * 2))));
        }

        private function set 1y5(_arg1:Number):void{
            this.Xi.y = (style.controlSize + (((this.0fc - 30) - (style.controlSize * 2)) * _arg1));
        }

        private function 0Is(_arg1:MouseEvent):void{
            var _local2:Number;
            this.kc = true;
            if (((!(console.paused)) && (this.1kF)))
            {
                this.1kF = false;
                _local2 = this.1y5;
                this.t4();
                this.1y5 = _local2;
            };
            this.Xi.startDrag(false, new Rectangle(0, style.controlSize, 0, ((this.0fc - 30) - (style.controlSize * 2))));
            stage.addEventListener(MouseEvent.MOUSE_MOVE, this.9k, false, 0, true);
            stage.addEventListener(MouseEvent.MOUSE_UP, this.13U, false, 0, true);
            _arg1.stopPropagation();
        }

        private function 9k(_arg1:MouseEvent):void{
            this.01z = true;
            this.0qo.scrollV = Math.round(((this.1y5 * (this.0qo.maxScrollV - 1)) + 1));
            this.01z = false;
        }

        private function 13U(_arg1:MouseEvent):void{
            this.Xi.stopDrag();
            stage.removeEventListener(MouseEvent.MOUSE_MOVE, this.9k);
            stage.removeEventListener(MouseEvent.MOUSE_UP, this.13U);
            this.kc = false;
            this.0wA();
        }

        override public function set width(_arg1:Number):void{
            this.01z = true;
            super.width = _arg1;
            this.0qo.width = (_arg1 - 4);
            8h.width = (_arg1 - 6);
            this.10e.width = ((width - 15) - this.10e.x);
            this.1Uj.width = _arg1;
            this.09W.graphics.clear();
            this.09W.graphics.lineStyle(1, style.controlColor);
            this.09W.graphics.moveTo(10, -1);
            this.09W.graphics.lineTo((_arg1 - 10), -1);
            this.1JO.x = _arg1;
            this.1kF = true;
            this.1Es();
            this.1j = true;
            this.59 = true;
            this.01z = false;
        }

        override public function set height(_arg1:Number):void{
            this.01z = true;
            var _local2:int = style.menuFontSize;
            var _local3:Number = ((_local2 + 6) + style.traceFontSize);
            if (height != _arg1)
            {
                this.sG = (_arg1 < ((this.10e.visible) ? ((_local3 + _local2) + 4) : _local3));
            };
            super.height = _arg1;
            var _local4:Boolean = ((this.sG) || (!(style.topMenu)));
            this.0cr();
            this.0qo.y = ((_local4) ? 0 : _local2);
            this.0qo.height = ((_arg1 - ((this.10e.visible) ? (_local2 + 4) : 0)) - ((_local4) ? 0 : _local2));
            var _local5:Number = (_arg1 - (_local2 + 6));
            this.10e.y = _local5;
            this.var .y = _local5;
            this.aD.y = (this.10e.y - this.aD.height);
            this.1Uj.y = _local5;
            this.09W.y = ((this.10e.visible) ? _local5 : _arg1);
            this.1JO.y = ((_local4) ? 6 : (_local2 + 4));
            var _local6:uint = style.controlSize;
            this.0fc = ((this.09W.y - ((this.10e.visible) ? 0 : (_local6 * 2))) - this.1JO.y);
            this.Xi.visible = (this.0fc > 40);
            this.1JO.graphics.clear();
            if (this.0fc >= 10)
            {
                this.1JO.graphics.beginFill(style.controlColor, 0.7);
                this.1JO.graphics.drawRect(-(_local6), 0, _local6, _local6);
                this.1JO.graphics.drawRect(-(_local6), (this.0fc - _local6), _local6, _local6);
                this.1JO.graphics.beginFill(style.controlColor, 0.25);
                this.1JO.graphics.drawRect(-(_local6), _local6, _local6, (this.0fc - (_local6 * 2)));
                this.1JO.graphics.beginFill(0, 0);
                this.1JO.graphics.drawRect((-(_local6) * 2), (_local6 * 2), (_local6 * 2), (this.0fc - (_local6 * 2)));
                this.1JO.graphics.endFill();
            };
            this.1kF = true;
            this.59 = true;
            this.01z = false;
        }

        private function 0cr():void{
            var _local1:Boolean = ((this.sG) || (!(style.topMenu)));
            this.0qo.y = ((_local1) ? 0 : ((8h.y + 8h.height) - 6));
            this.0qo.height = Math.max(0, ((height - ((this.10e.visible) ? (style.menuFontSize + 4) : 0)) - this.0qo.y));
        }

        public function updateMenu(_arg1:Boolean=false):void{
            if (_arg1)
            {
                this.1P();
            } else
            {
                this.1j = true;
            };
        }

        private function 1P():void{
            var _local2:Boolean;
            var _local3:String;
            var _local1 = "<r><high>";
            if (((this.sG) || (!(style.topMenu))))
            {
                _local1 = (_local1 + '<menu><b> <a href="event:show">‹</a>');
            } else
            {
                if (!console.panels.channelsPanel)
                {
                    _local1 = (_local1 + this.getChannelsLink(true));
                };
                _local1 = (_local1 + "<menu> <b>");
                for (_local3 in this.0sY)
                {
                    _local1 = (_local1 + (((('<a href="event:external_' + _local3) + '">') + _local3) + "</a> "));
                    _local2 = true;
                };
                if (_local2)
                {
                    _local1 = (_local1 + "¦ ");
                };
                _local1 = (_local1 + this.1U('<a href="event:fps">F</a>', (console.fpsMonitor > 0)));
                _local1 = (_local1 + this.1U(' <a href="event:mm">M</a>', (console.memoryMonitor > 0)));
                _local1 = (_local1 + this.1U(' <a href="event:command">CL</a>', this.commandLine));
                if (console.remoter.remoting != xi.1pv)
                {
                    if (config.displayRollerEnabled)
                    {
                        _local1 = (_local1 + this.1U(' <a href="event:roller">Ro</a>', console.displayRoller));
                    };
                    if (config.rulerToolEnabled)
                    {
                        _local1 = (_local1 + this.1U(' <a href="event:ruler">RL</a>', console.panels.rulerActive));
                    };
                };
                _local1 = (_local1 + " ¦</b>");
                _local1 = (_local1 + ' <a href="event:copy">Sv</a>');
                _local1 = (_local1 + ((' <a href="event:priority">P' + this.Ke) + "</a>"));
                _local1 = (_local1 + this.1U(' <a href="event:pause">P</a>', console.paused));
                _local1 = (_local1 + ' <a href="event:clear">C</a> <a href="event:close">X</a> <a href="event:hide">›</a>');
            };
            _local1 = (_local1 + " </b></menu></high></r>");
            8h.htmlText = _local1;
            8h.scrollH = 8h.maxScrollH;
            this.0cr();
        }

        public function getChannelsLink(_arg1:Boolean=false):String{
            var _local7:String;
            var _local8:String;
            var _local2 = "<chs>";
            var _local3:Array = console.logs.getChannels();
            var _local4:int = _local3.length;
            if (((_arg1) && ((_local4 > style.maxChannelsInMenu))))
            {
                _local4 = style.maxChannelsInMenu;
            };
            var _local5:Boolean = (((this.oZ.length > 0)) || ((this.21b.length > 0)));
            var _local6:int;
            while (_local6 < _local4)
            {
                _local7 = _local3[_local6];
                _local8 = ((((((!(_local5)) && ((_local6 == 0)))) || (((((_local5) && (!((_local6 == 0))))) && (this.1SI(_local7)))))) ? (("<ch><b>" + _local7) + "</b></ch>") : _local7);
                _local2 = (_local2 + (((('<a href="event:channel_' + _local7) + '">[') + _local8) + "]</a> "));
                _local6++;
            };
            if (_arg1)
            {
                _local2 = (_local2 + (('<ch><a href="event:channels"><b>' + (((_local3.length > _local4)) ? "..." : "")) + "</b>^^ </a></ch>"));
            };
            _local2 = (_local2 + "</chs> ");
            return (_local2);
        }

        private function 1U(_arg1:String, _arg2:Boolean):String{
            if (_arg2)
            {
                return ((("<menuHi>" + _arg1) + "</menuHi>"));
            };
            return (_arg1);
        }

        public function onMenuRollOver(_arg1:TextEvent, _arg2:1ZC=null):void{
            var _local4:Array;
            var _local5:Object;
            if (_arg2 == null)
            {
                _arg2 = this;
            };
            var _local3:String = ((_arg1.text) ? _arg1.text.replace("event:", "") : "");
            if (_local3 == ("channel_" + Console.TI))
            {
                _local3 = "View all channels";
            } else
            {
                if (_local3 == ("channel_" + Console.ss))
                {
                    _local3 = "Default channel::Logs with no channel";
                } else
                {
                    if (_local3 == ("channel_" + Console.24a))
                    {
                        _local3 = "Console's channel::Logs generated from Console";
                    } else
                    {
                        if (_local3 == ("channel_" + Console.Dk))
                        {
                            _local3 = ((this.NZ) ? String(this.NZ) : this.0iS);
                            _local3 = ((("Filtering channel" + "::*") + _local3) + "*");
                        } else
                        {
                            if (_local3 == ("channel_" + 1-T.1lI))
                            {
                                _local3 = "Inspecting channel";
                            } else
                            {
                                if (_local3.indexOf("channel_") == 0)
                                {
                                    _local3 = "Change channel::shift: select multiple\nctrl: ignore channel";
                                } else
                                {
                                    if (_local3 == "pause")
                                    {
                                        if (console.paused)
                                        {
                                            _local3 = "Resume updates";
                                        } else
                                        {
                                            _local3 = "Pause updates";
                                        };
                                    } else
                                    {
                                        if ((((_local3 == "close")) && ((_arg2 == this))))
                                        {
                                            _local3 = "Close::Type password to show again";
                                        } else
                                        {
                                            if (_local3.indexOf("external_") == 0)
                                            {
                                                _local4 = this.0sY[_local3.substring(9)];
                                                if (_local4)
                                                {
                                                    _local3 = _local4[2];
                                                };
                                            } else
                                            {
                                                _local5 = {
                                                    fps:"Frames Per Second",
                                                    mm:"Memory Monitor",
                                                    roller:"Display Roller::Map the display list under your mouse",
                                                    ruler:"Screen Ruler::Measure the distance and angle between two points on screen.",
                                                    command:"Command Line",
                                                    copy:"Save to clipboard::shift: no channel name\nctrl: use viewing filters\nalt: save to file",
                                                    clear:"Clear log",
                                                    priority:"Priority filter::shift: previous priority\n(skips unused priorites)",
                                                    channels:"Expand channels",
                                                    close:"Close"
                                                };
                                                _local3 = _local5[_local3];
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
            };
            console.panels.tooltip(_local3, _arg2);
        }

        private function v5(_arg1:TextEvent):void{
            var str:String;
            var file:FileReference;
            var ind:int;
            var menu:Array;
            var e:TextEvent = _arg1;
            8h.setSelection(0, 0);
            stopDrag();
            var t:String = e.text;
            if (t == "pause")
            {
                if (console.paused)
                {
                    console.paused = false;
                } else
                {
                    console.paused = true;
                };
                console.panels.tooltip(null);
            } else
            {
                if (t == "hide")
                {
                    console.panels.tooltip();
                    this.sG = true;
                    console.config.style.topMenu = false;
                    this.height = height;
                    this.updateMenu();
                } else
                {
                    if (t == "show")
                    {
                        console.panels.tooltip();
                        this.sG = false;
                        console.config.style.topMenu = true;
                        this.height = height;
                        this.updateMenu();
                    } else
                    {
                        if (t == "close")
                        {
                            console.panels.tooltip();
                            visible = false;
                            dispatchEvent(new Event(Event.CLOSE));
                        } else
                        {
                            if (t == "channels")
                            {
                                console.panels.channelsPanel = !(console.panels.channelsPanel);
                            } else
                            {
                                if (t == "fps")
                                {
                                    console.fpsMonitor = !(console.fpsMonitor);
                                } else
                                {
                                    if (t == "priority")
                                    {
                                        this.d6(this.1B7);
                                    } else
                                    {
                                        if (t == "mm")
                                        {
                                            console.memoryMonitor = !(console.memoryMonitor);
                                        } else
                                        {
                                            if (t == "roller")
                                            {
                                                console.displayRoller = !(console.displayRoller);
                                            } else
                                            {
                                                if (t == "ruler")
                                                {
                                                    console.panels.tooltip();
                                                    console.panels.startRuler();
                                                } else
                                                {
                                                    if (t == "command")
                                                    {
                                                        this.commandLine = !(this.commandLine);
                                                    } else
                                                    {
                                                        if (t == "copy")
                                                        {
                                                            str = console.logs.getLogsAsString("\r\n", !(this.1B7), ((this.1-k) ? this.KE : null));
                                                            if (this.eV)
                                                            {
                                                                file = new FileReference();
                                                                try
                                                                {
                                                                    var _local3 = file;
                                                                    (_local3["save"](str, "log.txt"));
                                                                } catch(err:Error)
                                                                {
                                                                    console.report("Save to file is not supported in your flash player.", 8);
                                                                };
                                                            } else
                                                            {
                                                                System.setClipboard(str);
                                                                console.report("Copied log to clipboard.", -1);
                                                            };
                                                        } else
                                                        {
                                                            if (t == "clear")
                                                            {
                                                                console.clear();
                                                            } else
                                                            {
                                                                if (t == "settings")
                                                                {
                                                                    console.report("A new window should open in browser. If not, try searching for 'Flash Player Global Security Settings panel' online :)", -1);
                                                                    Security.showSettings(SecurityPanel.SETTINGS_MANAGER);
                                                                } else
                                                                {
                                                                    if (t == "remote")
                                                                    {
                                                                        console.remoter.remoting = xi.1pv;
                                                                    } else
                                                                    {
                                                                        if (t.indexOf("ref") == 0)
                                                                        {
                                                                            console.refs.handleRefEvent(t);
                                                                        } else
                                                                        {
                                                                            if (t.indexOf("channel_") == 0)
                                                                            {
                                                                                this.onChannelPressed(t.substring(8));
                                                                            } else
                                                                            {
                                                                                if (t.indexOf("cl_") == 0)
                                                                                {
                                                                                    ind = t.indexOf("_1yq", 3);
                                                                                    console.cl.handleScopeEvent(uint(t.substring(3, (((ind < 0)) ? t.length : ind))));
                                                                                    if (ind >= 0)
                                                                                    {
                                                                                        this.10e.text = t.substring((ind + 1));
                                                                                    };
                                                                                } else
                                                                                {
                                                                                    if (t.indexOf("external_") == 0)
                                                                                    {
                                                                                        menu = this.0sY[t.substring(9)];
                                                                                        if (menu)
                                                                                        {
                                                                                            menu[0].apply(null, menu[1]);
                                                                                        };
                                                                                    };
                                                                                };
                                                                            };
                                                                        };
                                                                    };
                                                                };
                                                            };
                                                        };
                                                    };
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
            };
            8h.setSelection(0, 0);
            e.stopPropagation();
        }

        public function onChannelPressed(_arg1:String):void{
            var _local2:Array;
            if (((this.1-k) && (!((_arg1 == Console.TI)))))
            {
                _local2 = this.1av(this.21b, _arg1);
                this.2-6.apply(this, _local2);
            } else
            {
                if (((((this.1B7) && (!((_arg1 == Console.TI))))) && (!((this.oZ[0] == 1-T.1lI)))))
                {
                    _local2 = this.1av(this.oZ, _arg1);
                    this.setViewingChannels.apply(this, _local2);
                } else
                {
                    console.setViewingChannels(_arg1);
                };
            };
        }

        private function 1av(_arg1:Array, _arg2:String):Array{
            _arg1 = _arg1.concat();
            var _local3:int = _arg1.indexOf(_arg2);
            if (_local3 >= 0)
            {
                _arg1.splice(_local3, 1);
                if (_arg1.length == 0)
                {
                    _arg1.push(Console.TI);
                };
            } else
            {
                _arg1.push(_arg2);
            };
            return (_arg1);
        }

        public function set priority(_arg1:uint):void{
            this.Ke = _arg1;
            console.so[uC] = this.Ke;
            this.FV();
            this.updateMenu();
        }

        public function get priority():uint{
            return (this.Ke);
        }

        private function d6(_arg1:Boolean):void{
            var _local3:uint;
            var _local2:uint = 10;
            var _local4:Dq = console.logs.last;
            var _local5:int = this.Ke;
            this.Ke = 0;
            var _local6:uint = 0x7D00;
            while (((_local4) && ((_local6 > 0))))
            {
                _local6--;
                if (this.KE(_local4))
                {
                    if ((((_local4.priority > _local5)) && ((_local2 > _local4.priority))))
                    {
                        _local2 = _local4.priority;
                    };
                    if ((((_local4.priority < _local5)) && ((_local3 < _local4.priority))))
                    {
                        _local3 = _local4.priority;
                    };
                };
                _local4 = _local4.gR;
            };
            if (_arg1)
            {
                if (_local3 == _local5)
                {
                    _local5 = 10;
                } else
                {
                    _local5 = _local3;
                };
            } else
            {
                if (_local2 == _local5)
                {
                    _local5 = 0;
                } else
                {
                    _local5 = _local2;
                };
            };
            this.priority = _local5;
        }

        private function 0A1(... _args):void{
            this.0v8 = -1;
            console.updateSO();
            this.1YX = new Array();
        }

        private function nU(_arg1:KeyboardEvent):void{
            if (_arg1.keyCode == Keyboard.TAB)
            {
                if (this.0fH)
                {
                    this.10e.text = this.0fH;
                    this.0m3();
                    this.19o();
                };
            };
        }

        private function 03i(_arg1:KeyboardEvent):void{
            var _local2:String;
            var _local3:int;
            if (_arg1.keyCode == Keyboard.ENTER)
            {
                this.FV();
                this.19o();
                if (this.AZ)
                {
                    console.remoter.login(this.10e.text);
                    this.10e.text = "";
                    this.requestLogin(false);
                } else
                {
                    _local2 = this.10e.text;
                    if (_local2.length > 2)
                    {
                        _local3 = this.1YX.indexOf(_local2);
                        while (_local3 >= 0)
                        {
                            this.1YX.splice(_local3, 1);
                            _local3 = this.1YX.indexOf(_local2);
                        };
                        this.1YX.unshift(_local2);
                        this.0v8 = -1;
                        if (this.1YX.length > 20)
                        {
                            this.1YX.splice(20);
                        };
                        console.updateSO(Ob);
                    };
                    this.10e.text = "";
                    if (config.commandLineInputPassThrough != null)
                    {
                        _local2 = config.commandLineInputPassThrough(_local2);
                    };
                    if (_local2)
                    {
                        console.cl.run(_local2);
                    };
                };
            } else
            {
                if (_arg1.keyCode == Keyboard.ESCAPE)
                {
                    if (stage)
                    {
                        stage.focus = null;
                    };
                } else
                {
                    if (_arg1.keyCode == Keyboard.UP)
                    {
                        this.19o();
                        if (((this.10e.text) && ((this.0v8 < 0))))
                        {
                            this.1YX.unshift(this.10e.text);
                            this.0v8++;
                        };
                        if (this.0v8 < (this.1YX.length - 1))
                        {
                            this.0v8++;
                            this.10e.text = this.1YX[this.0v8];
                            this.0m3();
                        } else
                        {
                            this.0v8 = this.1YX.length;
                            this.10e.text = "";
                        };
                    } else
                    {
                        if (_arg1.keyCode == Keyboard.DOWN)
                        {
                            this.19o();
                            if (this.0v8 > 0)
                            {
                                this.0v8--;
                                this.10e.text = this.1YX[this.0v8];
                                this.0m3();
                            } else
                            {
                                this.0v8 = -1;
                                this.10e.text = "";
                            };
                        } else
                        {
                            if (_arg1.keyCode == Keyboard.TAB)
                            {
                                this.0m3();
                            } else
                            {
                                if (!this.AZ)
                                {
                                    this.1Hm();
                                };
                            };
                        };
                    };
                };
            };
        }

        private function 0m3():void{
            this.10e.setSelection(this.10e.text.length, this.10e.text.length);
        }

        private function 1Hm(_arg1:Event=null):void{
            var _local2:String = this.10e.text;
            if (((((_local2) && (config.commandLineAutoCompleteEnabled))) && (!((console.remoter.remoting == xi.1pv)))))
            {
                try
                {
                    this.19o(console.cl.getHintsFor(_local2, 5));
                    return;
                } catch(err:Error)
                {
                };
            };
            this.19o();
        }

        private function 1Ov(_arg1:Event):void{
            this.19o();
        }

        private function 19o(_arg1:Array=null):void{
            var _local2:Array;
            var _local3:Array;
            var _local4:Rectangle;
            var _local5:String;
            var _local6:Boolean;
            var _local7:int;
            if (((_arg1) && (_arg1.length)))
            {
                this.0fH = _arg1[0][0];
                if (_arg1.length > 1)
                {
                    _local5 = _arg1[1][0];
                    _local6 = false;
                    _local7 = 0;
                    while (_local7 < _local5.length)
                    {
                        if (_local5.charAt(_local7) == this.0fH.charAt(_local7))
                        {
                            _local6 = true;
                        } else
                        {
                            if (((_local6) && ((this.10e.text.length < _local7))))
                            {
                                this.0fH = this.0fH.substring(0, _local7);
                            };
                            break;
                        };
                        _local7++;
                    };
                };
                _local2 = new Array();
                for each (_local3 in _arg1)
                {
                    _local2.push((((("<p3>" + _local3[0]) + "</p3> <p0>") + ((_local3[1]) ? _local3[1] : "")) + "</p0>"));
                };
                this.aD.htmlText = (("<p>" + _local2.reverse().join("\n")) + "</p>");
                this.aD.visible = true;
                _local4 = this.10e.getCharBoundaries((this.10e.text.length - 1));
                if (!_local4)
                {
                    _local4 = new Rectangle();
                };
                this.aD.x = (((this.10e.x + _local4.x) + _local4.width) + 30);
                this.aD.y = (height - this.aD.height);
            } else
            {
                this.aD.visible = false;
                this.0fH = null;
            };
        }

        public function 0IM(_arg1:String):void{
            if (this.AZ)
            {
                this.AZ = false;
                this.requestLogin(false);
            };
            this.var .autoSize = TextFieldAutoSize.LEFT;
            this.var .text = _arg1;
            this.1Es();
        }

        private function 1Es():void{
            var _local1:Number = (width - 48);
            if ((((this.var .width > 120)) || ((this.var .width > _local1))))
            {
                this.var .autoSize = TextFieldAutoSize.NONE;
                this.var .width = (((_local1 > 120)) ? 120 : _local1);
                this.var .scrollH = this.var .maxScrollH;
            };
            this.10e.x = (this.var .width + 2);
            this.10e.width = ((width - 15) - this.10e.x);
            this.aD.x = this.10e.x;
        }

        public function set commandLine(_arg1:Boolean):void{
            if (_arg1)
            {
                this.10e.visible = true;
                this.var .visible = true;
                this.1Uj.visible = true;
            } else
            {
                this.10e.visible = false;
                this.var .visible = false;
                this.1Uj.visible = false;
            };
            this.1j = true;
            this.height = height;
        }

        public function get commandLine():Boolean{
            return (this.10e.visible);
        }


    }
}//package 2-g

