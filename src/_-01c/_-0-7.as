// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//01c.0-7

package 01c{
    public class 0-7 extends 0h3 {

        public var callback:Function;
        public var parameters:Array;

        public function 0-7(_arg1:int, _arg2:Function, ... _args){
            super(_arg1);
            this.callback = _arg2;
            this.parameters = _args;
        }

        override protected function run():void{
            this.callback.apply(this.parameters);
        }

        override protected function onDestroyed():void{
            this.callback = null;
            this.parameters = null;
        }


    }
}//package 01c

