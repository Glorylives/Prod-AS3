// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1uF.1Mf

package 1uF{
    import 1-6.2-f;
    import flash.events.IEventDispatcher;
    import flash.events.Event;
    import rz.*;

    public class _1Mf implements _03V {

        [Inject]
        public var 0Ah:2-f;
        [Inject]
        public var 0af:IEventDispatcher;
        private var SW:Object;


        public function set viewComponent(_arg1:Object):void{
            this.SW = _arg1;
        }

        public function initialize():void{
        }

        public function destroy():void{
            this.0Ah.1Gt();
        }

        protected function JR(_arg1:String, _arg2:Function, _arg3:Class=null):void{
            this.0Ah.2-V(IEventDispatcher(this.SW), _arg1, _arg2, _arg3);
        }

        protected function 1ju(_arg1:String, _arg2:Function, _arg3:Class=null):void{
            this.0Ah.2-V(this.0af, _arg1, _arg2, _arg3);
        }

        protected function 0S6(_arg1:String, _arg2:Function, _arg3:Class=null):void{
            this.0Ah.xc(IEventDispatcher(this.SW), _arg1, _arg2, _arg3);
        }

        protected function 22b(_arg1:String, _arg2:Function, _arg3:Class=null):void{
            this.0Ah.xc(this.0af, _arg1, _arg2, _arg3);
        }

        protected function dispatch(_arg1:Event):void{
            if (this.0af.hasEventListener(_arg1.type))
            {
                this.0af.dispatchEvent(_arg1);
            };
        }


    }
}//package 1uF

