// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0-O.0E8

package 0-O{
    import 0y3.0gx;
    import 0Kp.0GW;

    import flash.utils.Dictionary;
    import 0y3.Server;
    import _Jy._1HZ;
    import _04_._1JZ;
    import _0OG._22M;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.util.09g;
    import com.company.assembleegameclient.parameters.Parameters;


    public class 0E8 {

        [Inject]
        public var 03t:0gx;
        public var 1LU:0GW;
        private var 0fb:Vector.<181>;
        private var HC:Vector.<181>;
        private var 02y:Dictionary;
        private var 1bg:Dictionary;
        private var 1GD:Boolean;
        private var 14r:int;
        private var 44:int;
        private var 1bV:Boolean;
        private var 0ri:Boolean;
        private var xr:Dictionary;
        private var RC:Server;
        public var MB:String;
        public var jz:_1HZ;

        public function 0E8(){
            this.jz = new _1HZ(Boolean);
            super();
            this.14r = 0;
            this.44 = 0;
            this.44 = 0;
            this.02y = new Dictionary(true);
            this.0fb = new Vector.<181>();
            this.HC = new Vector.<181>();
            this.1GD = false;
            this.1KP();
        }

        public function 0Ow(_arg1:Server):void{
            this.RC = _arg1;
        }

        public function Xm():String{
            var _local1:String = ((this.RC) ? this.RC.name : "");
            return (_local1);
        }

        public function 1KP():void{
            if (this.1GD)
            {
                return;
            }
            this.1GD = true;
            var _local1:_22M = _1JZ.0JF();
            this.1LU = _local1.getInstance(0GW);
            this.1TH(21H.tc(21H.1PI), this.qr);
        }

        private function 1TH(_arg1:String, _arg2:Function):void{
            this.1LU.1Oi = _arg1;
            this.1LU.1uB.addOnce(_arg2);
            this.1LU.start();
        }

        private function qr(_arg1:0GW, _arg2:Boolean, _arg3:String=""):void{
            if (_arg2)
            {
                this.1ej(_arg1.xml);
            }
            this.1bV = _arg2;
            this.MB = _arg3;
            _arg1.reset();
            this.1TH(21H.tc(21H.08j), this.1jk);
        }

        private function 1jk(_arg1:0GW, _arg2:Boolean, _arg3:String=""):void{
            if (_arg2)
            {
                this.PR(_arg1.xml);
            }
            this.0ri = _arg2;
            this.MB = _arg3;
            _arg1.reset();
            this.1GD = false;
            this.jz.dispatch(((this.1bV) && (this.0ri)));
        }

        public function 1ej(_arg1:XML):void{
            var _local2:String;
            var _local3:String;
            var _local4:String;
            var _local5:181;
            var _local6:XML;
            this.0fb.length = 0;
            this.HC.length = 0;
            for each (_local6 in _arg1.Account)
            {
                _local2 = _local6.Name;
                _local5 = (((this.02y[_local2])!=null) ? (this.02y[_local2].vo as 181) : new 181(Player.1KR(_local2, _local6.Character[0])));
                if (_local6.hasOwnProperty("Online"))
                {
                    _local4 = String(_local6.Online);
                    _local3 = this.132()[_local4];
                    _local5.Vm(_local3, _local4);
                    this.0fb.push(_local5);
                    this.02y[_local5.getName()] = {
                        vo:_local5,
                        list:this.0fb
                    }
                } else
                {
                    _local5.11z();
                    this.HC.push(_local5);
                    this.02y[_local5.getName()] = {
                        vo:_local5,
                        list:this.HC
                    }
                }
            }
            this.0fb.sort(this.0Y0);
            this.HC.sort(this.0Y0);
            this.14r = (this.0fb.length + this.HC.length);
        }

        public function PR(_arg1:XML):void{
            var _local2:String;
            var _local3:XML;
            var _local4:Player;
            this.1bg = new Dictionary(true);
            this.44 = 0;
            for each (_local3 in _arg1.Account)
            {
                if (this.EY(int(_local3.Character[0].ObjectType), int(_local3.Character[0].CurrentFame), _local3.Stats[0]))
                {
                    _local2 = _local3.Name;
                    _local4 = Player.1KR(_local2, _local3.Character[0]);
                    this.1bg[_local2] = new 181(_local4);
                    this.44++;
                }
            }
        }

        public function 19L(_arg1:String):Boolean{
            return (!((this.02y[_arg1] == null)));
        }

        public function 0Xt(_arg1:String, _arg2:Player):void{
            var _local3:Object;
            var _local4:181;
            if (this.19L(_arg1))
            {
                _local3 = this.02y[_arg1];
                _local4 = (_local3.vo as 181);
                _local4.0bG(_arg2);
            }
        }

        public function UW(_arg1:String):Vector.<181>{
            var _local3:181;
            var _local2:RegExp = new RegExp(_arg1, "gix");
            var _local4:Vector.<181> = new Vector.<181>();
            var _local5:int;
            while (_local5 < this.0fb.length)
            {
                _local3 = this.0fb[_local5];
                if (_local3.getName().search(_local2) >= 0)
                {
                    _local4.push(_local3);
                }
                _local5++;
            }
            _local5 = 0;
            while (_local5 < this.HC.length)
            {
                _local3 = this.HC[_local5];
                if (_local3.getName().search(_local2) >= 0)
                {
                    _local4.push(_local3);
                }
                _local5++;
            }
            return (_local4);
        }

        public function hF():Boolean{
            return ((this.14r >= 21H.1B));
        }

        public function 0X5():Vector.<181>{
            return (this.0fb.concat(this.HC));
        }

        public function 0X2():Vector.<181>{
            var _local2:181;
            var _local1:* = new Vector.<181>();
            for each (_local2 in this.1bg)
            {
                _local1.push(_local2);
            }
            _local1.sort(this.0Y0);
            return (_local1);
        }

        public function 1Md(_arg1:String):Boolean{
            var _local2:Object = this.02y[_arg1];
            if (_local2)
            {
                this.dU(_local2.list, _arg1);
                this.02y[_arg1] = null;
                delete this.02y[_arg1];
                return (true);
            }
            return (false);
        }

        public function 0D(_arg1:String):Boolean{
            if (this.1bg[_arg1] != null)
            {
                this.1bg[_arg1] = null;
                delete this.1bg[_arg1];
                return (true);
            }
            return (false);
        }

        private function dU(_arg1:Vector.<181>, _arg2:String){
            var _local3:181;
            var _local4:int;
            while (_local4 < _arg1.length)
            {
                _local3 = _arg1[_local4];
                if (_local3.getName() == _arg2)
                {
                    _arg1.slice(_local4, 1);
                    return;
                }
                _local4++;
            }
        }

        private function 0Y0(_arg1:181, _arg2:181):Number{
            if (_arg1.getName() < _arg2.getName())
            {
                return (-1);
            }
            if (_arg1.getName() > _arg2.getName())
            {
                return (1);
            }
            return (0);
        }

        private function 132():Dictionary{
            var _local2:Server;
            if (this.xr)
            {
                return (this.xr);
            }
            var _local1:Vector.<Server> = this.03t.1Gj();
            this.xr = new Dictionary(true);
            for each (_local2 in _local1)
            {
                this.xr[_local2.address] = _local2.name;
            }
            return (this.xr);
        }

        private function EY(_arg1:int, _arg2:int, _arg3:XML):Boolean{
            return ((09g.1Hg(_arg1, _arg2, _arg3) >= Parameters.data_.friendStarRequirement));
        }


    }
}//package 0-O

