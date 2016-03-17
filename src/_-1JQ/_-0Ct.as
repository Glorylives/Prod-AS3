// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1JQ.0Ct

package 1JQ{
    import flash.utils.Dictionary;
    import rz.lo;
    import rz.1cl;
    import flash.display.DisplayObject;
    import rz.*;

    public class 0Ct implements 0Mw {

        private const Xn:Array = [];

        private var 23o:Dictionary;
        private var _factory:lo;

        public function 0Ct(_arg1:lo):void{
            this.23o = new Dictionary(true);
            super();
            this._factory = _arg1;
        }

        public function 1cM(_arg1:1cl):void{
            var _local2:int = this.Xn.indexOf(_arg1);
            if (_local2 > -1)
            {
                return;
            };
            this.Xn.push(_arg1);
            this.31();
        }

        public function oE(_arg1:1cl):void{
            var _local2:int = this.Xn.indexOf(_arg1);
            if (_local2 == -1)
            {
                return;
            };
            this.Xn.splice(_local2, 1);
            this.31();
        }

        public function 27D(_arg1:DisplayObject, _arg2:Class):void{
            var _local3:Array = this.22Q(_arg1, _arg2);
            if (_local3)
            {
                this._factory.ek(_arg1, _arg2, _local3);
            };
        }

        public function 25M(_arg1:Object, _arg2:Class):void{
            var _local3:Array = this.22Q(_arg1, _arg2);
            if (_local3)
            {
                this._factory.ek(_arg1, _arg2, _local3);
            };
        }

        private function 31():void{
            this.23o = new Dictionary(true);
        }

        private function 22Q(_arg1:Object, _arg2:Class):Array{
            var _local3:1cl;
            if (this.23o[_arg2] === false)
            {
                return (null);
            };
            if (this.23o[_arg2] == undefined)
            {
                this.23o[_arg2] = false;
                for each (_local3 in this.Xn)
                {
                    _local3.1K9();
                    if (_local3.qU.matches(_arg1))
                    {
                        this.23o[_arg2] = ((this.23o[_arg2]) || ([]));
                        this.23o[_arg2].push(_local3);
                    };
                };
                if (this.23o[_arg2] === false)
                {
                    return (null);
                };
            };
            return ((this.23o[_arg2] as Array));
        }


    }
}//package 1JQ

