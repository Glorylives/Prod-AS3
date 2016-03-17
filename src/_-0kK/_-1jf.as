// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0kK.1jf

package 0kK{
    import flash.events.EventDispatcher;
    import flash.display.LoaderInfo;
    import flash.events.Event;

    public class 1jf extends EventDispatcher implements pJ {

        private var CE:LoaderInfo;


        override public function toString():String{
            return (this.CE.toString());
        }

        override public function addEventListener(_arg1:String, _arg2:Function, _arg3:Boolean=false, _arg4:int=0, _arg5:Boolean=false):void{
            this.CE.addEventListener(_arg1, _arg2, _arg3, _arg4, _arg5);
        }

        override public function removeEventListener(_arg1:String, _arg2:Function, _arg3:Boolean=false):void{
            this.CE.removeEventListener(_arg1, _arg2, _arg3);
        }

        override public function dispatchEvent(_arg1:Event):Boolean{
            return (this.CE.dispatchEvent(_arg1));
        }

        override public function hasEventListener(_arg1:String):Boolean{
            return (this.CE.hasEventListener(_arg1));
        }

        override public function willTrigger(_arg1:String):Boolean{
            return (this.CE.willTrigger(_arg1));
        }

        public function set loaderInfo(_arg1:LoaderInfo):void{
            this.CE = _arg1;
        }


    }
}//package 0kK

