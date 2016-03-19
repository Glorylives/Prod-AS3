// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//rK.0OE

package rK{
    import __AS3__.vec.Vector;
    import flash.utils.getQualifiedClassName;
    import __AS3__.vec.*;

    public class 0OE implements 0sO {

        protected var 7E:Vector.<Class>;
        protected var 1Rv:Vector.<Class>;
        protected var 0A5:String;
        protected var 0Hl:Vector.<Class>;

        public function 0OE(_arg1:Vector.<Class>, _arg2:Vector.<Class>, _arg3:Vector.<Class>){
            if (((((!(_arg1)) || (!(_arg2)))) || (!(_arg3))))
            {
                throw (ArgumentError("TypeFilter parameters can not be null"));
            }
            this.7E = _arg1;
            this.1Rv = _arg2;
            this.0Hl = _arg3;
        }

        public function get 26j():Vector.<Class>{
            return (this.7E);
        }

        public function get Rl():Vector.<Class>{
            return (this.1Rv);
        }

        public function get Wv():String{
            return ((this.0A5 = ((this.0A5) || (this.0OF()))));
        }

        public function get 0UO():Vector.<Class>{
            return (this.0Hl);
        }

        public function matches(_arg1):Boolean{
            var _local2:uint = this.7E.length;
            while (_local2--)
            {
                if (!(_arg1 is this.7E[_local2]))
                {
                    return (false);
                }
            }
            _local2 = this.0Hl.length;
            while (_local2--)
            {
                if ((_arg1 is this.0Hl[_local2]))
                {
                    return (false);
                }
            }
            if ((((this.1Rv.length == 0)) && ((((this.7E.length > 0)) || ((this.0Hl.length > 0))))))
            {
                return (true);
            }
            _local2 = this.1Rv.length;
            while (_local2--)
            {
                if ((_arg1 is this.1Rv[_local2]))
                {
                    return (true);
                }
            }
            return (false);
        }

        protected function 0Ag(_arg1:Vector.<Class>):Vector.<String>{
            var _local2:String;
            var _local3:Vector.<String> = new <String>[];
            var _local4:uint = _arg1.length;
            var _local5:uint;
            while (_local5 < _local4)
            {
                _local2 = getQualifiedClassName(_arg1[_local5]);
                _local3[_local3.length] = _local2;
                _local5++;
            }
            _local3.sort(this.tT);
            return (_local3);
        }

        protected function 0OF():String{
            var _local1:Vector.<String> = this.0Ag(this.26j);
            var _local2:Vector.<String> = this.0Ag(this.Rl);
            var _local3:Vector.<String> = this.0Ag(this.0UO);
            return (((((("all _of: " + _local1.toString()) + ", any _of: ") + _local2.toString()) + ", none _of: ") + _local3.toString()));
        }

        protected function tT(_arg1:String, _arg2:String):int{
            if (_arg1 < _arg2)
            {
                return (1);
            }
            return (-1);
        }


    }
}//package rK

