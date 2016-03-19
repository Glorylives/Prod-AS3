// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0sk.26Z

package 0sk{
    import 1wn.1t;
    import 1wn.1DZ;
    import aq.Account;
    import __AS3__.vec.Vector;
    import 1mO.x5;
    import com.company.assembleegameclient.parameters.Parameters;
    import __AS3__.vec.*;

    public class 26Z {

        private static const COUNT:int = 3;
        public static const 1Zd:int = 4;

        [Inject]
        public var update:1t;
        [Inject]
        public var it:1DZ;
        [Inject]
        public var account:Account;
        public var news:Vector.<BZ>;
        public var 04e:Vector.<x5>;
        public var 1Jk:Vector.<BZ>;


        public function q8():void{
            this.news = new Vector.<BZ>(COUNT, true);
            var _local1:int;
            while (_local1 < COUNT)
            {
                this.news[_local1] = new 2-n(_local1);
                _local1++;
            }
        }

        public function 0cO(_arg1:Vector.<BZ>):void{
            var _local3:BZ;
            var _local4:int;
            var _local5:int;
            this.q8();
            var _local2:Vector.<BZ> = new Vector.<BZ>();
            this.1Jk = new Vector.<BZ>(4, true);
            for each (_local3 in _arg1)
            {
                if (_local3.slot <= 3)
                {
                    _local2.push(_local3);
                } else
                {
                    _local4 = (_local3.slot - 4);
                    _local5 = (_local4 + 1);
                    this.1Jk[_local4] = _local3;
                    if (Parameters.data_[("newsTimestamp" + _local5)] != _local3.1Om)
                    {
                        Parameters.data_[("newsTimestamp" + _local5)] = _local3.1Om;
                        Parameters.data_[("hasNewsUpdate" + _local5)] = true;
                    }
                }
            }
            this.uQ(_local2);
            this.update.dispatch(this.news);
            this.it.dispatch();
        }

        public function ZT():Boolean{
            return (((((!((this.news[0] == null))) && (!((this.news[1] == null))))) && (!((this.news[2] == null)))));
        }

        public function 0FY():Boolean{
            var _local1:int;
            while (_local1 < 1Zd)
            {
                if (this.1Jk[_local1] == null)
                {
                    return (false);
                }
                _local1++;
            }
            return (true);
        }

        private function uQ(_arg1:Vector.<BZ>):void{
            var _local2:BZ;
            for each (_local2 in _arg1)
            {
                if (((this.17O(_local2)) && (this.15-(_local2))))
                {
                    this.0Nd(_local2);
                }
            }
        }

        private function 0Nd(_arg1:BZ):void{
            var _local2:uint = (_arg1.slot - 1);
            if (this.news[_local2])
            {
                _arg1 = this.1QA(this.news[_local2], _arg1);
            }
            this.news[_local2] = _arg1;
        }

        private function 1QA(_arg1:BZ, _arg2:BZ):BZ{
            return ((((_arg1.priority)<_arg2.priority) ? _arg1 : _arg2));
        }

        private function 17O(_arg1:BZ):Boolean{
            var _local2:Number = new Date().getTime();
            return ((((_arg1.14s < _local2)) && ((_local2 < _arg1.1Om))));
        }

        public function 0Ej():void{
            if (!this.0FY())
            {
                return;
            }
            this.04e = new Vector.<x5>(1Zd, true);
            var _local1:int;
            while (_local1 < 1Zd)
            {
                this.04e[_local1] = new x5((this.1Jk[_local1] as BZ).0iC, (this.1Jk[_local1] as BZ).linkDetail);
                _local1++;
            }
        }

        public function rh(_arg1:int):x5{
            if (((((((!((this.04e == null))) && ((_arg1 > 0)))) && ((_arg1 <= this.04e.length)))) && (!((this.04e[(_arg1 - 1)] == null)))))
            {
                return (this.04e[(_arg1 - 1)]);
            }
            return (new x5("No new information", "Please check back later."));
        }

        private function 15-(_arg1:BZ):Boolean{
            var _local2:String = this.account.Gc();
            return (!((_arg1.0Rv.indexOf(_local2) == -1)));
        }


    }
}//package 0sk

