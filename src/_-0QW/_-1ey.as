// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.1ey

package 0QW{
    import 0QW.1KM;
    import __AS3__.vec.Vector;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.util.1N9;
    import __AS3__.vec.*;
    import 0QW.*;

    class 1ey extends F8 {

        public function 1ey(){
            var _local1:String;
            var _local3:int;
            var _local4:XML;
            var _local5:0qE;
            super(1KM.ti);
            var _local2:Vector.<String> = new Vector.<String>();
            for (_local1 in ObjectLibrary.get)
            {
                _local2.push(_local1);
            }
            _local2.sort(1N9.0V3);
            for each (_local1 in _local2)
            {
                _local3 = ObjectLibrary.get[_local1];
                _local4 = ObjectLibrary.GD[_local3];
                if (!((((_local4.hasOwnProperty("Item")) || (_local4.hasOwnProperty("Player")))) || ((_local4.Class == "Projectile"))))
                {
                    _local5 = new 0qE(_local4);
                    1An(_local5);
                }
            }
        }

    }
}//package 0QW

