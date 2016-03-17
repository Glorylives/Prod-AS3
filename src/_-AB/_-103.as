// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.103

package AB{
    import flash.utils.Dictionary;
    import 1n4.AppendingLineBuilder;

    public class 103 {

        static const 1HG:uint = 0xFF00;
        static const 1Bj:uint = 0xFF0000;
        static const 1U4:uint = 16777103;
        static const 1BY:uint = 0xB3B3B3;
        static const 2-W:uint = 9055202;

        public var ZX:Dictionary;
        public var 6A:AppendingLineBuilder;
        public var 1Tf:AppendingLineBuilder;


        public function 0Ys(_arg1:XML, _arg2:XML):void{
            this.1EA();
            this.compareSlots(_arg1, _arg2);
        }

        protected function compareSlots(_arg1:XML, _arg2:XML):void{
        }

        private function 1EA():void{
            this.ZX = new Dictionary();
            this.6A = new AppendingLineBuilder();
        }

        protected function 1kE(_arg1:Number):uint{
            if (_arg1 < 0)
            {
                return (1Bj);
            };
            if (_arg1 > 0)
            {
                return (1HG);
            };
            return (1U4);
        }

        protected function 00I(_arg1:String, _arg2:uint=16777103):String{
            return ((((('<font color="#' + _arg2.toString(16)) + '">') + _arg1) + "</font>"));
        }

        protected function 1cp(_arg1:String):String{
            return (((this.00I("MP Cost: ", 1BY) + this.00I(_arg1, 1U4)) + "\n"));
        }


    }
}//package AB

