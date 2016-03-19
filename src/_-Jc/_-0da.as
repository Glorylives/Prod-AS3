// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Jc.0da

package Jc{
    import __AS3__.vec.Vector;
    import 0y3.Server;
    import WZ.0Te;
    import 0y3.1O7;
    import com.company.assembleegameclient.parameters.Parameters;
    import __AS3__.vec.*;
    import 0y3.*;

    public class 0da implements 0gx {

        private const servers:Vector.<Server> = new <Server>[];

        [Inject]
        public var model:0Te;
        private var ZH:Boolean;


        public function 1uI(_arg1:Vector.<Server>):void{
            var _local2:Server;
            this.servers.length = 0;
            for each (_local2 in _arg1)
            {
                this.servers.push(_local2);
            }
            this.ZH = false;
            this.servers.sort(this.15M);
        }

        public function 1Gj():Vector.<Server>{
            return (this.servers);
        }

        public function Zz():Server{
            var _local6:Server;
            var _local7:int;
            var _local8:Number;
            var _local1:Boolean = this.model.QH();
            var _local2:1O7 = this.model.0Gs();
            var _local3:Server;
            var _local4:Number = Number.MAX_VALUE;
            var _local5:int = int.MAX_VALUE;
            for each (_local6 in this.servers)
            {
                if (!((_local6.1zU()) && (!(_local1))))
                {
                    if (_local6.name == Parameters.data_.preferredServer)
                    {
                        return (_local6);
                    }
                    _local7 = _local6.priority();
                    _local8 = 1O7.distance(_local2, _local6.0z);
                    if ((((_local7 < _local5)) || ((((_local7 == _local5)) && ((_local8 < _local4))))))
                    {
                        _local3 = _local6;
                        _local4 = _local8;
                        _local5 = _local7;
                    }
                }
            }
            return (_local3);
        }

        public function 18M(_arg1:String):String{
            var _local2:Server;
            for each (_local2 in this.servers)
            {
                if (_local2.address == _arg1)
                {
                    return (_local2.name);
                }
            }
            return ("");
        }

        public function 1nF():Boolean{
            return ((this.servers.length > 0));
        }

        private function 15M(_arg1:Server, _arg2:Server):int{
            if (_arg1.name < _arg2.name)
            {
                return (((this.ZH) ? -1 : 1));
            }
            if (_arg1.name > _arg2.name)
            {
                return (((this.ZH) ? 1 : -1));
            }
            return (0);
        }


    }
}//package Jc

