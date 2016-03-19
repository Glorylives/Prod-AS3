// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0zL.0Vu

package 0zL{
    import 1cI.1iz;
    import __AS3__.vec.Vector;
    import 0r6.1a2;
    import _0OG._22M;
    import 0Fr.1da;
    import 08k.0Vn;
    import 08k.Dg;
    import 1cI.9f;
    import __AS3__.vec.*;

    public class 0Vu extends 1iz {

        public static const 1Bm:int = int.MAX_VALUE;//2147483647

        private const list:Vector.<1a2> = new <1a2>[];

        [Inject]
        public var kf:_22M;
        [Inject]
        public var u3:1da;
        private var index:int = 0;


        public function 0Wi(_arg1:Class, _arg2:int=0):void{
            var _local3:0Vn = new 0Vn();
            _local3.kf = this.kf;
            _local3.Uh = _arg1;
            _local3.priority = _arg2;
            this.list.push(_local3);
        }

        public function 10(_arg1:Class, _arg2:int=0):void{
            var _local3:Dg = new Dg();
            _local3.kf = this.kf;
            _local3.13f = _arg1;
            _local3.priority = _arg2;
            this.list.push(_local3);
        }

        override protected function startTask():void{
            this.list.sort(this.1z7);
            this.index = 0;
            this.lv();
        }

        private function 1z7(_arg1:1a2, _arg2:1a2):int{
            return ((_arg1.Hp() - _arg2.Hp()));
        }

        private function lv():void{
            if (this.0qm())
            {
                this.1MU();
            } else
            {
                1d5(true);
            }
        }

        private function 0qm():Boolean{
            return ((this.index < this.list.length));
        }

        private function 1MU():void{
            var _local1:9f = this.list[this.index++].make();
            _local1.lastly.addOnce(this.0kG);
            this.u3.info("StartupSequence start:{0}", [_local1]);
            _local1.start();
        }

        private function 0kG(_arg1:9f, _arg2:Boolean, _arg3:String):void{
            this.u3.info("StartupSequence finish:{0} (isOK: {1})", [_arg1, _arg2]);
            if (_arg2)
            {
                this.lv();
            } else
            {
                1d5(false, _arg3);
            }
        }


    }
}//package 0zL

