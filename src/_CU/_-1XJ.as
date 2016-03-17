// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_CU.1XJ

package _CU{
    import 1uF.1Mf;
    import com.company.ui.eG;
    import AO.nz;

    public class 1XJ extends 1Mf {

        [Inject]
        public var view:eG;
        [Inject]
        public var model:nz;


        override public function initialize():void{
            var _local1:String = this.model.0sD().getName();
            this.view.9j(_local1);
        }


    }
}//package _CU

