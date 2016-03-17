// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0g5.0NQ

package 0g5{
    import flash.utils.Dictionary;
    import _0OG._22M;
    import flash.events.IEventDispatcher;
    import 1f1.76;
    import 1f1.0bs;
    import 0rN.17U;
    import 0rN.KS;
    import 13B.*;

    public class 0NQ implements Hh {

        private const GQ:Dictionary = new Dictionary();

        private var dM:_22M;
        private var 1yb:IEventDispatcher;
        private var 0ER:76;

        public function 0NQ(_arg1:_22M, _arg2:IEventDispatcher, _arg3:76){
            this.dM = _arg1;
            this.1yb = _arg2;
            this.0ER = _arg3;
        }

        public function map(_arg1:String, _arg2:Class=null):17U{
            var _local3:0bs = (this.GQ[(_arg1 + _arg2)] = ((this.GQ[(_arg1 + _arg2)]) || (this.14t(_arg1, _arg2))));
            return (this.0ER.map(_local3));
        }

        public function sJ(_arg1:String, _arg2:Class=null):KS{
            return (this.0ER.sJ(this.1l1(_arg1, _arg2)));
        }

        private function 14t(_arg1:String, _arg2:Class=null):0bs{
            return (new 0GN(this.dM, this.1yb, _arg1, _arg2));
        }

        private function 1l1(_arg1:String, _arg2:Class=null):0bs{
            return (this.GQ[(_arg1 + _arg2)]);
        }


    }
}//package 0g5

