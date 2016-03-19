// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2-g.0kO

package 2-g{
    import flash.text.TextFieldAutoSize;
    import flash.events.Event;
    import EM.Console;
    import flash.events.KeyboardEvent;
    import flash.display.DisplayObject;
    import flash.display.DisplayObjectContainer;
    import flash.display.Stage;
    import flash.geom.Point;
    import flash.utils.Dictionary;
    import 1Tb.1-T;
    import EM.1L8;
    import flash.events.TextEvent;
    import flash.text.TextField;

    public class 0kO extends 1ZC {

        public static const NAME:String = "rollerPanel";

        private var 01F:Boolean;

        public function 0kO(_arg1:Console){
            super(_arg1);
            name = NAME;
            init(60, 100, false);
            8h = 0AQ("rollerPrints");
            8h.multiline = true;
            8h.autoSize = TextFieldAutoSize.LEFT;
            25e(8h, this.onMenuRollOver, this.v5);
            Qf(8h);
            addChild(8h);
            addEventListener(Event.ENTER_FRAME, this.14q);
            addEventListener(Event.REMOVED_FROM_STAGE, this.IZ);
        }

        private function IZ(_arg1:Event=null):void{
            removeEventListener(Event.ENTER_FRAME, this.14q);
            removeEventListener(Event.REMOVED_FROM_STAGE, this.IZ);
            if (stage)
            {
                stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1If);
            }
        }

        private function 14q(_arg1:Event):void{
            if (!console.stage)
            {
                this.close();
                return;
            }
            if (this.01F)
            {
                8h.htmlText = '<high><menu>Press a key to set [ <a href="event:cancel"><b>cancel</b></a> ]</menu></high>';
            } else
            {
                8h.htmlText = (("<low>" + this.1Dm(false)) + "</low>");
                8h.autoSize = TextFieldAutoSize.LEFT;
                8h.setSelection(0, 0);
            }
            width = (8h.width + 4);
            height = 8h.height;
        }

        public function 1Dm(_arg1:Boolean):String{
            var _local7:DisplayObject;
            var _local8:String;
            var _local9:Array;
            var _local10:DisplayObjectContainer;
            var _local11:uint;
            var _local12:uint;
            var _local13:DisplayObject;
            var _local14:uint;
            var _local15:String;
            var _local16:uint;
            var _local2:Stage = console.stage;
            var _local3 = "";
            if (!_arg1)
            {
                _local8 = ((console.rollerCaptureKey) ? console.rollerCaptureKey.key : "unassigned");
                _local3 = (('<menu> <a href="event:close"><b>X</b></a></menu> Capture key: <menu><a href="event:capture">' + _local8) + "</a></menu><br/>");
            }
            var _local4:Point = new Point(_local2.mouseX, _local2.mouseY);
            if (_local2.areInaccessibleObjectsUnderPoint(_local4))
            {
                _local3 = (_local3 + "<p9>Inaccessible objects detected</p9><br/>");
            }
            var _local5:Array = _local2.getObjectsUnderPoint(_local4);
            var _local6:Dictionary = new Dictionary(true);
            if (_local5.length == 0)
            {
                _local5.push(_local2);
            }
            for each (_local7 in _local5)
            {
                _local9 = new Array(_local7);
                _local10 = _local7.parent;
                while (_local10)
                {
                    _local9.unshift(_local10);
                    _local10 = _local10.parent;
                }
                _local11 = _local9.length;
                _local12 = 0;
                while (_local12 < _local11)
                {
                    _local13 = _local9[_local12];
                    if (_local6[_local13] == undefined)
                    {
                        _local6[_local13] = _local12;
                        _local14 = _local12;
                        while (_local14 > 0)
                        {
                            _local3 = (_local3 + (((_local14 == 1)) ? " ∟" : " -"));
                            _local14--;
                        }
                        _local15 = _local13.name;
                        if (((_arg1) && (console.config.useObjectLinking)))
                        {
                            _local16 = console.refs.setLogRef(_local13);
                            _local15 = ((((("<a href='event:cl_" + _local16) + "'>") + _local15) + "</a> ") + console.refs.makeRefTyped(_local13));
                        } else
                        {
                            _local15 = (((_local15 + " (") + 1-T.0Ds(_local13)) + ")");
                        }
                        if (_local13 == _local2)
                        {
                            _local16 = console.refs.setLogRef(_local2);
                            if (_local16)
                            {
                                _local3 = (_local3 + (("<p3><a href='event:cl_" + _local16) + "'><i>Stage</i></a> "));
                            } else
                            {
                                _local3 = (_local3 + "<p3><i>Stage</i> ");
                            }
                            _local3 = (_local3 + (((("[" + _local2.mouseX) + ",") + _local2.mouseY) + "]</p3><br/>"));
                        } else
                        {
                            if (_local12 == (_local11 - 1))
                            {
                                _local3 = (_local3 + (("<p5>" + _local15) + "</p5><br/>"));
                            } else
                            {
                                _local3 = (_local3 + (("<p2><i>" + _local15) + "</i></p2><br/>"));
                            }
                        }
                    }
                    _local12++;
                }
            }
            return (_local3);
        }

        override public function close():void{
            this.0LQ();
            this.IZ();
            super.close();
            console.panels.updateMenu();
        }

        private function onMenuRollOver(_arg1:TextEvent):void{
            var _local3:1L8;
            var _local2:String = ((_arg1.text) ? _arg1.text.replace("event:", "") : "");
            if (_local2 == "close")
            {
                _local2 = "Close";
            } else
            {
                if (_local2 == "capture")
                {
                    _local3 = console.rollerCaptureKey;
                    if (_local3)
                    {
                        _local2 = ("Unassign key ::" + _local3.key);
                    } else
                    {
                        _local2 = "Assign key";
                    }
                } else
                {
                    if (_local2 == "cancel")
                    {
                        _local2 = "Cancel assign key";
                    } else
                    {
                        _local2 = null;
                    }
                }
            }
            console.panels.tooltip(_local2, this);
        }

        protected function v5(_arg1:TextEvent):void{
            TextField(_arg1.currentTarget).setSelection(0, 0);
            if (_arg1.text == "close")
            {
                this.close();
            } else
            {
                if (_arg1.text == "capture")
                {
                    if (console.rollerCaptureKey)
                    {
                        console.setRollerCaptureKey(null);
                    } else
                    {
                        this.01F = true;
                        stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1If, false, 0, true);
                    }
                    console.panels.tooltip(null);
                } else
                {
                    if (_arg1.text == "cancel")
                    {
                        this.0LQ();
                        console.panels.tooltip(null);
                    }
                }
            }
            _arg1.stopPropagation();
        }

        private function 0LQ():void{
            this.01F = false;
            if (stage)
            {
                stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1If);
            }
        }

        private function 1If(_arg1:KeyboardEvent):void{
            if (!_arg1.charCode)
            {
                return;
            }
            var _local2:String = String.fromCharCode(_arg1.charCode);
            this.0LQ();
            console.setRollerCaptureKey(_local2, _arg1.shiftKey, _arg1.ctrlKey, _arg1.altKey);
            console.panels.tooltip(null);
        }


    }
}//package 2-g

