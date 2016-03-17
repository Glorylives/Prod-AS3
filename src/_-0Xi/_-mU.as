// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Xi.mU

package 0Xi{
    import 1f1.1Mq;
    import 0NI.11J;
    import 0rN.0Kw;
    import 1f1.JX;
    import 1f1.*;
    import 0rN.*;

    public class mU implements 1Mq, 0Kw {

        private var LZ:Class;
        private var 0q7:Array;
        private var BD:Array;
        private var _once:Boolean;
        private var 1op:1Mq;
        private var 0aX:11J;

        public function mU(_arg1:Class){
            this.0q7 = [];
            this.BD = [];
            super();
            this.LZ = _arg1;
        }

        public function get commandClass():Class{
            return (this.LZ);
        }

        public function get OQ():Array{
            return (this.0q7);
        }

        public function get 1kC():Array{
            return (this.BD);
        }

        public function 9G(... _args):0Kw{
            ((this.0aX) && (this.0aX.1LZ(_args)));
            this.0q7 = this.0q7.concat.apply(null, _args);
            return (this);
        }

        public function gg(... _args):0Kw{
            ((this.0aX) && (this.0aX.0zI(_args)));
            this.BD = this.BD.concat.apply(null, _args);
            return (this);
        }

        public function get 1-y():Boolean{
            return (this._once);
        }

        public function once(_arg1:Boolean=true):0Kw{
            ((((this.0aX) && (!(this._once)))) && (this.2-T((("You attempted to change an existing mapping for " + this.LZ) + " by setting once(). Please unmap first."))));
            this._once = _arg1;
            return (this);
        }

        public function get next():1Mq{
            return (this.1op);
        }

        public function set next(_arg1:1Mq):void{
            this.1op = _arg1;
        }

        private function 2-T(_arg1:String):void{
            throw (new JX(_arg1));
        }

        function 0gc():void{
            if (this.0aX)
            {
                this.0aX.0gc();
            } else
            {
                this.14U();
            };
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
                };
            };
        }

        private function 14U():void{
            this.0aX = new 11J(this.0q7.slice(), this.BD.slice(), null, this.LZ);
        }


    }
}//package 0Xi

