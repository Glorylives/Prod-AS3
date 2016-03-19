// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.25b

package 1Np{
    import com.company.assembleegameclient.objects.27S;
    import 0W4.Zv;
    import com.company.assembleegameclient.objects.1J1;

    public class 25b {

        public var id_:String;
        public var 1lr:27S;
        public var size_:int = 100;
        public var z_:Number = 0;
        public var duration_:Number = 0;
        public var en:Zv = null;

        public function 25b(_arg1:XML){
            this.id_ = _arg1.@id;
            this.1lr = new 1J1(_arg1);
            if (_arg1.hasOwnProperty("Size"))
            {
                this.size_ = Number(_arg1.Size);
            }
            if (_arg1.hasOwnProperty("Z"))
            {
                this.z_ = Number(_arg1.Z);
            }
            if (_arg1.hasOwnProperty("Duration"))
            {
                this.duration_ = Number(_arg1.Duration);
            }
            if (_arg1.hasOwnProperty("Animation"))
            {
                this.en = new Zv(_arg1);
            }
        }

    }
}//package 1Np

