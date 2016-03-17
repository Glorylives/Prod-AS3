// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_CU.0Ol

package _CU{
    import flash.text.TextField;
    import 1qQ.20P;
    import AO.vR;

    public class 0Ol extends TextField {

        public static const JY:uint = 977663;
        public static const OD:uint = 15874138;

        public var ux:20P;


        override public function set text(_arg1:String):void{
            super.text = this.1UU(_arg1);
        }

        override public function set htmlText(_arg1:String):void{
            super.htmlText = this.1UU(_arg1);
        }

        public function 1UU(_arg1:String):String{
            var _local2:vR;
            if (this.ux.pV.length)
            {
                _local2 = this.ux.pV[0];
                if (_local2.09f)
                {
                    this.0mR(JY);
                } else
                {
                    this.0mR(OD);
                };
                return (_local2.key);
            };
            return (_arg1);
        }

        private function 0mR(_arg1:uint):void{
            background = true;
            backgroundColor = _arg1;
        }


    }
}//package _CU

