// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Xi.1bQ

package 0Xi{
    import flash.utils.Dictionary;
    import 0rN.KS;
    import 1f1.0bs;
    import 0rN.17U;
    import 1f1.*;

    public class 1bQ implements 76 {

        private const 0H-:Dictionary = new Dictionary();
        private const FN:KS = new 95();


        public function map(_arg1:0bs):17U{
            return ((this.0H-[_arg1] = ((this.0H-[_arg1]) || (new 1Ja(_arg1)))));
        }

        public function sJ(_arg1:0bs):KS{
            return (((this.0H-[_arg1]) || (this.FN)));
        }


    }
}//package 0Xi

