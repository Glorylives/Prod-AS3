// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Tb.9a

package 1Tb{
    import EM.Console;
    import EM.1L8;
    import flash.events.KeyboardEvent;
    import flash.text.TextField;
    import flash.text.TextFieldType;

    public class 9a extends ak {

        private var ly:int;
        private var yr:Object;
        private var cT:uint;

        public function 9a(_arg1:Console){
            this.yr = {};
            super(_arg1);
            _arg1.cl.addCLCmd("keybinds", this.0qJ, "List all keybinds used");
        }

        public function 0cJ(_arg1:1L8, _arg2:Function, _arg3:Array=null):void{
            if (((config.keystrokePassword) && (((!(_arg1.14w)) && ((_arg1.key.charAt(0) == config.keystrokePassword.charAt(0)))))))
            {
                report((("Error: KeyBind [" + _arg1.key) + "] is conflicting _with Console password."), 9);
                return;
            };
            if (_arg2 == null)
            {
                delete this.yr[_arg1.key];
            } else
            {
                this.yr[_arg1.key] = [_arg2, _arg3];
            };
        }

        public function 1If(_arg1:KeyboardEvent):void{
            this.1NZ(_arg1, false);
        }

        public function 0TK(_arg1:KeyboardEvent):void{
            this.1NZ(_arg1, true);
        }

        private function 1NZ(_arg1:KeyboardEvent, _arg2:Boolean):void{
            var _local4:1L8;
            var _local3:String = String.fromCharCode(_arg1.charCode);
            if (((((((_arg2) && (!((config.keystrokePassword == null))))) && (_local3))) && ((_local3 == config.keystrokePassword.substring(this.ly, (this.ly + 1))))))
            {
                this.ly++;
                if (this.ly >= config.keystrokePassword.length)
                {
                    this.ly = 0;
                    if (this.gv())
                    {
                        if (((console.visible) && (!(console.panels.mainPanel.visible))))
                        {
                            console.panels.mainPanel.visible = true;
                        } else
                        {
                            console.visible = !(console.visible);
                        };
                        if (((console.visible) && (console.panels.mainPanel.visible)))
                        {
                            console.panels.mainPanel.visible = true;
                            console.panels.mainPanel.moveBackSafePosition();
                        };
                    } else
                    {
                        if (this.cT < 3)
                        {
                            this.cT++;
                            report("Password did not trigger because you have focus on an input TextField.", 8);
                        };
                    };
                };
            } else
            {
                if (_arg2)
                {
                    this.ly = 0;
                };
                _local4 = new 1L8(_arg1.keyCode, _arg1.shiftKey, _arg1.ctrlKey, _arg1.altKey, _arg2);
                this.04P(_local4.key);
                if (_local3)
                {
                    _local4 = new 1L8(_local3, _arg1.shiftKey, _arg1.ctrlKey, _arg1.altKey, _arg2);
                    this.04P(_local4.key);
                };
            };
        }

        private function 0qJ(... _args):void{
            var _local3:String;
            report("Key binds:", -2);
            var _local2:uint;
            for (_local3 in this.yr)
            {
                _local2++;
                report(_local3, -2);
            };
            report(("--- Found " + _local2), -2);
        }

        private function 04P(_arg1:String):void{
            var _local2:Array = this.yr[_arg1];
            if (((config.keyBindsEnabled) && (_local2)))
            {
                if (this.gv())
                {
                    (_local2[0] as Function).apply(null, _local2[1]);
                } else
                {
                    if (this.cT < 3)
                    {
                        this.cT++;
                        report((("Key bind [" + _arg1) + "] did not trigger because you have focus on an input TextField."), 8);
                    };
                };
            };
        }

        private function gv():Boolean{
            var _local1:TextField;
            try
            {
                if (((console.stage) && ((console.stage.focus is TextField))))
                {
                    _local1 = (console.stage.focus as TextField);
                    if (_local1.type == TextFieldType.INPUT)
                    {
                        return (false);
                    };
                };
            } catch(err:Error)
            {
            };
            return (true);
        }


    }
}//package 1Tb

