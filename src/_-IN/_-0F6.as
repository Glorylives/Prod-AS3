// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//IN.0F6

package IN{
    import tn.0ec;
    import tn.0dE;
    import tn.1iY;
    import tn.Lm;

    public class 0F6 {

        [Inject]
        public var classes:0ec;


        public function execute():void{
            var _local1:int = this.classes.1sj();
            var _local2:int;
            while (_local2 < _local1)
            {
                this.228(this.classes.1Pg(_local2));
                _local2++;
            };
        }

        private function 228(_arg1:0dE):void{
            _arg1.eR((_arg1.id == 0ec.0R9));
            this.0zv(_arg1);
        }

        private function 0zv(_arg1:0dE):void{
            var _local5:1iY;
            var _local2:1iY = _arg1.0sP.0i1();
            var _local3:int = _arg1.0sP.1sj();
            var _local4:int;
            while (_local4 < _local3)
            {
                _local5 = _arg1.0sP.0c(_local4);
                if (_local5 != _local2)
                {
                    this.22C(_arg1.0sP.0c(_local4));
                };
                _local4++;
            };
        }

        private function 22C(_arg1:1iY):void{
            _arg1.setState(Lm.LOCKED);
        }


    }
}//package IN

