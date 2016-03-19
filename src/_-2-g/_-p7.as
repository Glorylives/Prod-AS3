// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2-g.p7

package 2-g{
    import EM.Console;
    import flash.text.TextField;
    import flash.text.TextFieldAutoSize;
    import flash.geom.Rectangle;
    import gh.1oT;
    import flash.events.Event;

    public class p7 {

        private var console:Console;
        private var _mainPanel:1hl;
        private var 0fY:0yS;
        private var 1Rz:0vy;
        private var 0yK:0OT;
        private var 0dK:0OT;
        private var jS:Object;
        private var 1L4:uint = 0;
        private var Cg:TextField;
        private var 5g:Boolean;

        public function p7(_arg1:Console){
            this.jS = {}
            super();
            this.console = _arg1;
            this._mainPanel = new 1hl(this.console);
            this.Cg = this.mainPanel.0AQ("tooltip", true);
            this.Cg.mouseEnabled = false;
            this.Cg.autoSize = TextFieldAutoSize.CENTER;
            this.Cg.multiline = true;
            this.18c(this._mainPanel);
        }

        public function 18c(_arg1:1ZC):void{
            if (this.console.contains(this.Cg))
            {
                this.console.addChildAt(_arg1, this.console.getChildIndex(this.Cg));
            } else
            {
                this.console.addChild(_arg1);
            }
            _arg1.addEventListener(1ZC.1NP, this.1Va, false, 0, true);
            _arg1.addEventListener(1ZC.Yt, this.1Va, false, 0, true);
        }

        public function 0YC(_arg1:String):void{
            var _local2:1ZC = (this.console.getChildByName(_arg1) as 1ZC);
            if (_local2)
            {
                _local2.close();
            }
        }

        public function getPanel(_arg1:String):1ZC{
            return ((this.console.getChildByName(_arg1) as 1ZC));
        }

        public function get mainPanel():1hl{
            return (this._mainPanel);
        }

        public function 1lA(_arg1:String):Boolean{
            return ((((this.console.getChildByName(_arg1) as 1ZC)) ? true : false));
        }

        public function 0ty(_arg1:String, _arg2:Rectangle):void{
            var _local3:1ZC = this.getPanel(_arg1);
            if (_local3)
            {
                _local3.x = _arg2.x;
                _local3.y = _arg2.y;
                if (_arg2.width)
                {
                    _local3.width = _arg2.width;
                }
                if (_arg2.height)
                {
                    _local3.height = _arg2.height;
                }
            }
        }

        public function updateMenu():void{
            this._mainPanel.updateMenu();
            var _local1:0vy = (this.getPanel(0vy.NAME) as 0vy);
            if (_local1)
            {
                _local1.update();
            }
        }

        public function update(_arg1:Boolean, _arg2:Boolean):void{
            this.5g = !(_arg1);
            this._mainPanel.update(((!(_arg1)) && (_arg2)));
            if (!_arg1)
            {
                if (((_arg2) && (!((this.1Rz == null)))))
                {
                    this.1Rz.update();
                }
            }
        }

        public function updateGraphs(_arg1:Array):void{
            var _local2:Object;
            var _local3:1oT;
            var _local4:1oT;
            var _local5:1oT;
            var _local6:String;
            var _local7:String;
            var _local8:0OT;
            var _local9:Rectangle;
            var _local10:Number;
            var _local11:Number;
            var _local12:int;
            var _local13:int;
            this.1L4 = 0;
            for each (_local5 in _arg1)
            {
                if (_local5.type == 1oT.13x)
                {
                    _local3 = _local5;
                } else
                {
                    if (_local5.type == 1oT.1md)
                    {
                        _local4 = _local5;
                    } else
                    {
                        _local7 = _local5.name;
                        _local8 = (this.jS[_local7] as 0OT);
                        if (!_local8)
                        {
                            _local9 = _local5.rect;
                            if (_local9 == null)
                            {
                                _local9 = new Rectangle(NaN, NaN, 0, 0);
                            }
                            _local10 = 100;
                            if (((isNaN(_local9.x)) || (isNaN(_local9.y))))
                            {
                                if (this._mainPanel.width < 150)
                                {
                                    _local10 = 50;
                                }
                                _local11 = (Math.floor((this._mainPanel.width / _local10)) - 1);
                                if (_local11 <= 1)
                                {
                                    _local11 = 2;
                                }
                                _local12 = (this.1L4 % _local11);
                                _local13 = Math.floor((this.1L4 / _local11));
                                _local9.x = ((this._mainPanel.x + _local10) + (_local12 * _local10));
                                _local9.y = ((this._mainPanel.y + (_local10 * 0.6)) + (_local13 * _local10));
                                this.1L4++;
                            }
                            if ((((_local9.width <= 0)) || (isNaN(_local9.width))))
                            {
                                _local9.width = _local10;
                            }
                            if ((((_local9.height <= 0)) || (isNaN(_local9.height))))
                            {
                                _local9.height = _local10;
                            }
                            _local8 = new 0OT(this.console, _local9.width, _local9.height);
                            _local8.x = _local9.x;
                            _local8.y = _local9.y;
                            _local8.name = ("graph_" + _local7);
                            this.jS[_local7] = _local8;
                            this.18c(_local8);
                        }
                        if (_local2 == null)
                        {
                            _local2 = {}
                        }
                        _local2[_local7] = true;
                        _local8.update(_local5, this.5g);
                    }
                }
            }
            for (_local6 in this.jS)
            {
                if ((((_local2 == null)) || (!(_local2[_local6]))))
                {
                    this.jS[_local6].close();
                    delete this.jS[_local6];
                }
            }
            if (_local3 != null)
            {
                if (this.0yK == null)
                {
                    this.0yK = new 0OT(this.console, 80, 40, 0OT.13x);
                    this.0yK.name = 0OT.13x;
                    this.0yK.x = ((this._mainPanel.x + this._mainPanel.width) - 160);
                    this.0yK.y = (this._mainPanel.y + 15);
                    this.18c(this.0yK);
                    this._mainPanel.updateMenu();
                }
                this.0yK.update(_local3, this.5g);
            } else
            {
                if (this.0yK != null)
                {
                    this.0YC(0OT.13x);
                    this.0yK = null;
                }
            }
            if (_local4 != null)
            {
                if (this.0dK == null)
                {
                    this.0dK = new 0OT(this.console, 80, 40, 0OT.1md);
                    this.0dK.name = 0OT.1md;
                    this.0dK.x = ((this._mainPanel.x + this._mainPanel.width) - 80);
                    this.0dK.y = (this._mainPanel.y + 15);
                    this.18c(this.0dK);
                    this._mainPanel.updateMenu();
                }
                this.0dK.update(_local4, this.5g);
            } else
            {
                if (this.0dK != null)
                {
                    this.0YC(0OT.1md);
                    this.0dK = null;
                }
            }
            this.5g = false;
        }

        public function removeGraph(_arg1:1oT):void{
            var _local2:0OT;
            if (((this.0yK) && ((_arg1 == this.0yK.group))))
            {
                this.0yK.close();
                this.0yK = null;
            } else
            {
                if (((this.0dK) && ((_arg1 == this.0dK.group))))
                {
                    this.0dK.close();
                    this.0dK = null;
                } else
                {
                    _local2 = this.jS[_arg1.name];
                    if (_local2)
                    {
                        _local2.close();
                        delete this.jS[_arg1.name];
                    }
                }
            }
        }

        public function get displayRoller():Boolean{
            return ((((this.getPanel(0kO.NAME) as 0kO)) ? true : false));
        }

        public function set displayRoller(_arg1:Boolean):void{
            var _local2:0kO;
            if (this.displayRoller != _arg1)
            {
                if (_arg1)
                {
                    if (this.console.config.displayRollerEnabled)
                    {
                        _local2 = new 0kO(this.console);
                        _local2.x = ((this._mainPanel.x + this._mainPanel.width) - 180);
                        _local2.y = (this._mainPanel.y + 55);
                        this.18c(_local2);
                    } else
                    {
                        this.console.report("Display roller is disabled in config.", 9);
                    }
                } else
                {
                    this.0YC(0kO.NAME);
                }
                this._mainPanel.updateMenu();
            }
        }

        public function get channelsPanel():Boolean{
            return (!((this.1Rz == null)));
        }

        public function set channelsPanel(_arg1:Boolean):void{
            if (this.channelsPanel != _arg1)
            {
                this.console.logs.X3();
                if (_arg1)
                {
                    this.1Rz = new 0vy(this.console);
                    this.1Rz.x = ((this._mainPanel.x + this._mainPanel.width) - 332);
                    this.1Rz.y = (this._mainPanel.y - 2);
                    this.18c(this.1Rz);
                    this.1Rz.update();
                    this.updateMenu();
                } else
                {
                    this.0YC(0vy.NAME);
                    this.1Rz = null;
                }
                this.updateMenu();
            }
        }

        public function get memoryMonitor():Boolean{
            return (!((this.0dK == null)));
        }

        public function get fpsMonitor():Boolean{
            return (!((this.0yK == null)));
        }

        public function tooltip(_arg1:String=null, _arg2:1ZC=null):void{
            var _local3:Array;
            var _local4:Rectangle;
            var _local5:Rectangle;
            var _local6:Number;
            var _local7:Number;
            var _local8:Number;
            if (((_arg1) && (!(this.rulerActive))))
            {
                _local3 = _arg1.split("::");
                _arg1 = _local3[0];
                if (_local3.length > 1)
                {
                    _arg1 = (_arg1 + (("<br/><low>" + _local3[1]) + "</low>"));
                }
                this.console.addChild(this.Cg);
                this.Cg.wordWrap = false;
                this.Cg.htmlText = (("<tt>" + _arg1) + "</tt>");
                if (this.Cg.width > 120)
                {
                    this.Cg.width = 120;
                    this.Cg.wordWrap = true;
                }
                this.Cg.x = (this.console.mouseX - (this.Cg.width / 2));
                this.Cg.y = (this.console.mouseY + 20);
                if (_arg2)
                {
                    _local4 = this.Cg.getBounds(this.console);
                    _local5 = new Rectangle(_arg2.x, _arg2.y, _arg2.width, _arg2.height);
                    _local6 = (_local4.bottom - _local5.bottom);
                    if (_local6 > 0)
                    {
                        if ((this.Cg.y - _local6) > (this.console.mouseY + 15))
                        {
                            this.Cg.y = (this.Cg.y - _local6);
                        } else
                        {
                            if ((((_local5.y < (this.console.mouseY - 24))) && ((_local4.y > _local5.bottom))))
                            {
                                this.Cg.y = ((this.console.mouseY - this.Cg.height) - 15);
                            }
                        }
                    }
                    _local7 = (_local4.left - _local5.left);
                    _local8 = (_local4.right - _local5.right);
                    if (_local7 < 0)
                    {
                        this.Cg.x = (this.Cg.x - _local7);
                    } else
                    {
                        if (_local8 > 0)
                        {
                            this.Cg.x = (this.Cg.x - _local8);
                        }
                    }
                }
            } else
            {
                if (this.console.contains(this.Cg))
                {
                    this.console.removeChild(this.Cg);
                }
            }
        }

        public function startRuler():void{
            if (this.rulerActive)
            {
                return;
            }
            this.0fY = new 0yS(this.console);
            this.0fY.addEventListener(Event.COMPLETE, this.f2, false, 0, true);
            this.console.addChild(this.0fY);
            this._mainPanel.updateMenu();
        }

        public function get rulerActive():Boolean{
            return (((((this.0fY) && (this.console.contains(this.0fY)))) ? true : false));
        }

        private function f2(_arg1:Event):void{
            if (((this.0fY) && (this.console.contains(this.0fY))))
            {
                this.console.removeChild(this.0fY);
            }
            this.0fY = null;
            this._mainPanel.updateMenu();
        }

        private function 1Va(_arg1:Event):void{
            var _local3:Array;
            var _local4:Array;
            var _local5:int;
            var _local6:int;
            var _local7:1ZC;
            var _local2:1ZC = (_arg1.currentTarget as 1ZC);
            if (this.console.config.style.1gn)
            {
                _local3 = [0];
                _local4 = [0];
                if (this.console.stage)
                {
                    _local3.push(this.console.stage.stageWidth);
                    _local4.push(this.console.stage.stageHeight);
                }
                _local5 = this.console.numChildren;
                _local6 = 0;
                while (_local6 < _local5)
                {
                    _local7 = (this.console.getChildAt(_local6) as 1ZC);
                    if (((_local7) && (_local7.visible)))
                    {
                        _local3.push(_local7.x, (_local7.x + _local7.width));
                        _local4.push(_local7.y, (_local7.y + _local7.height));
                    }
                    _local6++;
                }
                _local2.0tN(_local3, _local4);
            }
        }


    }
}//package 2-g

