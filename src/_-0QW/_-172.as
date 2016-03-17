// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.172

package 0QW{
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class 172 {

        public var 18A:Vector.<int>;
        public var 0hD:String = null;

        public function 172(){
            this.18A = new <int>[-1, -1, -1];
            super();
        }

        public function clone():172{
            var _local1:172 = new 172();
            _local1.18A = this.18A.concat();
            _local1.0hD = this.0hD;
            return (_local1);
        }

        public function isEmpty():Boolean{
            var _local1:int;
            while (_local1 < 1KM.bp)
            {
                if (this.18A[_local1] != -1)
                {
                    return (false);
                };
                _local1++;
            };
            return (true);
        }


    }
}//package 0QW

