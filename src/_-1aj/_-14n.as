// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1aj.14n

package 1aj{



    public class 14n {

        private static const 1hg:Vector.<int> = Vector.<int>([31, -1, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]);
        private static const IP:int = 2;

        private var 0PT:int;

        public function 14n(){
            this.0PT = new Date().getFullYear();
        }

        public function 0HG(_arg1:int):Boolean{
            return ((((_arg1 > 0)) && ((_arg1 <= 12))));
        }

        public function 1EM(_arg1:int, _arg2:int=-1, _arg3:int=-1):Boolean{
            return ((((_arg1 > 0)) && ((_arg1 <= this.0Hj(_arg2, _arg3)))));
        }

        public function 0Hj(_arg1:int=-1, _arg2:int=-1):int{
            if (_arg1 == -1)
            {
                return (31);
            }
            return ((((_arg1 == IP)) ? this.10U(_arg2) : 1hg[(_arg1 - 1)]));
        }

        private function 10U(_arg1:int):int{
            if ((((_arg1 == -1)) || (this.1tz(_arg1))))
            {
                return (29);
            }
            return (28);
        }

        public function 1tz(_arg1:int):Boolean{
            var _local2 = ((_arg1 % 4) == 0);
            var _local3 = ((_arg1 % 100) == 0);
            var _local4 = ((_arg1 % 400) == 0);
            return (((_local2) && (((!(_local3)) || (_local4)))));
        }

        public function L6(_arg1:int, _arg2:int, _arg3:int, _arg4:int):Boolean{
            return (((((this.1ns(_arg3, _arg4)) && (this.0HG(_arg1)))) && (this.1EM(_arg2, _arg1, _arg3))));
        }

        public function 1ns(_arg1:int, _arg2:int):Boolean{
            return ((((_arg1 <= this.0PT)) && ((_arg1 > (this.0PT - _arg2)))));
        }


    }
}//package 1aj

