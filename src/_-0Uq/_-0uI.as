// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Uq.0uI

package 0Uq{
    import tn.0ec;
    import kabam.rotmg.assets.services.0Vx;
    import Wn.1ot;
    import Wn.0EB;
    import __AS3__.vec.Vector;
    import 5z.0tK;
    import tn.0dE;
    import tn.1iY;
    import com.company.util.ConversionUtil;
    import __AS3__.vec.*;

    public class 0uI {

        [Inject]
        public var 1z8:0ec;
        [Inject]
        public var factory:0Vx;
        [Inject]
        public var 15a:1ot;


        public function 1Od(_arg1:XMLList):Vector.<0EB>{
            var _local4:XML;
            var _local2:Vector.<0EB> = new Vector.<0EB>();
            var _local3:int = 1;
            for each (_local4 in _arg1)
            {
                _local2.push(this.1FS(_local4, _local3));
                _local3++;
            };
            _local2 = this.1YV(_local2);
            _local2 = this.2-O(_local2);
            return (_local2);
        }

        private function 2-O(_arg1:Vector.<0EB>):Vector.<0EB>{
            var _local3:Boolean;
            var _local4:Boolean;
            var _local5:0EB;
            var _local2:Vector.<0EB> = new Vector.<0EB>();
            if (this.15a.2Z())
            {
                _local3 = false;
                _local4 = false;
                for each (_local5 in _arg1)
                {
                    if (((!(_local3)) && (this.15a.1Ui.FL(_local5))))
                    {
                        this.15a.1Ui.rank = _local5.rank;
                        _local2.push(this.15a.1Ui);
                        _local3 = true;
                    };
                    if (_local5.1L3)
                    {
                        _local4 = true;
                    };
                    if (_local3)
                    {
                        _local5.rank++;
                    };
                    _local2.push(_local5);
                };
                if ((((((_local2.length < 20)) && (!(_local3)))) && (!(_local4))))
                {
                    this.15a.1Ui.rank = (_local2.length + 1);
                    _local2.push(this.15a.1Ui);
                };
            };
            return ((((_local2.length > 0)) ? _local2 : _arg1));
        }

        private function 1YV(_arg1:Vector.<0EB>):Vector.<0EB>{
            var _local3:Boolean;
            var _local4:0EB;
            var _local5:0EB;
            var _local2:int = -1;
            if (this.15a.2Z())
            {
                _local3 = false;
                _local4 = this.15a.1Ui;
                for each (_local5 in _arg1)
                {
                    if (((_local5.1L3) && (_local4.FL(_local5))))
                    {
                        _local2 = (_local5.rank - 1);
                        _local3 = true;
                    } else
                    {
                        if (_local3)
                        {
                            _local5.rank--;
                        };
                    };
                };
            };
            if (_local2 != -1)
            {
                _arg1.splice(_local2, 1);
            };
            return (_arg1);
        }

        private function 1FS(_arg1:XML, _arg2:int):0EB{
            var _local10:0tK;
            var _local11:XML;
            var _local3:0EB = new 0EB();
            _local3.1L3 = _arg1.hasOwnProperty("IsPersonalRecord");
            _local3.0e8 = _arg1.Time;
            _local3.name = _arg1.PlayData.CharacterData.Name;
            _local3.rank = ((_arg1.hasOwnProperty("Rank")) ? _arg1.Rank : _arg2);
            var _local4:int = _arg1.PlayData.CharacterData.Texture;
            var _local5:int = _arg1.PlayData.CharacterData.Class;
            var _local6:0dE = this.1z8.7k(_local5);
            var _local7:1iY = _local6.0sP.15c(_local4);
            var _local8:int = ((_arg1.PlayData.CharacterData.hasOwnProperty("Tex1")) ? _arg1.PlayData.CharacterData.Tex1 : 0);
            var _local9:int = ((_arg1.PlayData.CharacterData.hasOwnProperty("Tex2")) ? _arg1.PlayData.CharacterData.Tex2 : 0);
            _local3.1me = this.factory.makeIcon(_local7.26-, 100, _local8, _local9);
            _local3.1AM = ConversionUtil.0HU(_arg1.PlayData.CharacterData.Inventory);
            _local3.Zm = _local6.Zm;
            _local3.guildName = _arg1.PlayData.CharacterData.GuildName;
            _local3.ew = _arg1.PlayData.CharacterData.GuildRank;
            _local3.R = _arg1.WaveNumber;
            if (_arg1.PlayData.hasOwnProperty("Pet"))
            {
                _local10 = new 0tK();
                _local11 = new XML(_arg1.PlayData.Pet);
                _local10.apply(_local11);
                _local3.pet = _local10;
            };
            return (_local3);
        }


    }
}//package 0Uq

