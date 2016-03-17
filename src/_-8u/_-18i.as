// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//8u.18i

package 8u{
    import WZ.0Te;
    import tn.0ec;
    import kabam.rotmg.assets.services.0Vx;
    import __AS3__.vec.Vector;
    import tn.0dE;
    import tn.1iY;
    import com.company.util.ConversionUtil;
    import __AS3__.vec.*;

    public class 18i {

        [Inject]
        public var SP:0Te;
        [Inject]
        public var 1z8:0ec;
        [Inject]
        public var factory:0Vx;
        private var qH:String;
        private var legends:Vector.<1QY>;


        public function 1Jh(_arg1:XML):Vector.<1QY>{
            this.qH = this.SP.0YA();
            this.legends = new <1QY>[];
            this.Pz(_arg1.FameListElem, false);
            this.Pz(_arg1.MyFameListElem, true);
            return (this.legends);
        }

        private function Pz(_arg1:XMLList, _arg2:Boolean):void{
            var _local3:XML;
            var _local4:1QY;
            for each (_local3 in _arg1)
            {
                if (!this.0du(_local3))
                {
                    _local4 = this.1Vd(_local3);
                    _local4.0Qz = (_local3.@accountId == this.qH);
                    _local4.0dy = _arg2;
                    this.legends.push(_local4);
                };
            };
        }

        private function 0du(_arg1:XML):Boolean{
            var _local2:1QY;
            for each (_local2 in this.legends)
            {
                if ((((_local2.accountId == _arg1.@accountId)) && ((_local2.charId == _arg1.@charId))))
                {
                    return (true);
                };
            };
            return (false);
        }

        public function 1Vd(_arg1:XML):1QY{
            var _local2:int = _arg1.ObjectType;
            var _local3:int = _arg1.Texture;
            var _local4:0dE = this.1z8.7k(_local2);
            var _local5:1iY = _local4.0sP.15c(_local3);
            var _local6:int = ((_arg1.hasOwnProperty("Tex1")) ? _arg1.Tex1 : 0);
            var _local7:int = ((_arg1.hasOwnProperty("Tex2")) ? _arg1.Tex2 : 0);
            var _local8:1QY = new 1QY();
            _local8.accountId = _arg1.@accountId;
            _local8.charId = _arg1.@charId;
            _local8.name = _arg1.Name;
            _local8.FY = _arg1.TotalFame;
            _local8.character = this.factory.makeIcon(_local5.26-, 100, _local6, _local7);
            _local8.0Jt = _local4.Zm;
            _local8.1AM = ConversionUtil.0HU(_arg1.Equipment);
            return (_local8);
        }


    }
}//package 8u

