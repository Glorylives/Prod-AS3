// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0W4.0QV

package _0W4{
    import com.company.assembleegameclient.objects._27S;
    import com.company.assembleegameclient.objects._1J1;

    public class _0QV {

        public var time_:int;
        public var _1lr:_27S;

        public function _0QV(_arg1:XML){
            this.time_ = int((Number(_arg1.@time) * 1000));
            this._1lr = new _1J1(_arg1);
        }

    }
}//package 0W4

