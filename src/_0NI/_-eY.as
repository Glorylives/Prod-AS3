// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.eY

package 0NI{
    import flash.utils.Dictionary;
    import _1u9._vu;
    import _1u9.SF;
    import 0Fr.dW;
    import 0Fr.1da;

    public class eY {

        private const 1NG:String = 0cf.create(eY);
        private const pe:Dictionary = new Dictionary(true);
        private const 1eF:_vu = new SF();

        private var 1Hl:dW;
        private var 1Za:1da;

        public function eY(_arg1:dW){
            this.1Hl = _arg1;
            this.1Za = this.1Hl.1uk(this);
        }

        public function hf(_arg1:Object):void{
            var _local2:Class;
            if ((_arg1 is Class))
            {
                ((this.pe[_arg1]) || (this.hf(new ((_arg1 as Class))())));
            } else
            {
                _local2 = this.1eF.09Y(_arg1);
                if (this.pe[_local2])
                {
                    return;
                }
                this.1Za.debug("Installing extension {0}", [_arg1]);
                this.pe[_local2] = true;
                _arg1.extend(this.1Hl);
            }
        }

        public function toString():String{
            return (this.1NG);
        }


    }
}//package 0NI

