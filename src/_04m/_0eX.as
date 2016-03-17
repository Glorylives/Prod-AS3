// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//04m.0eX

package _04m{
    import flash.display3D.VertexBuffer3D;

    public class _0eX {

        private var _2u:VertexBuffer3D;
        protected var data:Vector.<Number>;

        public function _0eX(_arg1:VertexBuffer3D){
            this._2u = _arg1;
        }

        public function uploadFromVector(_arg1:Vector.<Number>, _arg2:int, _arg3:int):void{
            this.data = _arg1;
            this._2u.uploadFromVector(_arg1, _arg2, _arg3);
        }

        public function RQ():VertexBuffer3D{
            return (this._2u);
        }

        public function _272():Vector.<Number>{
            return (this.data);
        }


    }
}//package 04m

