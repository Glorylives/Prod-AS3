// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0k.0P4

package _0k{
    import _gY.AGALMiniAssembler;
    import flash.utils.ByteArray;
    import flash.display3D.Context3DProgramType;

    public class _0P4 extends AGALMiniAssembler {

        private var _6z:ByteArray;

        public function _0P4(){
            var _local1:AGALMiniAssembler = new AGALMiniAssembler();
            _local1._0u(Context3DProgramType.VERTEX, (("m44 op, va0, vc0\n" + "add vt1, va1, vc4\n") + "mov v0, vt1"));
            this._6z = _local1.kr;
        }

        public function getVertexProgram():ByteArray{
            return (this._6z);
        }


    }
}//package _0k

