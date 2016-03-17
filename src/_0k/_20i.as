// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0k.20i

package _0k{
import _gY.AGALMiniAssembler;

import flash.utils.ByteArray;
    import flash.display3D.Context3DProgramType;

    public class _20i {

        private var _6z:ByteArray;

        public function _20i(){
            var _local1:AGALMiniAssembler = new AGALMiniAssembler();
            _local1._0u(Context3DProgramType.FRAGMENT, (((((("tex ft1, v0, fs0 <2d>\n" + "mul ft1.x, ft1.x, fc2.x\n") + "mul ft1.y, ft1.y, fc2.y\n") + "mul ft1.z, ft1.z, fc2.z\n") + "mul ft1.w, ft1.w, fc2.w\n") + "add ft1, ft1, fc3\n") + "mov oc, ft1"));
            this._6z = _local1.kr;
        }

        public function getVertexProgram():ByteArray{
            return (this._6z);
        }


    }
}//package _0k

