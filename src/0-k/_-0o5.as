// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0-k.0o5

package 0-k{
    import flash.utils.ByteArray;
    import gY.AGALMiniAssembler;
    import flash.display3D.Context3DProgramType;

    public class 0o5 {

        private var 6z:ByteArray;

        public function 0o5(){
            var _local1:AGALMiniAssembler = new AGALMiniAssembler();
            _local1.0-u(Context3DProgramType.FRAGMENT, (((((("tex ft1, v0, fs0 <2d, repeat>\n" + "mul ft1.x, ft1.x, fc2.x\n") + "mul ft1.y, ft1.y, fc2.y\n") + "mul ft1.z, ft1.z, fc2.z\n") + "mul ft1.w, ft1.w, fc2.w\n") + "add ft1, ft1, fc3\n") + "mov oc, ft1"));
            this.6z = _local1.kr;
        }

        public function getVertexProgram():ByteArray{
            return (this.6z);
        }


    }
}//package 0-k

