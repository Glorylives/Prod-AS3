// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.0Xe

package 0QW{
    import 0QW.1KM;

    import com.company.assembleegameclient.map.0s6;
    import com.company.util.1N9;

    import 0QW.*;

    class 0Xe extends F8 {

        public function 0Xe(){
            var _local1:String;
            var _local3:int;
            var _local4:0Fp;
            super(1KM.1Xh);
            var _local2:Vector.<String> = new Vector.<String>();
            for (_local1 in 0s6.get)
            {
                _local2.push(_local1);
            }
            _local2.sort(1N9.0V3);
            for each (_local1 in _local2)
            {
                _local3 = 0s6.get[_local1];
                _local4 = new 0Fp(0s6.GD[_local3]);
                1An(_local4);
            }
        }

    }
}//package 0QW

