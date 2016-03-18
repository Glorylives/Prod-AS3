// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Tb.aP

package 1Tb{
    import gh.1oT;
    import EM.Console;
    import flash.utils.ByteArray;
    import gh.0Nm;
    import flash.geom.Rectangle;
    import flash.utils.getTimer;
    import flash.system.System;

    public class aP extends ak {

        private var Kg:Array;
        private var WT:Object;
        private var 0Z3:1oT;
        private var E5:1oT;
        private var 0TW:Boolean;
        private var 1z:Number = -1;

        public function aP(_arg1:Console){
            var m:Console = _arg1;
            this.Kg = [];
            this.WT = {};
            super(m);
            remoter.registerCallback("fps", function (_arg1:ByteArray):void{
                fpsMonitor = _arg1.readBoolean();
            });
            remoter.registerCallback("mem", function (_arg1:ByteArray):void{
                memoryMonitor = _arg1.readBoolean();
            });
            remoter.registerCallback("removeGroup", function (_arg1:ByteArray):void{
                removeGroup(_arg1.readUTF());
            });
            remoter.registerCallback("graph", this.25G, true);
        }

        public function add(_arg1:String, _arg2:Object, _arg3:String, _arg4:Number=-1, _arg5:String=null, _arg6:Rectangle=null, _arg7:Boolean=false):void{
            var newGroup:Boolean;
            var i:0Nm;
            var n:String = _arg1;
            var obj:Object = _arg2;
            var prop:String = _arg3;
            var col:int = _arg4;
            var key = _arg5;
            var rect = _arg6;
            var inverse:Boolean = _arg7;
            if (obj == null)
            {
                report((((("ERROR: Graph [" + n) + "] received a null object to graph property [") + prop) + "]."), 10);
                return;
            };
            var group:1oT = this.WT[n];
            if (!group)
            {
                newGroup = true;
                group = new 1oT(n);
            };
            var interests:Array = group.interests;
            if (((isNaN(col)) || ((col < 0))))
            {
                if (interests.length <= 5)
                {
                    col = config.style[("priority" + (10 - (interests.length * 2)))];
                } else
                {
                    col = (Math.random() * 0xFFFFFF);
                };
            };
            if (key == null)
            {
                key = prop;
            };
            for each (i in interests)
            {
                if (i.key == key)
                {
                    report((((("Graph _with key [" + key) + "] already exists in [") + n) + "]"), 10);
                    return;
                };
            };
            if (rect)
            {
                group.rect = rect;
            };
            if (inverse)
            {
                group.1JS = inverse;
            };
            var interest:0Nm = new 0Nm(key, col);
            var v:Number = NaN;
            try
            {
                v = interest.setObject(obj, prop);
            } catch(e:Error)
            {
                report(((((("Error _with graph value for [" + key) + "] in [") + n) + "]. ") + e), 10);
                return;
            };
            if (isNaN(v))
            {
                report((((("Graph value for key [" + key) + "] in [") + n) + "] is not a number (NaN)."), 10);
            } else
            {
                group.interests.push(interest);
                if (newGroup)
                {
                    this.WT[n] = group;
                    this.Kg.push(group);
                };
            };
        }

        public function 1Jz(_arg1:String, _arg2:Number=NaN, _arg3:Number=NaN):void{
            var _local4:1oT = this.WT[_arg1];
            if (!_local4)
            {
                return;
            };
            _local4.low = _arg2;
            _local4.7p = _arg3;
            _local4.fixed = !(((isNaN(_arg2)) || (isNaN(_arg3))));
        }

        public function remove(_arg1:String, _arg2:Object=null, _arg3:String=null):void{
            var _local4:Array;
            var _local5:int;
            var _local6:0Nm;
            if ((((_arg2 == null)) && ((_arg3 == null))))
            {
                this.removeGroup(_arg1);
            } else
            {
                if (this.WT[_arg1])
                {
                    _local4 = this.WT[_arg1].interests;
                    _local5 = (_local4.length - 1);
                    while (_local5 >= 0)
                    {
                        _local6 = _local4[_local5];
                        if ((((((_arg2 == null)) || ((_local6.obj == _arg2)))) && ((((_arg3 == null)) || ((_local6.prop == _arg3))))))
                        {
                            _local4.splice(_local5, 1);
                        };
                        _local5--;
                    };
                    if (_local4.length == 0)
                    {
                        this.removeGroup(_arg1);
                    };
                };
            };
        }

        private function removeGroup(_arg1:String):void{
            var _local2:ByteArray;
            var _local3:1oT;
            var _local4:int;
            if (remoter.remoting == xi.1pv)
            {
                _local2 = new ByteArray();
                _local2.writeUTF(_arg1);
                remoter.send("removeGroup", _local2);
            } else
            {
                _local3 = this.WT[_arg1];
                _local4 = this.Kg.indexOf(_local3);
                if (_local4 >= 0)
                {
                    this.Kg.splice(_local4, 1);
                };
                delete this.WT[_arg1];
            };
        }

        public function get fpsMonitor():Boolean{
            if (remoter.remoting == xi.1pv)
            {
                return (console.panels.fpsMonitor);
            };
            return (!((this.0Z3 == null)));
        }

        public function set fpsMonitor(_arg1:Boolean):void{
            var _local2:ByteArray;
            var _local3:int;
            if (remoter.remoting == xi.1pv)
            {
                _local2 = new ByteArray();
                _local2.writeBoolean(_arg1);
                remoter.send("fps", _local2);
            } else
            {
                if (_arg1 != this.fpsMonitor)
                {
                    if (_arg1)
                    {
                        this.0Z3 = this.0c3(1oT.13x);
                        this.0Z3.low = 0;
                        this.0Z3.fixed = true;
                        this.0Z3.1QT = 30;
                    } else
                    {
                        this.1z = -1;
                        _local3 = this.Kg.indexOf(this.0Z3);
                        if (_local3 >= 0)
                        {
                            this.Kg.splice(_local3, 1);
                        };
                        this.0Z3 = null;
                    };
                    console.panels.mainPanel.updateMenu();
                };
            };
        }

        public function get memoryMonitor():Boolean{
            if (remoter.remoting == xi.1pv)
            {
                return (console.panels.memoryMonitor);
            };
            return (!((this.E5 == null)));
        }

        public function set memoryMonitor(_arg1:Boolean):void{
            var _local2:ByteArray;
            var _local3:int;
            if (remoter.remoting == xi.1pv)
            {
                _local2 = new ByteArray();
                _local2.writeBoolean(_arg1);
                remoter.send("mem", _local2);
            } else
            {
                if (_arg1 != this.memoryMonitor)
                {
                    if (_arg1)
                    {
                        this.E5 = this.0c3(1oT.1md);
                        this.E5.0c0 = 20;
                    } else
                    {
                        _local3 = this.Kg.indexOf(this.E5);
                        if (_local3 >= 0)
                        {
                            this.Kg.splice(_local3, 1);
                        };
                        this.E5 = null;
                    };
                    console.panels.mainPanel.updateMenu();
                };
            };
        }

        private function 0c3(_arg1:int):1oT{
            var _local2:1oT = new 1oT("special");
            _local2.type = _arg1;
            this.Kg.push(_local2);
            var _local3:0Nm = new 0Nm("special");
            if (_arg1 == 1oT.13x)
            {
                _local3.col = 16724787;
            } else
            {
                _local3.col = 5267711;
            };
            _local2.interests.push(_local3);
            return (_local2);
        }

        public function update(_arg1:Number=0):Array{
            var _local2:0Nm;
            var _local3:Number;
            var _local4:1oT;
            var _local5:Boolean;
            var _local6:uint;
            var _local7:uint;
            var _local8:Array;
            var _local9:int;
            var _local10:Number;
            var _local11:uint;
            var _local12:ByteArray;
            var _local13:uint;
            for each (_local4 in this.Kg)
            {
                _local5 = true;
                if (_local4.0c0 > 1)
                {
                    _local4.1VY++;
                    if (_local4.1VY < _local4.0c0)
                    {
                        _local5 = false;
                    } else
                    {
                        _local4.1VY = 0;
                    };
                };
                if (_local5)
                {
                    _local6 = _local4.type;
                    _local7 = _local4.1QT;
                    _local8 = _local4.interests;
                    if (_local6 == 1oT.13x)
                    {
                        _local4.7p = _arg1;
                        _local2 = _local8[0];
                        _local9 = getTimer();
                        if (this.1z >= 0)
                        {
                            _local10 = (_local9 - this.1z);
                            _local3 = (1000 / _local10);
                            _local2.setValue(_local3, _local7);
                        };
                        this.1z = _local9;
                    } else
                    {
                        if (_local6 == 1oT.1md)
                        {
                            _local2 = _local8[0];
                            _local3 = (Math.round((System.totalMemory / 10485.76)) / 100);
                            _local4.0BX(_local3);
                            _local2.setValue(_local3, _local7);
                        } else
                        {
                            this.1zc(_local4);
                        };
                    };
                };
            };
            if (((remoter.canSend) && (((this.0TW) || (this.Kg.length)))))
            {
                _local11 = this.Kg.length;
                _local12 = new ByteArray();
                _local13 = 0;
                while (_local13 < _local11)
                {
                    1oT(this.Kg[_local13]).0ZY(_local12);
                    _local13++;
                };
                remoter.send("graph", _local12);
                this.0TW = (this.Kg.length > 0);
            };
            return (this.Kg);
        }

        private function 1zc(_arg1:1oT):void{
            var i:0Nm;
            var v:Number;
            var group:1oT = _arg1;
            for each (i in group.interests)
            {
                try
                {
                    v = i.1at();
                    i.setValue(v, group.1QT);
                } catch(e:Error)
                {
                    report(((((("Error _with graph value for key [" + i.key) + "] in [") + group.name) + "]. ") + e), 10);
                    remove(group.name, i.obj, i.prop);
                };
                group.0BX(v);
            };
        }

        private function 25G(_arg1:ByteArray=null):void{
            var _local2:Array;
            if (((_arg1) && (_arg1.length)))
            {
                _arg1.position = 0;
                _local2 = new Array();
                while (_arg1.bytesAvailable)
                {
                    _local2.push(1oT.jk(_arg1));
                };
                console.panels.updateGraphs(_local2);
            } else
            {
                console.panels.updateGraphs(new Array());
            };
        }


    }
}//package 1Tb

