// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.hurlant.crypto.rsa.RSAKey

package com.hurlant.crypto.rsa{
    import com.hurlant.math.1OU;
    import com.hurlant.crypto.prng.Random;
    import flash.utils.ByteArray;
    import com.hurlant.util.Memory;
    import com.hurlant.crypto.tls.TLSError;

    public class RSAKey {

        public var e:int;
        public var n:1OU;
        public var d:1OU;
        public var p:1OU;
        public var q:1OU;
        public var dmp1:1OU;
        public var dmq1:1OU;
        public var coeff:1OU;
        protected var canDecrypt:Boolean;
        protected var canEncrypt:Boolean;

        public function RSAKey(_arg1:1OU, _arg2:int, _arg3:1OU=null, _arg4:1OU=null, _arg5:1OU=null, _arg6:1OU=null, _arg7:1OU=null, _arg8:1OU=null){
            this.n = _arg1;
            this.e = _arg2;
            this.d = _arg3;
            this.p = _arg4;
            this.q = _arg5;
            this.dmp1 = _arg6;
            this.dmq1 = _arg7;
            this.coeff = _arg8;
            this.canEncrypt = ((!((this.n == null))) && (!((this.e == 0))));
            this.canDecrypt = ((this.canEncrypt) && (!((this.d == null))));
        }

        public static function parsePublicKey(_arg1:String, _arg2:String):RSAKey{
            return (new RSAKey(new 1OU(_arg1, 16, true), parseInt(_arg2, 16)));
        }

        public static function parsePrivateKey(_arg1:String, _arg2:String, _arg3:String, _arg4:String=null, _arg5:String=null, _arg6:String=null, _arg7:String=null, _arg8:String=null):RSAKey{
            if (_arg4 == null)
            {
                return (new RSAKey(new 1OU(_arg1, 16, true), parseInt(_arg2, 16), new 1OU(_arg3, 16, true)));
            };
            return (new RSAKey(new 1OU(_arg1, 16, true), parseInt(_arg2, 16), new 1OU(_arg3, 16, true), new 1OU(_arg4, 16, true), new 1OU(_arg5, 16, true), new 1OU(_arg6, 16, true), new 1OU(_arg7, 16, true), new 1OU(_arg8, 16, true)));
        }

        public static function generate(_arg1:uint, _arg2:String):RSAKey{
            var _local7:1OU;
            var _local8:1OU;
            var _local9:1OU;
            var _local10:1OU;
            var _local3:Random = new Random();
            var _local4:uint = (_arg1 >> 1);
            var _local5:RSAKey = new RSAKey(null, 0, null);
            _local5.e = parseInt(_arg2, 16);
            var _local6:1OU = new 1OU(_arg2, 16, true);
            while (true)
            {
                while (true)
                {
                    _local5.p = bigRandom((_arg1 - _local4), _local3);
                    if ((((_local5.p.P0(1OU.1nf).1PJ(_local6).0-6(1OU.1nf) == 0)) && (_local5.p.1Wq(10)))) break;
                };
                while (true)
                {
                    _local5.q = bigRandom(_local4, _local3);
                    if ((((_local5.q.P0(1OU.1nf).1PJ(_local6).0-6(1OU.1nf) == 0)) && (_local5.q.1Wq(10)))) break;
                };
                if (_local5.p.0-6(_local5.q) <= 0)
                {
                    _local10 = _local5.p;
                    _local5.p = _local5.q;
                    _local5.q = _local10;
                };
                _local7 = _local5.p.P0(1OU.1nf);
                _local8 = _local5.q.P0(1OU.1nf);
                _local9 = _local7.0QQ(_local8);
                if (_local9.1PJ(_local6).0-6(1OU.1nf) == 0)
                {
                    _local5.n = _local5.p.0QQ(_local5.q);
                    _local5.d = _local6.1fN(_local9);
                    _local5.dmp1 = _local5.d.MR(_local7);
                    _local5.dmq1 = _local5.d.MR(_local8);
                    _local5.coeff = _local5.q.1fN(_local5.p);
                    break;
                };
            };
            return (_local5);
        }

        protected static function bigRandom(_arg1:int, _arg2:Random):1OU{
            if (_arg1 < 2)
            {
                return (1OU.d4(1));
            };
            var _local3:ByteArray = new ByteArray();
            _arg2.nextBytes(_local3, (_arg1 >> 3));
            _local3.position = 0;
            var _local4:1OU = new 1OU(_local3, 0, true);
            _local4.1hY(_arg1, 1);
            return (_local4);
        }


        public function getBlockSize():uint{
            return (((this.n.Rj() + 7) / 8));
        }

        public function dispose():void{
            this.e = 0;
            this.n.dispose();
            this.n = null;
            Memory.gc();
        }

        public function encrypt(_arg1:ByteArray, _arg2:ByteArray, _arg3:uint, _arg4:Function=null):void{
            this._encrypt(this.doPublic, _arg1, _arg2, _arg3, _arg4, 2);
        }

        public function decrypt(_arg1:ByteArray, _arg2:ByteArray, _arg3:uint, _arg4:Function=null):void{
            this._decrypt(this.doPrivate2, _arg1, _arg2, _arg3, _arg4, 2);
        }

        public function sign(_arg1:ByteArray, _arg2:ByteArray, _arg3:uint, _arg4:Function=null):void{
            this._encrypt(this.doPrivate2, _arg1, _arg2, _arg3, _arg4, 1);
        }

        public function verify(_arg1:ByteArray, _arg2:ByteArray, _arg3:uint, _arg4:Function=null):void{
            this._decrypt(this.doPublic, _arg1, _arg2, _arg3, _arg4, 1);
        }

        private function _encrypt(_arg1:Function, _arg2:ByteArray, _arg3:ByteArray, _arg4:uint, _arg5:Function, _arg6:int):void{
            var _local9:1OU;
            var _local10:1OU;
            if (_arg5 == null)
            {
                _arg5 = this.pkcs1pad;
            };
            if (_arg2.position >= _arg2.length)
            {
                _arg2.position = 0;
            };
            var _local7:uint = this.getBlockSize();
            var _local8:int = (_arg2.position + _arg4);
            while (_arg2.position < _local8)
            {
                _local9 = new 1OU(_arg5(_arg2, _local8, _local7, _arg6), _local7, true);
                _local10 = _arg1(_local9);
                _local10.toArray(_arg3);
            };
        }

        private function _decrypt(_arg1:Function, _arg2:ByteArray, _arg3:ByteArray, _arg4:uint, _arg5:Function, _arg6:int):void{
            var _local9:1OU;
            var _local10:1OU;
            var _local11:ByteArray;
            if (_arg5 == null)
            {
                _arg5 = this.pkcs1unpad;
            };
            if (_arg2.position >= _arg2.length)
            {
                _arg2.position = 0;
            };
            var _local7:uint = this.getBlockSize();
            var _local8:int = (_arg2.position + _arg4);
            while (_arg2.position < _local8)
            {
                _local9 = new 1OU(_arg2, _local7, true);
                _local10 = _arg1(_local9);
                _local11 = _arg5(_local10, _local7, _arg6);
                if (_local11 == null)
                {
                    throw (new TLSError("Decrypt error - padding function returned null!", TLSError.decode_error));
                };
                _arg3.writeBytes(_local11);
            };
        }

        private function pkcs1pad(_arg1:ByteArray, _arg2:int, _arg3:uint, _arg4:uint=2):ByteArray{
            var _local8:Random;
            var _local9:int;
            var _local5:ByteArray = new ByteArray();
            var _local6:uint = _arg1.position;
            _arg2 = Math.min(_arg2, _arg1.length, ((_local6 + _arg3) - 11));
            _arg1.position = _arg2;
            var _local7:int = (_arg2 - 1);
            while ((((_local7 >= _local6)) && ((_arg3 > 11))))
            {
                var _local10 = --_arg3;
                _local5[_local10] = _arg1[_local7--];
            };
            _local10 = --_arg3;
            _local5[_local10] = 0;
            if (_arg4 == 2)
            {
                _local8 = new Random();
                _local9 = 0;
                while (_arg3 > 2)
                {
                    do 
                    {
                        _local9 = _local8.nextByte();
                    } while (_local9 == 0);
                    var _local11 = --_arg3;
                    _local5[_local11] = _local9;
                };
            } else
            {
                while (_arg3 > 2)
                {
                    _local11 = --_arg3;
                    _local5[_local11] = 0xFF;
                };
            };
            _local11 = --_arg3;
            _local5[_local11] = _arg4;
            var _local12 = --_arg3;
            _local5[_local12] = 0;
            return (_local5);
        }

        private function pkcs1unpad(_arg1:1OU, _arg2:uint, _arg3:uint=2):ByteArray{
            var _local4:ByteArray = _arg1.us();
            var _local5:ByteArray = new ByteArray();
            _local4.position = 0;
            var _local6:int;
            while ((((_local6 < _local4.length)) && ((_local4[_local6] == 0))))
            {
                _local6++;
            };
            if (((!(((_local4.length - _local6) == (_arg2 - 1)))) || (!((_local4[_local6] == _arg3)))))
            {
                trace(((((("PKCS#1 unpad: i=" + _local6) + ", expected b[i]==") + _arg3) + ", got b[i]=") + _local4[_local6].toString(16)));
                return (null);
            };
            _local6++;
            while (_local4[_local6] != 0)
            {
                ++_local6;
                if (_local6 >= _local4.length)
                {
                    trace((((("PKCS#1 unpad: i=" + _local6) + ", b[i-1]!=0 (=") + _local4[(_local6 - 1)].toString(16)) + ")"));
                    return (null);
                };
            };
            while (++_local6 < _local4.length)
            {
                _local5.writeByte(_local4[_local6]);
            };
            _local5.position = 0;
            return (_local5);
        }

        public function rawpad(_arg1:ByteArray, _arg2:int, _arg3:uint, _arg4:uint=0):ByteArray{
            return (_arg1);
        }

        public function rawunpad(_arg1:1OU, _arg2:uint, _arg3:uint=0):ByteArray{
            return (_arg1.us());
        }

        public function toString():String{
            return ("rsa");
        }

        public function dump():String{
            var _local1 = ((((("N=" + this.n.toString(16)) + "\n") + "E=") + this.e.toString(16)) + "\n");
            if (this.canDecrypt)
            {
                _local1 = (_local1 + (("D=" + this.d.toString(16)) + "\n"));
                if (((!((this.p == null))) && (!((this.q == null)))))
                {
                    _local1 = (_local1 + (("P=" + this.p.toString(16)) + "\n"));
                    _local1 = (_local1 + (("Q=" + this.q.toString(16)) + "\n"));
                    _local1 = (_local1 + (("DMP1=" + this.dmp1.toString(16)) + "\n"));
                    _local1 = (_local1 + (("DMQ1=" + this.dmq1.toString(16)) + "\n"));
                    _local1 = (_local1 + (("IQMP=" + this.coeff.toString(16)) + "\n"));
                };
            };
            return (_local1);
        }

        protected function doPublic(_arg1:1OU):1OU{
            return (_arg1.wW(this.e, this.n));
        }

        protected function doPrivate2(_arg1:1OU):1OU{
            if ((((this.p == null)) && ((this.q == null))))
            {
                return (_arg1.XC(this.d, this.n));
            };
            var _local2:1OU = _arg1.MR(this.p).XC(this.dmp1, this.p);
            var _local3:1OU = _arg1.MR(this.q).XC(this.dmq1, this.q);
            while (_local2.0-6(_local3) < 0)
            {
                _local2 = _local2.add(this.p);
            };
            var _local4:1OU = _local2.P0(_local3).0QQ(this.coeff).MR(this.p).0QQ(this.q).add(_local3);
            return (_local4);
        }

        protected function doPrivate(_arg1:1OU):1OU{
            if ((((this.p == null)) || ((this.q == null))))
            {
                return (_arg1.XC(this.d, this.n));
            };
            var _local2:1OU = _arg1.MR(this.p).XC(this.dmp1, this.p);
            var _local3:1OU = _arg1.MR(this.q).XC(this.dmq1, this.q);
            while (_local2.0-6(_local3) < 0)
            {
                _local2 = _local2.add(this.p);
            };
            return (_local2.P0(_local3).0QQ(this.coeff).MR(this.p).0QQ(this.q).add(_local3));
        }


    }
}//package com.hurlant.crypto.rsa

