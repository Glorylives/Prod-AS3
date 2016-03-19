// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1E8.WC

package 1E8{
    import _0OG._22M;
    import 0qs.*;

    public class WC implements 1EL {

        private var kf:_22M;
        private var c7:Class;
        private var handler:Object;


        public function setType(_arg1:Class):WC{
            this.c7 = _arg1;
            return (this);
        }

        public function setInjector(_arg1:_22M):WC{
            this.kf = _arg1;
            return (this);
        }

        public function getMethod():Function{
            return (((this.handler) ? this.handler.execute : this.26w()));
        }

        private function 26w():Function{
            if (!this.c7)
            {
                return (null);
            }
            this.handler = this.kf.getInstance(this.c7);
            return (this.handler.execute);
        }


    }
}//package 1E8

