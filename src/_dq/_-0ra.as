// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//dq.0ra

package dq{
    import WZ.0Te;
    import 0eZ.5l;
    import 0wP.kM;
    import 0Fr.*;

    public class 0ra implements 23H {

        [Inject]
        public var SP:0Te;
        [Inject]
        public var 1yT:5l;
        [Inject]
        public var ww:kM;


        public function approve():Boolean{
            var _local1 = (this.SP.0ce() >= this.ww.price);
            if (!_local1)
            {
                this.1yT.dispatch();
            };
            return (_local1);
        }


    }
}//package dq

