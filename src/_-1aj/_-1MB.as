// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1aj.1MB

package 1aj{
    public class 1MB {

        private var 11U:Boolean = false;
        private var seconds:int;
        private var minutes:int;
        private var 08v:int;
        private var days:int;
        private var K7:Array;


        public function 1-8(_arg1:Number):String{
            this.seconds = Math.floor((_arg1 / 1000));
            this.minutes = Math.floor((this.seconds / 60));
            this.08v = Math.floor((this.minutes / 60));
            this.days = Math.floor((this.08v / 24));
            this.seconds = (this.seconds % 60);
            this.minutes = (this.minutes % 60);
            this.08v = (this.08v % 24);
            this.11U = false;
            this.K7 = [];
            this.08I(this.days, "d");
            this.08I(this.08v, "h");
            this.08I(this.minutes, "m", 2);
            this.08I(this.seconds, "s", 2);
            this.11U = false;
            return (this.K7.join(" "));
        }

        private function 08I(_arg1:int, _arg2:String, _arg3:int=-1):void{
            if ((((_arg1 == 0)) && (!(this.11U))))
            {
                return;
            }
            this.11U = true;
            var _local4:String = _arg1.toString();
            if (_arg3 == -1)
            {
                _arg3 = _local4.length;
            }
            var _local5 = "";
            var _local6:int = _local4.length;
            while (_local6 < _arg3)
            {
                _local5 = (_local5 + "0");
                _local6++;
            }
            _local4 = ((_local5 + _local4) + _arg2);
            this.K7.push(_local4);
        }


    }
}//package 1aj

