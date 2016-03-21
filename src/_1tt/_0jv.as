// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1tt.0jv

package _1tt{
    import _Jy._1HZ;

    import _0wP.*;

    public class _0jv {

        public var BC:int = 0;
        public var _0vG:_1HZ;
        private var _0OY:Object;
        private var initialized:Boolean;

        public function _0jv(){
            this._0vG = new _1HZ();
            super();
        }

        public function oC():Boolean{
            return (this.initialized);
        }

        public function _0Si(_arg1:int):_kM{
            return (this._0OY[_arg1]);
        }

        public function _20W(_arg1:int):Boolean{
            return ((_arg1 in this._0OY));
        }

        public function sZ(_arg1:Array):void{
            var _local2:_kM;
            this._0OY = {}
            for each (_local2 in _arg1)
            {
                _local2._0vG.add(this.DP);
                this._0OY[_local2.packageID] = _local2;
            }
            this.initialized = true;
            this._0vG.dispatch();
        }

        private function DP():void{
            this._0vG.dispatch();
        }

        public function _1X7(_arg1:int):Boolean{
            var _local2:_kM = this._0OY[_arg1];
            return (((_local2) && (_local2._0Cx())));
        }

        public function _04r():_kM{
            var _local2:_kM;
            var _local1:_kM;
            for each (_local2 in this._0OY)
            {
                if ((((_local1 == null)) || ((_local2.priority < _local1.priority))))
                {
                    _local1 = _local2;
                }
            }
            return (_local2);
        }

        public function _0wW():Boolean{
            return ((((this.BC == 0)) && (!(("production".toLowerCase() == "localhost")))));
        }

        public function dJ():Boolean{
            var _local1:Object;
            for each (_local1 in this._0OY)
            {
                return (true);
            }
            return (false);
        }


    }
}//package 1tt

