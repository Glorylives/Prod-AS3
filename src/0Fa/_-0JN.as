// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Fa.0JN

package 0Fa{
    import 1uF.1Mf;
    import 1u-.tM;
    import AO.Xk;
    import AO._nz;
    import 0N9.1Qk;
    import 0N9.0hf;
    import 1u-.0xT;
    import 1u-.rH;
    import flash.display.Stage;
    import flash.events.KeyboardEvent;
    import flash.text.TextField;

    public class 0JN extends 1Mf {

        [Inject]
        public var view:GH;
        [Inject]
        public var model:tM;
        [Inject]
        public var eL:Xk;
        [Inject]
        public var 0sQ:_nz;
        [Inject]
        public var 0Wu:1Qk;
        [Inject]
        public var 1w-:0hf;
        [Inject]
        public var 0KU:0xT;
        [Inject]
        public var 1XC:rH;
        public var stage:Stage;


        override public function initialize():void{
            this.stage = this.view.stage;
            this.stage.addEventListener(KeyboardEvent.KEY_UP, this.0M9);
            this.view.setup(this.model, this.22());
            this.view.message.add(this.0dn);
            this.view.close.add(this.y3);
            this.1w-.add(this.0Pb);
        }

        override public function destroy():void{
            this.view.message.remove(this.0dn);
            this.view.close.remove(this.y3);
            this.1w-.remove(this.0Pb);
            this.stage.removeEventListener(KeyboardEvent.KEY_UP, this.0M9);
        }

        private function y3():void{
            this.1w-.dispatch(false, "");
            this.0KU.1Wf();
        }

        private function 0dn(_arg1:String):void{
            this.0Wu.dispatch(_arg1);
            this.1w-.dispatch(false, "");
        }

        private function 0Pb(_arg1:Boolean, _arg2:String):void{
            if (_arg1)
            {
                this.view.activate(_arg2, true);
            } else
            {
                this.view.deactivate();
            }
            if (!_arg1)
            {
                this.0KU.1Wf();
            }
        }

        private function 22():TextField{
            var _local1:TextField = this.eL.bF();
            this.0sQ.apply(_local1, 14, 0xFFFFFF, true);
            return (_local1);
        }

        private function 0M9(_arg1:KeyboardEvent):void{
            if (((this.view.visible) && ((((_arg1.keyCode == this.1XC._ZS())) || ((((this.stage.focus == null)) || (this.if())))))))
            {
                this.0CD(_arg1);
            }
        }

        private function if():Boolean{
            return (((!((this.stage.focus.parent == this.view))) && (!((this.stage.focus == this.view)))));
        }

        private function 0CD(_arg1:KeyboardEvent):void{
            _arg1.stopImmediatePropagation();
            var _local2:uint = _arg1.keyCode;
            if (_local2 == this.1XC.14W())
            {
                this.view.activate("/", true);
            } else
            {
                if (_local2 == this.1XC.1I5())
                {
                    this.view.activate(null, true);
                } else
                {
                    if (_local2 == this.1XC.07U())
                    {
                        this.view.activate("/g ", true);
                    } else
                    {
                        if (_local2 == this.1XC._ZS())
                        {
                            this.0jD();
                        }
                    }
                }
            }
        }

        private function 0jD():void{
            if (!this.view.0_ZS())
            {
                this.view.activate((("/tell " + this.0KU.18g()) + " "), true);
            }
        }


    }
}//package 0Fa

