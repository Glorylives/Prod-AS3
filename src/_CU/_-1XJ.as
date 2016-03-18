// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_CU.1XJ

package _CU{
    import 1uF.1Mf;
    import com.company.ui._eG;
    import AO._nz;

    public class 1XJ extends 1Mf {

        [Inject]
        public var view:_eG;
        [Inject]
        public var model:_nz;


        override public function initialize():void{
            var _local1:String = this.model.0sD().getName();
            this.view.9j(_local1);
        }


    }
}//package _CU

