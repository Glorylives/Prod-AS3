// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2-g.0OT

package 2-g{
    import gh.1oT;
    import gh.0Nm;
    import flash.display.Shape;
    import flash.text.TextField;
    import flash.text.TextFormat;
    import EM.Console;
    import flash.display.Graphics;
    import flash.events.TextEvent;

    public class 0OT extends 1ZC {

        public static const 13x:String = "fpsPanel";
        public static const 1md:String = "memoryPanel";

        private var 0qK:1oT;
        private var 8d:0Nm;
        private var 02w:Object;
        private var 18u:String;
        private var F1:String;
        private var 0r2:Boolean;
        private var 08m:Shape;
        private var graph:Shape;
        private var ox:TextField;
        private var Q2:TextField;
        public var 0J5:int = 5;

        public function 0OT(_arg1:Console, _arg2:int, _arg3:int, _arg4:String=null){
            this.02w = new Object();
            super(_arg1);
            this.F1 = _arg4;
            Qf(bg);
            1St = 32;
            1Iq = 26;
            var _local5:TextFormat = new TextFormat();
            var _local6:Object = style.styleSheet.getStyle("low");
            _local5.font = _local6.fontFamily;
            _local5.size = _local6.fontSize;
            _local5.color = style.lowColor;
            this.ox = new TextField();
            this.ox.name = "lowestField";
            this.ox.defaultTextFormat = _local5;
            this.ox.mouseEnabled = false;
            this.ox.height = (style.menuFontSize + 2);
            addChild(this.ox);
            this.Q2 = new TextField();
            this.Q2.name = "highestField";
            this.Q2.defaultTextFormat = _local5;
            this.Q2.mouseEnabled = false;
            this.Q2.height = (style.menuFontSize + 2);
            this.Q2.y = (style.menuFontSize - 4);
            addChild(this.Q2);
            8h = 0AQ("menuField");
            8h.height = (style.menuFontSize + 4);
            8h.y = -3;
            25e(8h, this.onMenuRollOver, this.v5);
            Qf(8h);
            addChild(8h);
            this.08m = new Shape();
            addChild(this.08m);
            this.graph = new Shape();
            this.graph.name = "graph";
            this.graph.y = style.menuFontSize;
            addChild(this.graph);
            this.18u = "<menu>";
            if (this.F1 == 1md)
            {
                this.18u = (this.18u + ' <a href="event:gc">G</a> ');
            };
            this.18u = (this.18u + '<a href="event:reset">R</a> <a href="event:close">X</a></menu></low></r>');
            init(_arg2, _arg3, true);
        }

        private function stop():void{
            if (this.0qK)
            {
                console.graphing.remove(this.0qK.name);
            };
        }

        public function get group():1oT{
            return (this.0qK);
        }

        public function reset():void{
            this.02w = {};
            this.graph.graphics.clear();
            if (!this.0qK.fixed)
            {
                this.0qK.low = NaN;
                this.0qK.7p = NaN;
            };
        }

        override public function set height(_arg1:Number):void{
            super.height = _arg1;
            this.ox.y = (_arg1 - style.menuFontSize);
            this.0r2 = true;
            var _local2:Graphics = this.08m.graphics;
            _local2.clear();
            _local2.lineStyle(1, style.controlColor, 0.6);
            _local2.moveTo(0, this.graph.y);
            _local2.lineTo((width - this.0J5), this.graph.y);
            _local2.lineTo((width - this.0J5), _arg1);
        }

        override public function set width(_arg1:Number):void{
            super.width = _arg1;
            this.ox.width = _arg1;
            this.Q2.width = _arg1;
            8h.width = _arg1;
            8h.scrollH = 8h.maxScrollH;
            this.graph.graphics.clear();
            this.0r2 = true;
        }

        public function update(_arg1:1oT, _arg2:Boolean):void{
            var _local11:0Nm;
            var _local12:String;
            var _local13:String;
            var _local14:Array;
            var _local15:Array;
            var _local16:int;
            var _local17:int;
            var _local18:int;
            var _local19:int;
            var _local20:int;
            var _local21:Number;
            var _local22:Boolean;
            this.0qK = _arg1;
            var _local3:int = 1;
            if (_arg1.1VY > 0)
            {
                _local3 = 0;
                if (!this.0r2)
                {
                    return;
                };
            };
            if (this.0r2)
            {
                _arg2 = true;
            };
            this.0r2 = false;
            var _local4:Array = _arg1.interests;
            var _local5:int = (width - this.0J5);
            var _local6:int = (height - this.graph.y);
            var _local7:Number = _arg1.low;
            var _local8:Number = _arg1.7p;
            var _local9:Number = (_local8 - _local7);
            var _local10:Boolean;
            if (_arg2)
            {
                TextField(((_arg1.1JS) ? this.Q2 : this.ox)).text = String(_arg1.low);
                TextField(((_arg1.1JS) ? this.ox : this.Q2)).text = String(_arg1.7p);
                this.graph.graphics.clear();
            };
            for each (_local11 in _local4)
            {
                this.8d = _local11;
                _local13 = this.8d.key;
                _local14 = this.02w[_local13];
                if (_local14 == null)
                {
                    _local10 = true;
                    _local14 = new Array(this.8d.col.toString(16), new Array());
                    this.02w[_local13] = _local14;
                };
                _local15 = _local14[1];
                if (_local3 == 1)
                {
                    if (_arg1.type == 1oT.13x)
                    {
                        _local17 = Math.floor((_arg1.7p / this.8d.v));
                        if (_local17 > 30)
                        {
                            _local17 = 30;
                        };
                        while (_local17 > 0)
                        {
                            _local15.push(this.8d.v);
                            _local17--;
                        };
                    } else
                    {
                        _local15.push(this.8d.v);
                    };
                };
                _local16 = (Math.floor(_local5) + 10);
                while (_local15.length > _local16)
                {
                    _local15.shift();
                };
                if (_arg2)
                {
                    _local18 = _local15.length;
                    this.graph.graphics.lineStyle(1, this.8d.col);
                    _local19 = (((_local5 > _local18)) ? _local18 : _local5);
                    _local20 = 1;
                    while (_local20 < _local19)
                    {
                        _local21 = (((_local9) ? ((_local15[(_local18 - _local20)] - _local7) / _local9) : 0.5) * _local6);
                        if (!_arg1.1JS)
                        {
                            _local21 = (_local6 - _local21);
                        };
                        if (_local21 < 0)
                        {
                            _local21 = 0;
                        };
                        if (_local21 > _local6)
                        {
                            _local21 = _local6;
                        };
                        if (_local20 == 1)
                        {
                            this.graph.graphics.moveTo(width, _local21);
                        };
                        this.graph.graphics.lineTo((_local5 - _local20), _local21);
                        _local20++;
                    };
                    if (((isNaN(this.8d.avg)) && (_local9)))
                    {
                        _local21 = (((this.8d.avg - _local7) / _local9) * _local6);
                        if (!_arg1.1JS)
                        {
                            _local21 = (_local6 - _local21);
                        };
                        if (_local21 < 0)
                        {
                            _local21 = 0;
                        };
                        if (_local21 > _local6)
                        {
                            _local21 = _local6;
                        };
                        this.graph.graphics.lineStyle(1, this.8d.col, 0.3);
                        this.graph.graphics.moveTo(0, _local21);
                        this.graph.graphics.lineTo(_local5, _local21);
                    };
                };
            };
            for (_local12 in this.02w)
            {
                for each (_local11 in _local4)
                {
                    if (_local11.key == _local12)
                    {
                        _local22 = true;
                    };
                };
                if (!_local22)
                {
                    _local10 = true;
                    delete this.02w[_local12];
                };
            };
            if (((_arg2) && (((_local10) || (this.F1)))))
            {
                this.0Ew();
            };
        }

        public function 0Ew():void{
            var _local2:String;
            var _local1 = "<r><low>";
            if (this.F1)
            {
                if (isNaN(this.8d.v))
                {
                    _local1 = (_local1 + "no input");
                } else
                {
                    if (this.F1 == 13x)
                    {
                        _local1 = (_local1 + this.8d.avg.toFixed(1));
                    } else
                    {
                        _local1 = (_local1 + (this.8d.v + "mb"));
                    };
                };
            } else
            {
                for (_local2 in this.02w)
                {
                    _local1 = (_local1 + ((((" <font color='#" + this.02w[_local2][0]) + "'>") + _local2) + "</font>"));
                };
                _local1 = (_local1 + " |");
            };
            8h.htmlText = (_local1 + this.18u);
            8h.scrollH = 8h.maxScrollH;
        }

        protected function v5(_arg1:TextEvent):void{
            TextField(_arg1.currentTarget).setSelection(0, 0);
            if (_arg1.text == "reset")
            {
                this.reset();
            } else
            {
                if (_arg1.text == "close")
                {
                    if (this.F1 == 13x)
                    {
                        console.fpsMonitor = false;
                    } else
                    {
                        if (this.F1 == 1md)
                        {
                            console.memoryMonitor = false;
                        } else
                        {
                            this.stop();
                        };
                    };
                    console.panels.removeGraph(this.0qK);
                } else
                {
                    if (_arg1.text == "gc")
                    {
                        console.gc();
                    };
                };
            };
            _arg1.stopPropagation();
        }

        protected function onMenuRollOver(_arg1:TextEvent):void{
            var _local2:String = ((_arg1.text) ? _arg1.text.replace("event:", "") : null);
            if (_local2 == "gc")
            {
                _local2 = "Garbage collect::Requires debugger version of flash player";
            };
            console.panels.tooltip(_local2, this);
        }


    }
}//package 2-g

