// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Fa.10u

package 0Fa{
    import 1uF.1Mf;
    import 1u-.tM;
    import aq.Account;
    import 1u-.rH;
    import 0N9.0hf;
    import 0N9.02A;
    import 1u-.0xT;
    import 0xo.lZ;
    import 1qg.0io;
    import 1qg.11S;
    import 0eZ.16V;
    import flash.display.Stage;
    import flash.display.Sprite;
    import qs.1T5;
    import flash.events.KeyboardEvent;
    import flash.events.Event;
    import 12X.0KD;
    import AO.du;

    public class 10u extends 1Mf {

        private static const 1oi:int = 10;

        [Inject]
        public var view:Chat;
        [Inject]
        public var model:tM;
        [Inject]
        public var account:Account;
        [Inject]
        public var 15l:rH;
        [Inject]
        public var 1w-:0hf;
        [Inject]
        public var 1Tu:02A;
        [Inject]
        public var 0KU:0xT;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var KW:11S;
        [Inject]
        public var register:16V;
        private var stage:Stage;
        private var 0ZU:int;
        private var 1iu:int;
        private var WF:Boolean = false;


        override public function initialize():void{
            this.view.x = this.model.1Xo.left;
            this.view.y = this.model.1Xo.top;
            this.view.setup(this.model, this.account.0D3());
            this.stage = this.view.stage;
            this.0qt();
            this.1w-.add(this.0Pb);
            this.0n2.add(this.1HI);
            this.KW.add(this.0);
            this.register.add(this.0VB);
        }

        private function 1HI(_arg1:Sprite):void{
            this.IZ();
        }

        private function 0():void{
            this.0qt();
        }

        private function 0Pb(_arg1:Boolean, _arg2:String):void{
            if (_arg1)
            {
                this.stage.focus = this.view;
                this.WF = false;
            } else
            {
                this.0qt();
                this.stage.focus = null;
            }
        }

        private function 0VB(_arg1:1T5):void{
            if (_arg1.error == null)
            {
                this.view.0IP();
            }
        }

        override public function destroy():void{
            this.IZ();
            this.1w-.remove(this.0Pb);
            this.0n2.remove(this.1HI);
            this.KW.remove(this.0);
            this.stage = null;
        }

        private function 0qt():void{
            if (!this.WF)
            {
                this.stage.addEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
                this.stage.addEventListener(KeyboardEvent.KEY_UP, this.0M9);
                this.WF = true;
            }
        }

        private function IZ():void{
            if (this.WF)
            {
                this.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.1lw);
                this.stage.removeEventListener(KeyboardEvent.KEY_UP, this.0M9);
                this.stage.removeEventListener(Event.ENTER_FRAME, this.3C);
                this.WF = false;
            }
        }

        private function 1lw(_arg1:KeyboardEvent):void{
            if (_arg1.keyCode == this.15l.0KS())
            {
                this.0eM(-1);
            } else
            {
                if (_arg1.keyCode == this.15l.1b4())
                {
                    this.0eM(1);
                }
            }
        }

        private function 0eM(_arg1:int):void{
            this.0ZU = _arg1;
            this.1Tu.dispatch(_arg1);
            this.1iu = 0;
            this.view.addEventListener(Event.ENTER_FRAME, this.3C);
        }

        private function 3C(_arg1:Event):void{
            if (this.1iu++ >= 1oi)
            {
                this.1Tu.dispatch(this.0ZU);
            }
        }

        private function 0M9(_arg1:KeyboardEvent):void{
            if (this.WF)
            {
                this.0v5(_arg1.keyCode);
            }
            if ((((_arg1.keyCode == this.15l.0KS())) || ((_arg1.keyCode == this.15l.1b4()))))
            {
                this.view.removeEventListener(Event.ENTER_FRAME, this.3C);
            }
        }

        private function 0v5(_arg1:uint):void{
            if ((((this.stage.focus == null)) || ((_arg1 == this.15l._ZS()))))
            {
                if (_arg1 == this.15l.14W())
                {
                    this.1qc("/");
                } else
                {
                    if (_arg1 == this.15l.1I5())
                    {
                        this.1qc("");
                    } else
                    {
                        if (_arg1 == this.15l.07U())
                        {
                            this.1qc("/g ");
                        } else
                        {
                            if (_arg1 == this.15l._ZS())
                            {
                                this.1qc((("/tell " + this.0KU.18g()) + " "));
                            }
                        }
                    }
                }
            }
        }

        private function 1qc(_arg1:String):void{
            if (this.account.0D3())
            {
                this.1w-.dispatch(true, _arg1);
            } else
            {
                if (((!((this.11u.ja == null))) && (this.11u.ja.evalIsNotInCombatMapArea())))
                {
                    this.0n2.dispatch(new 0KD(du.1H6));
                }
            }
        }


    }
}//package _0Fa

