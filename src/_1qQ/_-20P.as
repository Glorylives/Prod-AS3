// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1qQ.20P

package 1qQ{

    import AO.vR;


    public class 20P implements 0oB {

        [Inject]
        public var 0ZM:0oB;
        [Inject]
        public var 0ur:0Uh;
        public var pV:Vector.<vR>;

        public function 20P(){
            this.pV = new Vector.<vR>();
            super();
        }

        public function 09f(_arg1:String):Boolean{
            return (true);
        }

        public function getValue(_arg1:String):String{
            if (((!((_arg1 == ""))) && (this.1VX(_arg1))))
            {
                return (_arg1);
            }
            return (this.0ZM.getValue(_arg1));
        }

        private function 1VX(_arg1:String):Boolean{
            return (((this.1uZ(_arg1)) || (this.0AN(_arg1))));
        }

        private function 1uZ(_arg1:String):Boolean{
            return (!(this.0ZM.09f(_arg1)));
        }

        private function 15L(_arg1:String):void{
            var _local2:String = this.1GK(_arg1);
            var _local3:vR = new vR();
            _local3.key = _arg1;
            _local3.09f = this.0ZM.09f(_arg1);
            _local3.1Y4 = _local2;
            _local3.value = this.0ZM.getValue(_arg1);
            this.pV.push(_local3);
        }

        private function 0AN(_arg1:String):Boolean{
            return (!((this.1GK(_arg1) == this.0ur.1Jp())));
        }

        public function clear():void{
        }

        public function setValue(_arg1:String, _arg2:String, _arg3:String):void{
            this.0ZM.setValue(_arg1, _arg2, _arg3);
        }

        public function 1GK(_arg1:String):String{
            return (this.0ZM.1GK(_arg1));
        }


    }
}//package 1qQ

