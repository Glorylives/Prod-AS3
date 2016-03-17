// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//01c.0h3

package 01c{
    import flash.utils.Dictionary;
    import flash.utils.getTimer;

    public class 0h3 {

        private static var 0W0:uint;
        private static var 1vM:Dictionary = new Dictionary();

        public var id:uint;
        public var paused:Boolean;
        public var 1Nn:uint;
        public var I9:int;

        public function 0h3(_arg1:uint){
            this.1Nn = _arg1;
        }

        public static function 024(_arg1:0h3):uint{
            if (1vM[_arg1.id] == _arg1)
            {
                return (_arg1.id);
            };
            var _local2 = ++0W0;
            1vM[_local2] = _arg1;
            _arg1.I9 = getTimer();
            return (0W0);
        }

        public static function 1-2(_arg1:int):void{
            var _local2:0h3;
            var _local3:int;
            for each (_local2 in 1vM)
            {
                if (!_local2.paused)
                {
                    _local3 = (_arg1 - _local2.I9);
                    if (_local3 >= _local2.1Nn)
                    {
                        _local2.I9 = _arg1;
                        _local2.run();
                    };
                };
            };
        }

        public static function VW(_arg1:0h3):void{
            delete 1vM[_arg1.id];
            _arg1.onDestroyed();
        }

        public static function LT():void{
            var _local1:0h3;
            for each (_local1 in 1vM)
            {
                _local1.destroy();
            };
            1vM = new Dictionary();
        }


        final public function add():void{
            024(this);
        }

        final public function destroy():void{
            VW(this);
        }

        protected function run():void{
        }

        protected function onDestroyed():void{
        }


    }
}//package 01c

