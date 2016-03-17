// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.XMLEffect

package 1Np{
    import com.company.assembleegameclient.objects.GameObject;

    public class XMLEffect extends 0F- {

        private var go_:GameObject;
        private var 1JI:25b;
        private var 23p:Number;
        private var 178:Number;

        public function XMLEffect(_arg1:GameObject, _arg2:lW){
            this.go_ = _arg1;
            this.1JI = 0jV.0Ri[_arg2.particle];
            this.23p = _arg2.cooldown;
            this.178 = 0;
        }

        override public function update(_arg1:int, _arg2:int):Boolean{
            if (this.go_.map_ == null)
            {
                return (false);
            };
            var _local3:Number = (_arg2 / 1000);
            this.178 = (this.178 - _local3);
            if (this.178 >= 0)
            {
                return (true);
            };
            this.178 = this.23p;
            map_.addObj(new yB(this.1JI), this.go_.x_, this.go_.y_);
            return (true);
        }


    }
}//package 1Np

