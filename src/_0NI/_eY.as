// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.eY

package _0NI{
    import flash.utils.Dictionary;
    import _1u9._vu;
    import _1u9.SF;
    import _0Fr._dW;
    import _0Fr._1da;

    public class _eY {

        private const _1NG:String = _0cf.create(_eY);
        private const pe:Dictionary = new Dictionary(true);
        private const _1eF:_vu = new SF();

        private var _1Hl:_dW;
        private var _1Za:_1da;

        public function _eY(_arg1:_dW){
            this._1Hl = _arg1;
            this._1Za = this._1Hl._1uk(this);
        }

        public function hf(_arg1:Object):void{
            var _local2:Class;
            if ((_arg1 is Class))
            {
                ((this.pe[_arg1]) || (this.hf(new ((_arg1 as Class))())));
            } else
            {
                _local2 = this._1eF._09Y(_arg1);
                if (this.pe[_local2])
                {
                    return;
                }
                this._1Za.debug("Installing extension {0}", [_arg1]);
                this.pe[_local2] = true;
                _arg1.extend(this._1Hl);
            }
        }

        public function toString():String{
            return (this._1NG);
        }


    }
}//package 0NI

