// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1tt.0jv

package 1tt{
    import _Jy._1HZ;
    import 0wP.kM;
    import 0wP.*;

    public class 0jv {

        public var BC:int = 0;
        public var 0vG:_1HZ;
        private var 0OY:Object;
        private var initialized:Boolean;

        public function 0jv(){
            this.0vG = new _1HZ();
            super();
        }

        public function oC():Boolean{
            return (this.initialized);
        }

        public function 0Si(_arg1:int):kM{
            return (this.0OY[_arg1]);
        }

        public function 20W(_arg1:int):Boolean{
            return ((_arg1 in this.0OY));
        }

        public function sZ(_arg1:Array):void{
            var _local2:kM;
            this.0OY = {};
            for each (_local2 in _arg1)
            {
                _local2.0vG.add(this.DP);
                this.0OY[_local2.packageID] = _local2;
            };
            this.initialized = true;
            this.0vG.dispatch();
        }

        private function DP():void{
            this.0vG.dispatch();
        }

        public function 1X7(_arg1:int):Boolean{
            var _local2:kM = this.0OY[_arg1];
            return (((_local2) && (_local2.0Cx())));
        }

        public function 04r():kM{
            var _local2:kM;
            var _local1:kM;
            for each (_local2 in this.0OY)
            {
                if ((((_local1 == null)) || ((_local2.priority < _local1.priority))))
                {
                    _local1 = _local2;
                };
            };
            return (_local2);
        }

        public function 0wW():Boolean{
            return ((((this.BC == 0)) && (!(("production".toLowerCase() == "localhost")))));
        }

        public function dJ():Boolean{
            var _local1:Object;
            for each (_local1 in this.0OY)
            {
                return (true);
            };
            return (false);
        }


    }
}//package 1tt

