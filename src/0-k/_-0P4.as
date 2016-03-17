// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0-k.0P4

package 0-k{
    import gY.AGALMiniAssembler;
    import flash.utils.ByteArray;
    import flash.display3D.Context3DProgramType;

    public class 0P4 extends AGALMiniAssembler {

        private var 6z:ByteArray;

        public function 0P4(){
            var _local1:AGALMiniAssembler = new AGALMiniAssembler();
            _local1.0-u(Context3DProgramType.VERTEX, (("m44 op, va0, vc0\n" + "add vt1, va1, vc4\n") + "mov v0, vt1"));
            this.6z = _local1.kr;
        }

        public function getVertexProgram():ByteArray{
            return (this.6z);
        }


    }
}//package 0-k

