// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1r4.gr

package 1r4{
    import 5z.zL;
    import com.company.assembleegameclient.game.nx;
    import g0.StatData;
    import 5z.25U;
    import 5z.0tK;
    import com.company.assembleegameclient.objects.Pet;
    import __AS3__.vec.Vector;
    import com.company.assembleegameclient.util.ConditionEffect;

    public class gr {

        [Inject]
        public var 1G5:zL;
        [Inject]
        public var ja:nx;


        public function GC(_arg1:Pet, _arg2:Vector.<StatData>):void{
            var _local4:StatData;
            var _local5:25U;
            var _local6:*;
            var _local3:0tK = ((_arg1.vo) || (this.0kA(_arg1, _arg2)));
            if (_local3 == null)
            {
                return;
            };
            for each (_local4 in _arg2)
            {
                _local6 = _local4.1gE;
                if (_local4.0tC == StatData.NU)
                {
                    _local3.1es(_local6);
                };
                switch (_local4.0tC)
                {
                    case StatData.0Eu:
                        _local3.setID(_local6);
                        break;
                    case StatData.lA:
                        _local3.setName(_local4.DI);
                        break;
                    case StatData.P3:
                        _local3.setType(_local6);
                        break;
                    case StatData.209:
                        _local3.0xL(_local6);
                        break;
                    case StatData.Vi:
                        _local3.1cx(_local6);
                        break;
                    case StatData.0ab:
                        break;
                    case StatData.0JU:
                        _local5 = _local3.0S1[0];
                        _local5.points = _local6;
                        break;
                    case StatData.7C:
                        _local5 = _local3.0S1[1];
                        _local5.points = _local6;
                        break;
                    case StatData.217:
                        _local5 = _local3.0S1[2];
                        _local5.points = _local6;
                        break;
                    case StatData.0uK:
                        _local5 = _local3.0S1[0];
                        _local5.level = _local6;
                        break;
                    case StatData.x6:
                        _local5 = _local3.0S1[1];
                        _local5.level = _local6;
                        break;
                    case StatData.1KK:
                        _local5 = _local3.0S1[2];
                        _local5.level = _local6;
                        break;
                    case StatData.j0:
                        _local5 = _local3.0S1[0];
                        _local5.type = _local6;
                        break;
                    case StatData.22o:
                        _local5 = _local3.0S1[1];
                        _local5.type = _local6;
                        break;
                    case StatData.17K:
                        _local5 = _local3.0S1[2];
                        _local5.type = _local6;
                        break;
                };
                if (_local5)
                {
                    _local5.1iq.dispatch(_local5);
                };
            };
        }

        private function 0kA(_arg1:Pet, _arg2:Vector.<StatData>):0tK{
            var _local3:StatData;
            var _local4:0tK;
            for each (_local3 in _arg2)
            {
                if (_local3.0tC == StatData.0Eu)
                {
                    _local4 = this.1G5.0Gr(_local3.1gE);
                    _arg1.vo = ((_local4) ? _local4 : ((this.ja.map.isPetYard) ? this.1G5.getPetVO(_local3.1gE) : new 0tK(_local3.1gE)));
                    return (_arg1.vo);
                };
            };
            return (null);
        }

        public function Xz(_arg1:Pet, _arg2:Vector.<StatData>):void{
            var _local3:StatData;
            var _local4:*;
            for each (_local3 in _arg2)
            {
                _local4 = _local3.1gE;
                if (_local3.0tC == StatData.NU)
                {
                    _arg1.1es(_local4);
                };
                if (_local3.0tC == StatData.set )
                {
                    _arg1.size_ = _local4;
                };
                if (_local3.0tC == StatData.O1)
                {
                    _arg1.condition_[ConditionEffect.26x] = _local4;
                };
            };
        }


    }
}//package 1r4

