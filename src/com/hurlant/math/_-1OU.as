// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.hurlant.math.1OU

package com.hurlant.math{
    import flash.utils.ByteArray;
    import com.hurlant.util.Hex;
    import com.hurlant.crypto.prng.Random;
    import com.hurlant.util.Memory;

    public class 1OU {

        public static const 1Ic:int = 30;
        public static const U0:int = (1 << 1Ic);
        public static const 1DT:int = (U0 - 1);
        public static const 1a5:int = 52;
        public static const he:Number = Math.pow(2, 1a5);
        public static const F1:int = (1a5 - 1Ic);//22
        public static const F2:int = ((2 * 1Ic) - 1a5);//8
        public static const is:1OU = d4(0);
        public static const 1nf:1OU = d4(1);
        public static const 1bG:Array = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 0x0101, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509];
        public static const 1no:int = ((1 << 26) / 1bG[(1bG.length - 1)]);

        public var t:int;
        bi_internal var s:int;
        bi_internal var a:Array;

        public function 1OU(_arg1=null, _arg2:int=0, _arg3:Boolean=false){
            var _local4:ByteArray;
            var _local5:int;
            super();
            this.a = new Array();
            if ((_arg1 is String))
            {
                if (((_arg2) && (!((_arg2 == 16)))))
                {
                    throw (new Error("BigInteger construction _with radix!=16 is not supported."));
                }
                _arg1 = Hex.toArray(_arg1);
                _arg2 = 0;
            }
            if ((_arg1 is ByteArray))
            {
                _local4 = (_arg1 as ByteArray);
                _local5 = ((_arg2) || ((_local4.length - _local4.position)));
                this.fromArray(_local4, _local5, _arg3);
            }
        }

        public static function d4(_arg1:int):1OU{
            var _local2:1OU = new (1OU)();
            _local2.0BZ(_arg1);
            return (_local2);
        }


        public function dispose():void{
            var _local1:Random = new Random();
            var _local2:uint;
            while (_local2 < this.a.length)
            {
                this.a[_local2] = _local1.nextByte();
                delete this.a[_local2];
                _local2++;
            }
            this.a = null;
            this.t = 0;
            this.s = 0;
            Memory.gc();
        }

        public function toString(_arg1:Number=16):String{
            var _local2:int;
            if (this.s < 0)
            {
                return (("-" + this.Cl().toString(_arg1)));
            }
            switch (_arg1)
            {
                case 2:
                    _local2 = 1;
                    break;
                case 4:
                    _local2 = 2;
                    break;
                case 8:
                    _local2 = 3;
                    break;
                case 16:
                    _local2 = 4;
                    break;
                case 32:
                    _local2 = 5;
                    break;
            }
            var _local3:int = ((1 << _local2) - 1);
            var _local4:int;
            var _local5:Boolean;
            var _local6 = "";
            var _local7:int = this.t;
            var _local8:int = (1Ic - ((_local7 * 1Ic) % _local2));
            var _temp1 = _local7;
            _local7 = (_local7 - 1);
            if (_temp1 > 0)
            {
                if ((((_local8 < 1Ic)) && (((_local4 = (this.a[_local7] >> _local8)) > 0))))
                {
                    _local5 = true;
                    _local6 = _local4.toString(36);
                }
                while (_local7 >= 0)
                {
                    if (_local8 < _local2)
                    {
                        _local4 = ((this.a[_local7] & ((1 << _local8) - 1)) << (_local2 - _local8));
                        var _temp2 = _local4;
                        _local8 = (_local8 + (1Ic - _local2));
                        _local4 = (_temp2 | (this.a[--_local7] >> _local8));
                    } else
                    {
                        _local8 = (_local8 - _local2);
                        _local4 = ((this.a[_local7] >> _local8) & _local3);
                        if (_local8 <= 0)
                        {
                            _local8 = (_local8 + 1Ic);
                            _local7--;
                        }
                    }
                    if (_local4 > 0)
                    {
                        _local5 = true;
                    }
                    if (_local5)
                    {
                        _local6 = (_local6 + _local4.toString(36));
                    }
                }
            }
            return (((_local5) ? _local6 : "0"));
        }

        public function toArray(_arg1:ByteArray):uint{
            var _local2:int = 8;
            var _local3:int = ((1 << 8) - 1);
            var _local4:int;
            var _local5:int = this.t;
            var _local6:int = (1Ic - ((_local5 * 1Ic) % _local2));
            var _local7:Boolean;
            var _local8:int;
            var _temp1 = _local5;
            _local5 = (_local5 - 1);
            if (_temp1 > 0)
            {
                if ((((_local6 < 1Ic)) && (((_local4 = (this.a[_local5] >> _local6)) > 0))))
                {
                    _local7 = true;
                    _arg1.writeByte(_local4);
                    _local8++;
                }
                while (_local5 >= 0)
                {
                    if (_local6 < _local2)
                    {
                        _local4 = ((this.a[_local5] & ((1 << _local6) - 1)) << (_local2 - _local6));
                        var _temp2 = _local4;
                        _local6 = (_local6 + (1Ic - _local2));
                        _local4 = (_temp2 | (this.a[--_local5] >> _local6));
                    } else
                    {
                        _local6 = (_local6 - _local2);
                        _local4 = ((this.a[_local5] >> _local6) & _local3);
                        if (_local6 <= 0)
                        {
                            _local6 = (_local6 + 1Ic);
                            _local5--;
                        }
                    }
                    if (_local4 > 0)
                    {
                        _local7 = true;
                    }
                    if (_local7)
                    {
                        _arg1.writeByte(_local4);
                        _local8++;
                    }
                }
            }
            return (_local8);
        }

        public function valueOf():Number{
            if (this.s == -1)
            {
                return (-(this.Cl().valueOf()));
            }
            var _local1:Number = 1;
            var _local2:Number = 0;
            var _local3:uint;
            while (_local3 < this.t)
            {
                _local2 = (_local2 + (this.a[_local3] * _local1));
                _local1 = (_local1 * U0);
                _local3++;
            }
            return (_local2);
        }

        public function Cl():1OU{
            var _local1:1OU = this.fm();
            is.GV(this, _local1);
            return (_local1);
        }

        public function abs():1OU{
            return ((((this.s)<0) ? this.Cl() : this));
        }

        public function 0-6(_arg1:1OU):int{
            var _local2:int = (this.s - _arg1.s);
            if (_local2 != 0)
            {
                return (_local2);
            }
            var _local3:int = this.t;
            _local2 = (_local3 - _arg1.t);
            if (_local2 != 0)
            {
                return (_local2);
            }
            while (--_local3 >= 0)
            {
                _local2 = (this.a[_local3] - _arg1.a[_local3]);
                if (_local2 != 0)
                {
                    return (_local2);
                }
            }
            return (0);
        }

        bi_internal function 091(_arg1:int):int{
            var _local3:int;
            var _local2:int = 1;
            _local3 = (_arg1 >>> 16);
            if (_local3 != 0)
            {
                _arg1 = _local3;
                _local2 = (_local2 + 16);
            }
            _local3 = (_arg1 >> 8);
            if (_local3 != 0)
            {
                _arg1 = _local3;
                _local2 = (_local2 + 8);
            }
            _local3 = (_arg1 >> 4);
            if (_local3 != 0)
            {
                _arg1 = _local3;
                _local2 = (_local2 + 4);
            }
            _local3 = (_arg1 >> 2);
            if (_local3 != 0)
            {
                _arg1 = _local3;
                _local2 = (_local2 + 2);
            }
            _local3 = (_arg1 >> 1);
            if (_local3 != 0)
            {
                _arg1 = _local3;
                _local2 = (_local2 + 1);
            }
            return (_local2);
        }

        public function Rj():int{
            if (this.t <= 0)
            {
                return (0);
            }
            return (((1Ic * (this.t - 1)) + this.091((this.a[(this.t - 1)] ^ (this.s & 1DT)))));
        }

        public function MR(_arg1:1OU):1OU{
            var _local2:1OU = this.fm();
            this.abs().cZ(_arg1, null, _local2);
            if ((((this.s < 0)) && ((_local2.0-6(is) > 0))))
            {
                _arg1.GV(_local2, _local2);
            }
            return (_local2);
        }

        public function wW(_arg1:int, _arg2:1OU):1OU{
            var _local3:OU;
            if ((((_arg1 < 0x0100)) || (_arg2.0Se())))
            {
                _local3 = new Nm(_arg2);
            } else
            {
                _local3 = new EB(_arg2);
            }
            return (this.exp(_arg1, _local3));
        }

        bi_internal function copyTo(_arg1:1OU):void{
            var _local2:int = (this.t - 1);
            while (_local2 >= 0)
            {
                _arg1.a[_local2] = this.a[_local2];
                _local2--;
            }
            _arg1.t = this.t;
            _arg1.s = this.s;
        }

        bi_internal function 0BZ(_arg1:int):void{
            this.t = 1;
            this.s = (((_arg1)<0) ? -1 : 0);
            if (_arg1 > 0)
            {
                this.a[0] = _arg1;
            } else
            {
                if (_arg1 < -1)
                {
                    this.a[0] = (_arg1 + U0);
                } else
                {
                    this.t = 0;
                }
            }
        }

        bi_internal function fromArray(_arg1:ByteArray, _arg2:int, _arg3:Boolean=false):void{
            var _local8:int;
            var _local4:int = _arg1.position;
            var _local5:int = (_local4 + _arg2);
            var _local6:int;
            var _local7:int = 8;
            this.t = 0;
            this.s = 0;
            while (--_local5 >= _local4)
            {
                _local8 = (((_local5 < _arg1.length)) ? _arg1[_local5] : 0);
                if (_local6 == 0)
                {
                    var _local9 = this.t++;
                    this.a[_local9] = _local8;
                } else
                {
                    if ((_local6 + _local7) > 1Ic)
                    {
                        this.a[(this.t - 1)] = (this.a[(this.t - 1)] | ((_local8 & ((1 << (1Ic - _local6)) - 1)) << _local6));
                        _local9 = this.t++;
                        this.a[_local9] = (_local8 >> (1Ic - _local6));
                    } else
                    {
                        this.a[(this.t - 1)] = (this.a[(this.t - 1)] | (_local8 << _local6));
                    }
                }
                _local6 = (_local6 + _local7);
                if (_local6 >= 1Ic)
                {
                    _local6 = (_local6 - 1Ic);
                }
            }
            if (((!(_arg3)) && (((_arg1[0] & 128) == 128))))
            {
                this.s = -1;
                if (_local6 > 0)
                {
                    this.a[(this.t - 1)] = (this.a[(this.t - 1)] | (((1 << (1Ic - _local6)) - 1) << _local6));
                }
            }
            this.clamp();
            _arg1.position = Math.min((_local4 + _arg2), _arg1.length);
        }

        bi_internal function clamp():void{
            var _local1 = (this.s & 1DT);
            while ((((this.t > 0)) && ((this.a[(this.t - 1)] == _local1))))
            {
                this.t--;
            }
        }

        bi_internal function 2-G(_arg1:int, _arg2:1OU):void{
            var _local3:int;
            _local3 = (this.t - 1);
            while (_local3 >= 0)
            {
                _arg2.a[(_local3 + _arg1)] = this.a[_local3];
                _local3--;
            }
            _local3 = (_arg1 - 1);
            while (_local3 >= 0)
            {
                _arg2.a[_local3] = 0;
                _local3--;
            }
            _arg2.t = (this.t + _arg1);
            _arg2.s = this.s;
        }

        bi_internal function 0nR(_arg1:int, _arg2:1OU):void{
            var _local3:int;
            _local3 = _arg1;
            while (_local3 < this.t)
            {
                _arg2.a[(_local3 - _arg1)] = this.a[_local3];
                _local3++;
            }
            _arg2.t = Math.max((this.t - _arg1), 0);
            _arg2.s = this.s;
        }

        bi_internal function 1gK(_arg1:int, _arg2:1OU):void{
            var _local8:int;
            var _local3:int = (_arg1 % 1Ic);
            var _local4:int = (1Ic - _local3);
            var _local5:int = ((1 << _local4) - 1);
            var _local6:int = (_arg1 / 1Ic);
            var _local7 = ((this.s << _local3) & 1DT);
            _local8 = (this.t - 1);
            while (_local8 >= 0)
            {
                _arg2.a[((_local8 + _local6) + 1)] = ((this.a[_local8] >> _local4) | _local7);
                _local7 = ((this.a[_local8] & _local5) << _local3);
                _local8--;
            }
            _local8 = (_local6 - 1);
            while (_local8 >= 0)
            {
                _arg2.a[_local8] = 0;
                _local8--;
            }
            _arg2.a[_local6] = _local7;
            _arg2.t = ((this.t + _local6) + 1);
            _arg2.s = this.s;
            _arg2.clamp();
        }

        bi_internal function Y7(_arg1:int, _arg2:1OU):void{
            var _local7:int;
            _arg2.s = this.s;
            var _local3:int = (_arg1 / 1Ic);
            if (_local3 >= this.t)
            {
                _arg2.t = 0;
                return;
            }
            var _local4:int = (_arg1 % 1Ic);
            var _local5:int = (1Ic - _local4);
            var _local6:int = ((1 << _local4) - 1);
            _arg2.a[0] = (this.a[_local3] >> _local4);
            _local7 = (_local3 + 1);
            while (_local7 < this.t)
            {
                _arg2.a[((_local7 - _local3) - 1)] = (_arg2.a[((_local7 - _local3) - 1)] | ((this.a[_local7] & _local6) << _local5));
                _arg2.a[(_local7 - _local3)] = (this.a[_local7] >> _local4);
                _local7++;
            }
            if (_local4 > 0)
            {
                _arg2.a[((this.t - _local3) - 1)] = (_arg2.a[((this.t - _local3) - 1)] | ((this.s & _local6) << _local5));
            }
            _arg2.t = (this.t - _local3);
            _arg2.clamp();
        }

        bi_internal function GV(_arg1:1OU, _arg2:1OU):void{
            var _local3:int;
            var _local4:int;
            var _local5:int = Math.min(_arg1.t, this.t);
            while (_local3 < _local5)
            {
                _local4 = (_local4 + (this.a[_local3] - _arg1.a[_local3]));
                var _local6 = _local3++;
                _arg2.a[_local6] = (_local4 & 1DT);
                _local4 = (_local4 >> 1Ic);
            }
            if (_arg1.t < this.t)
            {
                _local4 = (_local4 - _arg1.s);
                while (_local3 < this.t)
                {
                    _local4 = (_local4 + this.a[_local3]);
                    _local6 = _local3++;
                    _arg2.a[_local6] = (_local4 & 1DT);
                    _local4 = (_local4 >> 1Ic);
                }
                _local4 = (_local4 + this.s);
            } else
            {
                _local4 = (_local4 + this.s);
                while (_local3 < _arg1.t)
                {
                    _local4 = (_local4 - _arg1.a[_local3]);
                    _local6 = _local3++;
                    _arg2.a[_local6] = (_local4 & 1DT);
                    _local4 = (_local4 >> 1Ic);
                }
                _local4 = (_local4 - _arg1.s);
            }
            _arg2.s = (((_local4)<0) ? -1 : 0);
            if (_local4 < -1)
            {
                _local6 = _local3++;
                _arg2.a[_local6] = (U0 + _local4);
            } else
            {
                if (_local4 > 0)
                {
                    _local6 = _local3++;
                    _arg2.a[_local6] = _local4;
                }
            }
            _arg2.t = _local3;
            _arg2.clamp();
        }

        bi_internal function am(_arg1:int, _arg2:int, _arg3:1OU, _arg4:int, _arg5:int, _arg6:int):int{
            var _local9:int;
            var _local10:int;
            var _local11:int;
            var _local7 = (_arg2 & 32767);
            var _local8 = (_arg2 >> 15);
            while (--_arg6 >= 0)
            {
                _local9 = (this.a[_arg1] & 32767);
                _local10 = (this.a[_arg1++] >> 15);
                _local11 = ((_local8 * _local9) + (_local10 * _local7));
                _local9 = ((((_local7 * _local9) + ((_local11 & 32767) << 15)) + _arg3.a[_arg4]) + (_arg5 & 1073741823));
                _arg5 = ((((_local9 >>> 30) + (_local11 >>> 15)) + (_local8 * _local10)) + (_arg5 >>> 30));
                var _local12 = _arg4++;
                _arg3.a[_local12] = (_local9 & 1073741823);
            }
            return (_arg5);
        }

        bi_internal function 01Z(_arg1:1OU, _arg2:1OU):void{
            var _local3:1OU = this.abs();
            var _local4:1OU = _arg1.abs();
            var _local5:int = _local3.t;
            _arg2.t = (_local5 + _local4.t);
            while (--_local5 >= 0)
            {
                _arg2.a[_local5] = 0;
            }
            _local5 = 0;
            while (_local5 < _local4.t)
            {
                _arg2.a[(_local5 + _local3.t)] = _local3.am(0, _local4.a[_local5], _arg2, _local5, 0, _local3.t);
                _local5++;
            }
            _arg2.s = 0;
            _arg2.clamp();
            if (this.s != _arg1.s)
            {
                is.GV(_arg2, _arg2);
            }
        }

        bi_internal function 1dy(_arg1:1OU):void{
            var _local4:int;
            var _local2:1OU = this.abs();
            var _local3:int = (_arg1.t = (2 * _local2.t));
            while (--_local3 >= 0)
            {
                _arg1.a[_local3] = 0;
            }
            _local3 = 0;
            while (_local3 < (_local2.t - 1))
            {
                _local4 = _local2.am(_local3, _local2.a[_local3], _arg1, (2 * _local3), 0, 1);
                if ((_arg1.a[(_local3 + _local2.t)] = (_arg1.a[(_local3 + _local2.t)] + _local2.am((_local3 + 1), (2 * _local2.a[_local3]), _arg1, ((2 * _local3) + 1), _local4, ((_local2.t - _local3) - 1)))) >= U0)
                {
                    _arg1.a[(_local3 + _local2.t)] = (_arg1.a[(_local3 + _local2.t)] - U0);
                    _arg1.a[((_local3 + _local2.t) + 1)] = 1;
                }
                _local3++;
            }
            if (_arg1.t > 0)
            {
                _arg1.a[(_arg1.t - 1)] = (_arg1.a[(_arg1.t - 1)] + _local2.am(_local3, _local2.a[_local3], _arg1, (2 * _local3), 0, 1));
            }
            _arg1.s = 0;
            _arg1.clamp();
        }

        bi_internal function cZ(_arg1:1OU, _arg2:1OU=null, _arg3:1OU=null):void{
            var qd:int;
            var m:1OU = _arg1;
            var q = _arg2;
            var r = _arg3;
            var pm:1OU = m.abs();
            if (pm.t <= 0)
            {
                return;
            }
            var pt:1OU = this.abs();
            if (pt.t < pm.t)
            {
                if (q != null)
                {
                    q.0BZ(0);
                }
                if (r != null)
                {
                    this.copyTo(r);
                }
                return;
            }
            if (r == null)
            {
                r = this.fm();
            }
            var y:1OU = this.fm();
            var ts:int = this.s;
            var ms:int = m.s;
            var nsh:int = (1Ic - this.091(pm.a[(pm.t - 1)]));
            if (nsh > 0)
            {
                pm.1gK(nsh, y);
                pt.1gK(nsh, r);
            } else
            {
                pm.copyTo(y);
                pt.copyTo(r);
            }
            var ys:int = y.t;
            var y0:int = y.a[(ys - 1)];
            if (y0 == 0)
            {
                return;
            }
            var yt:Number = ((y0 * (1 << F1)) + (((ys)>1) ? (y.a[(ys - 2)] >> F2) : 0));
            var d1:Number = (he / yt);
            var d2:Number = ((1 << F1) / yt);
            var e:Number = (1 << F2);
            var i:int = r.t;
            var j:int = (i - ys);
            var t:1OU = (((q)==null) ? this.fm() : q);
            y.2-G(j, t);
            if (r.0-6(t) >= 0)
            {
                var _local5 = r.t++;
                r.a[_local5] = 1;
                r.GV(t, r);
            }
            1nf.2-G(ys, t);
            t.GV(y, y);
            while (y.t < ys)
            {
                y.(y.t++); //not popped
            }
            while ((j = (j - 1)), j >= 0)
            {
                qd = (((r.a[--i])==y0) ? 1DT : ((Number(r.a[i]) * d1) + ((Number(r.a[(i - 1)]) + e) * d2)));
                if ((r.a[i] = (r.a[i] + y.am(0, qd, r, j, 0, ys))) < qd)
                {
                    y.2-G(j, t);
                    r.GV(t, r);
                    while ((qd = (qd - 1)), r.a[i] < qd)
                    {
                        r.GV(t, r);
                    }
                }
            }
            if (q != null)
            {
                r.0nR(ys, q);
                if (ts != ms)
                {
                    is.GV(q, q);
                }
            }
            r.t = ys;
            r.clamp();
            if (nsh > 0)
            {
                r.Y7(nsh, r);
            }
            if (ts < 0)
            {
                is.GV(r, r);
            }
        }

        bi_internal function 0Rt():int{
            if (this.t < 1)
            {
                return (0);
            }
            var _local1:int = this.a[0];
            if ((_local1 & 1) == 0)
            {
                return (0);
            }
            var _local2 = (_local1 & 3);
            _local2 = ((_local2 * (2 - ((_local1 & 15) * _local2))) & 15);
            _local2 = ((_local2 * (2 - ((_local1 & 0xFF) * _local2))) & 0xFF);
            _local2 = ((_local2 * (2 - (((_local1 & 0xFFFF) * _local2) & 0xFFFF))) & 0xFFFF);
            _local2 = ((_local2 * (2 - ((_local1 * _local2) % U0))) % U0);
            return ((((_local2)>0) ? (U0 - _local2) : -(_local2)));
        }

        bi_internal function 0Se():Boolean{
            return (((((this.t)>0) ? (this.a[0] & 1) : this.s) == 0));
        }

        bi_internal function exp(_arg1:int, _arg2:OU):1OU{
            var _local7:1OU;
            if ((((_arg1 > 0xFFFFFFFF)) || ((_arg1 < 1))))
            {
                return (1nf);
            }
            var _local3:1OU = this.fm();
            var _local4:1OU = this.fm();
            var _local5:1OU = _arg2.1Z2(this);
            var _local6:int = (this.091(_arg1) - 1);
            _local5.copyTo(_local3);
            while (--_local6 >= 0)
            {
                _arg2.1yM(_local3, _local4);
                if ((_arg1 & (1 << _local6)) > 0)
                {
                    _arg2.Ex(_local4, _local5, _local3);
                } else
                {
                    _local7 = _local3;
                    _local3 = _local4;
                    _local4 = _local7;
                }
            }
            return (_arg2.1cz(_local3));
        }

        bi_internal function 0Gt(_arg1:String, _arg2:int):int{
            return (parseInt(_arg1.charAt(_arg2), 36));
        }

        protected function fm(){
            return (new 1OU());
        }

        public function clone():1OU{
            var _local1:1OU = new 1OU();
            this.copyTo(_local1);
            return (_local1);
        }

        public function 0SA():int{
            if (this.s < 0)
            {
                if (this.t == 1)
                {
                    return ((this.a[0] - U0));
                }
                if (this.t == 0)
                {
                    return (-1);
                }
            } else
            {
                if (this.t == 1)
                {
                    return (this.a[0]);
                }
                if (this.t == 0)
                {
                    return (0);
                }
            }
            return ((((this.a[1] & ((1 << (32 - 1Ic)) - 1)) << 1Ic) | this.a[0]));
        }

        public function 1DI():int{
            return ((((this.t)==0) ? this.s : ((this.a[0] << 24) >> 24)));
        }

        public function 1Fb():int{
            return ((((this.t)==0) ? this.s : ((this.a[0] << 16) >> 16)));
        }

        protected function m8(_arg1:Number):int{
            return (Math.floor(((Math.LN2 * 1Ic) / Math.log(_arg1))));
        }

        public function aa():int{
            if (this.s < 0)
            {
                return (-1);
            }
            if ((((this.t <= 0)) || ((((this.t == 1)) && ((this.a[0] <= 0))))))
            {
                return (0);
            }
            return (1);
        }

        protected function 1zf(_arg1:uint=10):String{
            if ((((((this.aa() == 0)) || ((_arg1 < 2)))) || ((_arg1 > 32))))
            {
                return ("0");
            }
            var _local2:int = this.m8(_arg1);
            var _local3:Number = Math.pow(_arg1, _local2);
            var _local4:1OU = d4(_local3);
            var _local5:1OU = this.fm();
            var _local6:1OU = this.fm();
            var _local7 = "";
            this.cZ(_local4, _local5, _local6);
            while (_local5.aa() > 0)
            {
                _local7 = ((_local3 + _local6.0SA()).toString(_arg1).substr(1) + _local7);
                _local5.cZ(_local4, _local5, _local6);
            }
            return ((_local6.0SA().toString(_arg1) + _local7));
        }

        protected function 1X2(_arg1:String, _arg2:int=10):void{
            var _local9:int;
            this.0BZ(0);
            var _local3:int = this.m8(_arg2);
            var _local4:Number = Math.pow(_arg2, _local3);
            var _local5:Boolean;
            var _local6:int;
            var _local7:int;
            var _local8:int;
            while (_local8 < _arg1.length)
            {
                _local9 = this.0Gt(_arg1, _local8);
                if (_local9 < 0)
                {
                    if ((((_arg1.charAt(_local8) == "-")) && ((this.aa() == 0))))
                    {
                        _local5 = true;
                    }
                } else
                {
                    _local7 = ((_arg2 * _local7) + _local9);
                    ++_local6;
                    if (_local6 >= _local3)
                    {
                        this.01x(_local4);
                        this.1PC(_local7, 0);
                        _local6 = 0;
                        _local7 = 0;
                    }
                }
                _local8++;
            }
            if (_local6 > 0)
            {
                this.01x(Math.pow(_arg2, _local6));
                this.1PC(_local7, 0);
            }
            if (_local5)
            {
                1OU.is.GV(this, this);
            }
        }

        public function us():ByteArray{
            var _local4:int;
            var _local1:int = this.t;
            var _local2:ByteArray = new ByteArray();
            _local2[0] = this.s;
            var _local3:int = (1Ic - ((_local1 * 1Ic) % 8));
            var _local5:int;
            var _temp1 = _local1;
            _local1 = (_local1 - 1);
            if (_temp1 > 0)
            {
                if ((((_local3 < 1Ic)) && (!(((_local4 = (this.a[_local1] >> _local3)) == ((this.s & 1DT) >> _local3))))))
                {
                    var _local6 = _local5++;
                    _local2[_local6] = (_local4 | (this.s << (1Ic - _local3)));
                }
                while (_local1 >= 0)
                {
                    if (_local3 < 8)
                    {
                        _local4 = ((this.a[_local1] & ((1 << _local3) - 1)) << (8 - _local3));
                        var _temp2 = _local4;
                        _local3 = (_local3 + (1Ic - 8));
                        _local4 = (_temp2 | (this.a[--_local1] >> _local3));
                    } else
                    {
                        _local3 = (_local3 - 8);
                        _local4 = ((this.a[_local1] >> _local3) & 0xFF);
                        if (_local3 <= 0)
                        {
                            _local3 = (_local3 + 1Ic);
                            _local1--;
                        }
                    }
                    if ((_local4 & 128) != 0)
                    {
                        _local4 = (_local4 | -256);
                    }
                    if ((((_local5 == 0)) && (!(((this.s & 128) == (_local4 & 128))))))
                    {
                        _local5++;
                    }
                    if ((((_local5 > 0)) || (!((_local4 == this.s)))))
                    {
                        _local6 = _local5++;
                        _local2[_local6] = _local4;
                    }
                }
            }
            return (_local2);
        }

        public function equals(_arg1:1OU):Boolean{
            return ((this.0-6(_arg1) == 0));
        }

        public function min(_arg1:1OU):1OU{
            return ((((this.0-6(_arg1))<0) ? this : _arg1));
        }

        public function max(_arg1:1OU):1OU{
            return ((((this.0-6(_arg1))>0) ? this : _arg1));
        }

        protected function 097(_arg1:1OU, _arg2:Function, _arg3:1OU):void{
            var _local4:int;
            var _local5:int;
            var _local6:int = Math.min(_arg1.t, this.t);
            _local4 = 0;
            while (_local4 < _local6)
            {
                _arg3.a[_local4] = _arg2(this.a[_local4], _arg1.a[_local4]);
                _local4++;
            }
            if (_arg1.t < this.t)
            {
                _local5 = (_arg1.s & 1DT);
                _local4 = _local6;
                while (_local4 < this.t)
                {
                    _arg3.a[_local4] = _arg2(this.a[_local4], _local5);
                    _local4++;
                }
                _arg3.t = this.t;
            } else
            {
                _local5 = (this.s & 1DT);
                _local4 = _local6;
                while (_local4 < _arg1.t)
                {
                    _arg3.a[_local4] = _arg2(_local5, _arg1.a[_local4]);
                    _local4++;
                }
                _arg3.t = _arg1.t;
            }
            _arg3.s = _arg2(this.s, _arg1.s);
            _arg3.clamp();
        }

        private function 0Kg(_arg1:int, _arg2:int):int{
            return ((_arg1 & _arg2));
        }

        public function 1gJ(_arg1:1OU):1OU{
            var _local2:1OU = new 1OU();
            this.097(_arg1, this.0Kg, _local2);
            return (_local2);
        }

        private function 13p(_arg1:int, _arg2:int):int{
            return ((_arg1 | _arg2));
        }

        public function or(_arg1:1OU):1OU{
            var _local2:1OU = new 1OU();
            this.097(_arg1, this.13p, _local2);
            return (_local2);
        }

        private function l8(_arg1:int, _arg2:int):int{
            return ((_arg1 ^ _arg2));
        }

        public function wx(_arg1:1OU):1OU{
            var _local2:1OU = new 1OU();
            this.097(_arg1, this.l8, _local2);
            return (_local2);
        }

        private function vU(_arg1:int, _arg2:int):int{
            return ((_arg1 & ~(_arg2)));
        }

        public function VX(_arg1:1OU):1OU{
            var _local2:1OU = new 1OU();
            this.097(_arg1, this.vU, _local2);
            return (_local2);
        }

        public function not():1OU{
            var _local1:1OU = new 1OU();
            var _local2:int;
            while (_local2 < this.t)
            {
                _local1[_local2] = (1DT & ~(this.a[_local2]));
                _local2++;
            }
            _local1.t = this.t;
            _local1.s = ~(this.s);
            return (_local1);
        }

        public function ah(_arg1:int):1OU{
            var _local2:1OU = new 1OU();
            if (_arg1 < 0)
            {
                this.Y7(-(_arg1), _local2);
            } else
            {
                this.1gK(_arg1, _local2);
            }
            return (_local2);
        }

        public function 275(_arg1:int):1OU{
            var _local2:1OU = new 1OU();
            if (_arg1 < 0)
            {
                this.1gK(-(_arg1), _local2);
            } else
            {
                this.Y7(_arg1, _local2);
            }
            return (_local2);
        }

        private function fI(_arg1:int):int{
            if (_arg1 == 0)
            {
                return (-1);
            }
            var _local2:int;
            if ((_arg1 & 0xFFFF) == 0)
            {
                _arg1 = (_arg1 >> 16);
                _local2 = (_local2 + 16);
            }
            if ((_arg1 & 0xFF) == 0)
            {
                _arg1 = (_arg1 >> 8);
                _local2 = (_local2 + 8);
            }
            if ((_arg1 & 15) == 0)
            {
                _arg1 = (_arg1 >> 4);
                _local2 = (_local2 + 4);
            }
            if ((_arg1 & 3) == 0)
            {
                _arg1 = (_arg1 >> 2);
                _local2 = (_local2 + 2);
            }
            if ((_arg1 & 1) == 0)
            {
                _local2++;
            }
            return (_local2);
        }

        public function 1OV():int{
            var _local1:int;
            while (_local1 < this.t)
            {
                if (this.a[_local1] != 0)
                {
                    return (((_local1 * 1Ic) + this.fI(this.a[_local1])));
                }
                _local1++;
            }
            if (this.s < 0)
            {
                return ((this.t * 1Ic));
            }
            return (-1);
        }

        private function 1-h(_arg1:int):int{
            var _local2:uint;
            while (_arg1 != 0)
            {
                _arg1 = (_arg1 & (_arg1 - 1));
                _local2++;
            }
            return (_local2);
        }

        public function yE():int{
            var _local1:int;
            var _local2 = (this.s & 1DT);
            var _local3:int;
            while (_local3 < this.t)
            {
                _local1 = (_local1 + this.1-h((this.a[_local3] ^ _local2)));
                _local3++;
            }
            return (_local1);
        }

        public function Gl(_arg1:int):Boolean{
            var _local2:int = Math.floor((_arg1 / 1Ic));
            if (_local2 >= this.t)
            {
                return (!((this.s == 0)));
            }
            return (!(((this.a[_local2] & (1 << (_arg1 % 1Ic))) == 0)));
        }

        protected function 1qW(_arg1:int, _arg2:Function):1OU{
            var _local3:1OU = 1OU.1nf.ah(_arg1);
            this.097(_local3, _arg2, _local3);
            return (_local3);
        }

        public function 1ha(_arg1:int):1OU{
            return (this.1qW(_arg1, this.13p));
        }

        public function Q7(_arg1:int):1OU{
            return (this.1qW(_arg1, this.vU));
        }

        public function 0Mq(_arg1:int):1OU{
            return (this.1qW(_arg1, this.l8));
        }

        protected function addTo(_arg1:1OU, _arg2:1OU):void{
            var _local3:int;
            var _local4:int;
            var _local5:int = Math.min(_arg1.t, this.t);
            while (_local3 < _local5)
            {
                _local4 = (_local4 + (this.a[_local3] + _arg1.a[_local3]));
                var _local6 = _local3++;
                _arg2.a[_local6] = (_local4 & 1DT);
                _local4 = (_local4 >> 1Ic);
            }
            if (_arg1.t < this.t)
            {
                _local4 = (_local4 + _arg1.s);
                while (_local3 < this.t)
                {
                    _local4 = (_local4 + this.a[_local3]);
                    _local6 = _local3++;
                    _arg2.a[_local6] = (_local4 & 1DT);
                    _local4 = (_local4 >> 1Ic);
                }
                _local4 = (_local4 + this.s);
            } else
            {
                _local4 = (_local4 + this.s);
                while (_local3 < _arg1.t)
                {
                    _local4 = (_local4 + _arg1.a[_local3]);
                    _local6 = _local3++;
                    _arg2.a[_local6] = (_local4 & 1DT);
                    _local4 = (_local4 >> 1Ic);
                }
                _local4 = (_local4 + _arg1.s);
            }
            _arg2.s = (((_local4)<0) ? -1 : 0);
            if (_local4 > 0)
            {
                _local6 = _local3++;
                _arg2.a[_local6] = _local4;
            } else
            {
                if (_local4 < -1)
                {
                    _local6 = _local3++;
                    _arg2.a[_local6] = (U0 + _local4);
                }
            }
            _arg2.t = _local3;
            _arg2.clamp();
        }

        public function add(_arg1:1OU):1OU{
            var _local2:1OU = new 1OU();
            this.addTo(_arg1, _local2);
            return (_local2);
        }

        public function P0(_arg1:1OU):1OU{
            var _local2:1OU = new 1OU();
            this.GV(_arg1, _local2);
            return (_local2);
        }

        public function 0QQ(_arg1:1OU):1OU{
            var _local2:1OU = new 1OU();
            this.01Z(_arg1, _local2);
            return (_local2);
        }

        public function UK(_arg1:1OU):1OU{
            var _local2:1OU = new 1OU();
            this.cZ(_arg1, _local2, null);
            return (_local2);
        }

        public function 1Fe(_arg1:1OU):1OU{
            var _local2:1OU = new 1OU();
            this.cZ(_arg1, null, _local2);
            return (_local2);
        }

        public function 0Ap(_arg1:1OU):Array{
            var _local2:1OU = new 1OU();
            var _local3:1OU = new 1OU();
            this.cZ(_arg1, _local2, _local3);
            return ([_local2, _local3]);
        }

        bi_internal function 01x(_arg1:int):void{
            this.a[this.t] = this.am(0, (_arg1 - 1), this, 0, 0, this.t);
            this.t++;
            this.clamp();
        }

        bi_internal function 1PC(_arg1:int, _arg2:int):void{
            while (this.t <= _arg2)
            {
                var _local3 = this.t++;
                this.a[_local3] = 0;
            }
            this.a[_arg2] = (this.a[_arg2] + _arg1);
            while (this.a[_arg2] >= U0)
            {
                this.a[_arg2] = (this.a[_arg2] - U0);
                ++_arg2;
                if (_arg2 >= this.t)
                {
                    _local3 = this.t++;
                    this.a[_local3] = 0;
                }
                _local3 = this.a;
                var _local4 = _arg2;
                var _local5 = (_local3[_local4] + 1);
                _local3[_local4] = _local5;
            }
        }

        public function pow(_arg1:int):1OU{
            return (this.exp(_arg1, new R8()));
        }

        bi_internal function 1-R(_arg1:1OU, _arg2:int, _arg3:1OU):void{
            var _local5:int;
            var _local4:int = Math.min((this.t + _arg1.t), _arg2);
            _arg3.s = 0;
            _arg3.t = _local4;
            while (_local4 > 0)
            {
                var _local6 = --_local4;
                _arg3.a[_local6] = 0;
            }
            _local5 = (_arg3.t - this.t);
            while (_local4 < _local5)
            {
                _arg3.a[(_local4 + this.t)] = this.am(0, _arg1.a[_local4], _arg3, _local4, 0, this.t);
                _local4++;
            }
            _local5 = Math.min(_arg1.t, _arg2);
            while (_local4 < _local5)
            {
                this.am(0, _arg1.a[_local4], _arg3, _local4, 0, (_arg2 - _local4));
                _local4++;
            }
            _arg3.clamp();
        }

        bi_internal function 03h(_arg1:1OU, _arg2:int, _arg3:1OU):void{
            _arg2--;
            var _local4:int = (_arg3.t = ((this.t + _arg1.t) - _arg2));
            _arg3.s = 0;
            while (--_local4 >= 0)
            {
                _arg3.a[_local4] = 0;
            }
            _local4 = Math.max((_arg2 - this.t), 0);
            while (_local4 < _arg1.t)
            {
                _arg3.a[((this.t + _local4) - _arg2)] = this.am((_arg2 - _local4), _arg1.a[_local4], _arg3, 0, 0, ((this.t + _local4) - _arg2));
                _local4++;
            }
            _arg3.clamp();
            _arg3.0nR(1, _arg3);
        }

        public function XC(_arg1:1OU, _arg2:1OU):1OU{
            var _local4:int;
            var _local6:OU;
            var _local12:int;
            var _local15:1OU;
            var _local16:1OU;
            var _local3:int = _arg1.Rj();
            var _local5:1OU = d4(1);
            if (_local3 <= 0)
            {
                return (_local5);
            }
            if (_local3 < 18)
            {
                _local4 = 1;
            } else
            {
                if (_local3 < 48)
                {
                    _local4 = 3;
                } else
                {
                    if (_local3 < 144)
                    {
                        _local4 = 4;
                    } else
                    {
                        if (_local3 < 0x0300)
                        {
                            _local4 = 5;
                        } else
                        {
                            _local4 = 6;
                        }
                    }
                }
            }
            if (_local3 < 8)
            {
                _local6 = new Nm(_arg2);
            } else
            {
                if (_arg2.0Se())
                {
                    _local6 = new 05r(_arg2);
                } else
                {
                    _local6 = new EB(_arg2);
                }
            }
            var _local7:Array = [];
            var _local8:int = 3;
            var _local9:int = (_local4 - 1);
            var _local10:int = ((1 << _local4) - 1);
            _local7[1] = _local6.1Z2(this);
            if (_local4 > 1)
            {
                _local16 = new 1OU();
                _local6.1yM(_local7[1], _local16);
                while (_local8 <= _local10)
                {
                    _local7[_local8] = new 1OU();
                    _local6.Ex(_local16, _local7[(_local8 - 2)], _local7[_local8]);
                    _local8 = (_local8 + 2);
                }
            }
            var _local11:int = (_arg1.t - 1);
            var _local13:Boolean = true;
            var _local14:1OU = new 1OU();
            _local3 = (this.091(_arg1.a[_local11]) - 1);
            while (_local11 >= 0)
            {
                if (_local3 >= _local9)
                {
                    _local12 = ((_arg1.a[_local11] >> (_local3 - _local9)) & _local10);
                } else
                {
                    _local12 = ((_arg1.a[_local11] & ((1 << (_local3 + 1)) - 1)) << (_local9 - _local3));
                    if (_local11 > 0)
                    {
                        _local12 = (_local12 | (_arg1.a[(_local11 - 1)] >> ((1Ic + _local3) - _local9)));
                    }
                }
                _local8 = _local4;
                while ((_local12 & 1) == 0)
                {
                    _local12 = (_local12 >> 1);
                    _local8--;
                }
                _local3 = (_local3 - _local8);
                if (_local3 < 0)
                {
                    _local3 = (_local3 + 1Ic);
                    _local11--;
                }
                if (_local13)
                {
                    _local7[_local12].copyTo(_local5);
                    _local13 = false;
                } else
                {
                    while (_local8 > 1)
                    {
                        _local6.1yM(_local5, _local14);
                        _local6.1yM(_local14, _local5);
                        _local8 = (_local8 - 2);
                    }
                    if (_local8 > 0)
                    {
                        _local6.1yM(_local5, _local14);
                    } else
                    {
                        _local15 = _local5;
                        _local5 = _local14;
                        _local14 = _local15;
                    }
                    _local6.Ex(_local14, _local7[_local12], _local5);
                }
                while ((((_local11 >= 0)) && (((_arg1.a[_local11] & (1 << _local3)) == 0))))
                {
                    _local6.1yM(_local5, _local14);
                    _local15 = _local5;
                    _local5 = _local14;
                    _local14 = _local15;
                    --_local3;
                    if (_local3 < 0)
                    {
                        _local3 = (1Ic - 1);
                        _local11--;
                    }
                }
            }
            return (_local6.1cz(_local5));
        }

        public function 1PJ(_arg1:1OU):1OU{
            var _local6:1OU;
            var _local2:1OU = (((this.s)<0) ? this.Cl() : this.clone());
            var _local3:1OU = (((_arg1.s)<0) ? _arg1.Cl() : _arg1.clone());
            if (_local2.0-6(_local3) < 0)
            {
                _local6 = _local2;
                _local2 = _local3;
                _local3 = _local6;
            }
            var _local4:int = _local2.1OV();
            var _local5:int = _local3.1OV();
            if (_local5 < 0)
            {
                return (_local2);
            }
            if (_local4 < _local5)
            {
                _local5 = _local4;
            }
            if (_local5 > 0)
            {
                _local2.Y7(_local5, _local2);
                _local3.Y7(_local5, _local3);
            }
            while (_local2.aa() > 0)
            {
                _local4 = _local2.1OV();
                if (_local4 > 0)
                {
                    _local2.Y7(_local4, _local2);
                }
                _local4 = _local3.1OV();
                if (_local4 > 0)
                {
                    _local3.Y7(_local4, _local3);
                }
                if (_local2.0-6(_local3) >= 0)
                {
                    _local2.GV(_local3, _local2);
                    _local2.Y7(1, _local2);
                } else
                {
                    _local3.GV(_local2, _local3);
                    _local3.Y7(1, _local3);
                }
            }
            if (_local5 > 0)
            {
                _local3.1gK(_local5, _local3);
            }
            return (_local3);
        }

        protected function Ub(_arg1:int):int{
            var _local4:int;
            if (_arg1 <= 0)
            {
                return (0);
            }
            var _local2:int = (U0 % _arg1);
            var _local3:int = (((this.s)<0) ? (_arg1 - 1) : 0);
            if (this.t > 0)
            {
                if (_local2 == 0)
                {
                    _local3 = (this.a[0] % _arg1);
                } else
                {
                    _local4 = (this.t - 1);
                    while (_local4 >= 0)
                    {
                        _local3 = (((_local2 * _local3) + this.a[_local4]) % _arg1);
                        _local4--;
                    }
                }
            }
            return (_local3);
        }

        public function 1fN(_arg1:1OU):1OU{
            var _local2:Boolean = _arg1.0Se();
            if (((((this.0Se()) && (_local2))) || ((_arg1.aa() == 0))))
            {
                return (1OU.is);
            }
            var _local3:1OU = _arg1.clone();
            var _local4:1OU = this.clone();
            var _local5:1OU = d4(1);
            var _local6:1OU = d4(0);
            var _local7:1OU = d4(0);
            var _local8:1OU = d4(1);
            while (_local3.aa() != 0)
            {
                while (_local3.0Se())
                {
                    _local3.Y7(1, _local3);
                    if (_local2)
                    {
                        if (((!(_local5.0Se())) || (!(_local6.0Se()))))
                        {
                            _local5.addTo(this, _local5);
                            _local6.GV(_arg1, _local6);
                        }
                        _local5.Y7(1, _local5);
                    } else
                    {
                        if (!_local6.0Se())
                        {
                            _local6.GV(_arg1, _local6);
                        }
                    }
                    _local6.Y7(1, _local6);
                }
                while (_local4.0Se())
                {
                    _local4.Y7(1, _local4);
                    if (_local2)
                    {
                        if (((!(_local7.0Se())) || (!(_local8.0Se()))))
                        {
                            _local7.addTo(this, _local7);
                            _local8.GV(_arg1, _local8);
                        }
                        _local7.Y7(1, _local7);
                    } else
                    {
                        if (!_local8.0Se())
                        {
                            _local8.GV(_arg1, _local8);
                        }
                    }
                    _local8.Y7(1, _local8);
                }
                if (_local3.0-6(_local4) >= 0)
                {
                    _local3.GV(_local4, _local3);
                    if (_local2)
                    {
                        _local5.GV(_local7, _local5);
                    }
                    _local6.GV(_local8, _local6);
                } else
                {
                    _local4.GV(_local3, _local4);
                    if (_local2)
                    {
                        _local7.GV(_local5, _local7);
                    }
                    _local8.GV(_local6, _local8);
                }
            }
            if (_local4.0-6(1OU.1nf) != 0)
            {
                return (1OU.is);
            }
            if (_local8.0-6(_arg1) >= 0)
            {
                return (_local8.P0(_arg1));
            }
            if (_local8.aa() < 0)
            {
                _local8.addTo(_arg1, _local8);
            } else
            {
                return (_local8);
            }
            if (_local8.aa() < 0)
            {
                return (_local8.add(_arg1));
            }
            return (_local8);
        }

        public function 1Wq(_arg1:int):Boolean{
            var _local2:int;
            var _local4:int;
            var _local5:int;
            var _local3:1OU = this.abs();
            if ((((_local3.t == 1)) && ((_local3.a[0] <= 1bG[(1bG.length - 1)]))))
            {
                _local2 = 0;
                while (_local2 < 1bG.length)
                {
                    if (_local3[0] == 1bG[_local2])
                    {
                        return (true);
                    }
                    _local2++;
                }
                return (false);
            }
            if (_local3.0Se())
            {
                return (false);
            }
            _local2 = 1;
            while (_local2 < 1bG.length)
            {
                _local4 = 1bG[_local2];
                _local5 = (_local2 + 1);
                while ((((_local5 < 1bG.length)) && ((_local4 < 1no))))
                {
                    _local4 = (_local4 * 1bG[_local5++]);
                }
                _local4 = _local3.Ub(_local4);
                while (_local2 < _local5)
                {
                    if ((_local4 % 1bG[_local2++]) == 0)
                    {
                        return (false);
                    }
                }
            }
            return (_local3.0op(_arg1));
        }

        protected function 0op(_arg1:int):Boolean{
            var _local7:1OU;
            var _local8:int;
            var _local2:1OU = this.P0(1OU.1nf);
            var _local3:int = _local2.1OV();
            if (_local3 <= 0)
            {
                return (false);
            }
            var _local4:1OU = _local2.275(_local3);
            _arg1 = ((_arg1 + 1) >> 1);
            if (_arg1 > 1bG.length)
            {
                _arg1 = 1bG.length;
            }
            var _local5:1OU = new 1OU();
            var _local6:int;
            while (_local6 < _arg1)
            {
                _local5.0BZ(1bG[_local6]);
                _local7 = _local5.XC(_local4, this);
                if (((!((_local7.0-6(1OU.1nf) == 0))) && (!((_local7.0-6(_local2) == 0)))))
                {
                    _local8 = 1;
                    while ((((_local8++ < _local3)) && (!((_local7.0-6(_local2) == 0)))))
                    {
                        _local7 = _local7.wW(2, this);
                        if (_local7.0-6(1OU.1nf) == 0)
                        {
                            return (false);
                        }
                    }
                    if (_local7.0-6(_local2) != 0)
                    {
                        return (false);
                    }
                }
                _local6++;
            }
            return (true);
        }

        public function 1hY(_arg1:int, _arg2:int):void{
            if (!this.Gl((_arg1 - 1)))
            {
                this.097(1OU.1nf.ah((_arg1 - 1)), this.13p, this);
            }
            if (this.0Se())
            {
                this.1PC(1, 0);
            }
            while (!(this.1Wq(_arg2)))
            {
                this.1PC(2, 0);
                while (this.Rj() > _arg1)
                {
                    this.GV(1OU.1nf.ah((_arg1 - 1)), this);
                }
            }
        }


    }
}//package com.hurlant.math

