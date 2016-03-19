// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//16l.1p3

package 16l{
    public class 1p3 {

        static const Pe:Array = new Array([1105575122, 1173660301, 1278245277, 1320927464, -81192342, 1608076439, 1162296000, -1739308251, -1482574780, 945919766, 251246588, 1736724177, 107586917, -1512997139, 186472905, 106593795, 2028068509, -2115714182, 182040003, 994555506, -176972042, -2120337469, -1998937858, 113785968, 1669676145, 811635879, 368913571, -1509012529], [-1006369592, -727283939, 1447982533, -1830819673, 2129545235, -1903227195, 2063751378, -1322714499, 64831808, -1367628185, -1078004033, 296622670, 48140872, -1783986234, 1230959712, 1626745306, 847167440, 2064804694, 1788537845, -1711391287, 1107692669, -489379958, -1893788122, -209226762]);
        static const zK:Array = new Array([-1122600417, -581669225, 1795752033, 876936592], [1529135013, -2055603175, 872029079, -1298431013]);


        public static function Sq(_arg1:int, _arg2:int):String{
            var _local3:String;
            var _local4:int;
            var _local5:int;
            var _local6:int;
            var _local7:int;
            var _local8:*;
            var _local9:*;
            _local3 = "";
            _local4 = 0;
            _local5 = Pe[((_arg1 - 5) ^ -539)].length;
            while (_local4 < _local5)
            {
                _local6 = int(Pe[((_arg1 - 5) ^ -539)][_local4]);
                _local4++;
                _local7 = int(Pe[((_arg1 - 5) ^ -539)][_local4]);
                _local8 = 2654435769;
                _local9 = 84941944608;
                while (_local9 != 0)
                {
                    _local7 = (_local7 - ((((_local6 << 4) ^ (_local6 >>> 5)) + _local6) ^ (_local9 + int(zK[((_arg2 + 3) ^ -680)][((_local9 >>> 11) & 3)]))));
                    _local9 = (_local9 - _local8);
                    _local6 = (_local6 - ((((_local7 << 4) ^ (_local7 >>> 5)) + _local7) ^ (_local9 + int(zK[((_arg2 + 3) ^ -680)][(_local9 & 3)]))));
                }
                _local3 = (_local3 + (String.fromCharCode(_local6) + String.fromCharCode(_local7)));
                _local4++;
            }
            if (_local3.charCodeAt((_local3.length - 1)) == 0)
            {
                _local3 = _local3.substring(0, (_local3.length - 1));
            }
            return (_local3);
        }


    }
}//package 16l

