// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1JQ.04G

package 1JQ{
    import 0NI.11J;
    import rK.0sO;
    import 114.0lw;
    import rz.*;
    import 114.*;

    public class 04G implements 1cl, 0lw {

        private var 1WD:Boolean = false;
        private var 0aX:11J;
        private var _matcher:0sO;
        private var vK:Class;
        private var 0q7:Array;
        private var BD:Array;

        public function 04G(_arg1:0sO, _arg2:Class){
            this.0q7 = [];
            this.BD = [];
            super();
            this._matcher = _arg1;
            this.vK = _arg2;
        }

        public function get qU():0sO{
            return (this._matcher);
        }

        public function get 1Y1():Class{
            return (this.vK);
        }

        public function get OQ():Array{
            return (this.0q7);
        }

        public function get 1kC():Array{
            return (this.BD);
        }

        public function 9G(... _args):0lw{
            ((this.0aX) && (this.0aX.1LZ(_args)));
            this.0q7 = this.0q7.concat.apply(null, _args);
            return (this);
        }

        public function gg(... _args):0lw{
            ((this.0aX) && (this.0aX.0zI(_args)));
            this.BD = this.BD.concat.apply(null, _args);
            return (this);
        }

        function 0gc():void{
            if (this.0aX)
            {
                this.0aX.0gc();
            } else
            {
                this.14U();
            }
            this.0q7 = [];
            this.BD = [];
        }

        public function 1K9():void{
            if (!this.0aX)
            {
                this.14U();
            } else
            {
                if (!this.0aX.c3)
                {
                    this.0aX.1K9(this.0q7, this.BD);
                }
            }
        }

        private function 14U():void{
            this.0aX = new 11J(this.0q7.slice(), this.BD.slice(), this._matcher, this.vK);
        }


    }
}//package 1JQ

