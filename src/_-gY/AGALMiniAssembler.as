// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//gY.AGALMiniAssembler

package gY{
    import flash.utils.Dictionary;
    import flash.utils.ByteArray;
    import flash.utils.getTimer;
    import flash.utils.Endian;
    import flash.utils.*;

    public class AGALMiniAssembler {

        private static const 17o:Dictionary = new Dictionary();
        private static const h5:Dictionary = new Dictionary();
        private static const 22r:Dictionary = new Dictionary();
        private static const 1n0:int = 4;
        private static const Ce:int = 0x0100;
        private static const FRAGMENT:String = "fragment";
        private static const VERTEX:String = "vertex";
        private static const 1lU:uint = 12;
        private static const 079:uint = 16;
        private static const 1:uint = 20;
        private static const 186:uint = 24;
        private static const 0uQ:uint = 28;
        private static const 19e:uint = 1;
        private static const 0Le:uint = 2;
        private static const Ri:uint = 32;
        private static const 0oG:uint = 64;
        private static const 1CY:uint = 1;
        private static const 1YM:uint = 2;
        private static const 9F:uint = 4;
        private static const 0k-:uint = 8;
        private static const 082:uint = 16;
        private static const 1sC:uint = 32;
        private static const 20Z:uint = 64;
        private static const U-:uint = 128;
        private static const 1Ci:String = "mov";
        private static const 0lY:String = "add";
        private static const Ok:String = "sub";
        private static const 1fq:String = "mul";
        private static const 1D6:String = "div";
        private static const 1ir:String = "rcp";
        private static const 0xs:String = "min";
        private static const 0Hg:String = "max";
        private static const 1iH:String = "frc";
        private static const 0Xj:String = "sqt";
        private static const 1Yo:String = "rsq";
        private static const Se:String = "pow";
        private static const 9Z:String = "log";
        private static const 24Q:String = "exp";
        private static const z5:String = "nrm";
        private static const ZQ:String = "sin";
        private static const e2:String = "cos";
        private static const 0ac:String = "crs";
        private static const DP3:String = "dp3";
        private static const DP4:String = "dp4";
        private static const Ir:String = "abs";
        private static const 0RP:String = "neg";
        private static const 10m:String = "sat";
        private static const M33:String = "m33";
        private static const M44:String = "m44";
        private static const M34:String = "m34";
        private static const 21L:String = "ifz";
        private static const 13g:String = "inz";
        private static const 0wg:String = "ife";
        private static const 06r:String = "ine";
        private static const 2B:String = "ifg";
        private static const 1ru:String = "ifl";
        private static const O0:String = "ieg";
        private static const 0YW:String = "iel";
        private static const 1Ol:String = "els";
        private static const 1jj:String = "eif";
        private static const 4z:String = "rep";
        private static const 1uC:String = "erp";
        private static const 1wC:String = "brk";
        private static const Sg:String = "kil";
        private static const c0:String = "tex";
        private static const 0wO:String = "sge";
        private static const 1hn:String = "slt";
        private static const 1i7:String = "sgn";
        private static const 2n:String = "va";
        private static const 0vV:String = "vc";
        private static const 0IS:String = "vt";
        private static const 1QP:String = "op";
        private static const V:String = "v";
        private static const GU:String = "fc";
        private static const 0zH:String = "ft";
        private static const 1aS:String = "fs";
        private static const 0pr:String = "oc";
        private static const D2:String = "2d";
        private static const D3:String = "3d";
        private static const 0nd:String = "cube";
        private static const 1HU:String = "mipnearest";
        private static const 0aD:String = "miplinear";
        private static const RF:String = "mipnone";
        private static const 1Pr:String = "nomip";
        private static const 1Ls:String = "nearest";
        private static const LINEAR:String = "linear";
        private static const 0CZ:String = "centroid";
        private static const 0Ll:String = "single";
        private static const Jd:String = "depth";
        private static const 0TP:String = "repeat";
        private static const 1kj:String = "wrap";
        private static const 028:String = "clamp";

        private static var initialized:Boolean = false;

        private var E4:ByteArray = null;
        private var 0fE:String = "";
        private var 0Op:Boolean = false;

        public function AGALMiniAssembler(_arg1:Boolean=false):void{
            this.0Op = _arg1;
            if (!initialized)
            {
                init();
            };
        }

        private static function init():void{
            initialized = true;
            17o[1Ci] = new OpCode(1Ci, 2, 0, 0);
            17o[0lY] = new OpCode(0lY, 3, 1, 0);
            17o[Ok] = new OpCode(Ok, 3, 2, 0);
            17o[1fq] = new OpCode(1fq, 3, 3, 0);
            17o[1D6] = new OpCode(1D6, 3, 4, 0);
            17o[1ir] = new OpCode(1ir, 2, 5, 0);
            17o[0xs] = new OpCode(0xs, 3, 6, 0);
            17o[0Hg] = new OpCode(0Hg, 3, 7, 0);
            17o[1iH] = new OpCode(1iH, 2, 8, 0);
            17o[0Xj] = new OpCode(0Xj, 2, 9, 0);
            17o[1Yo] = new OpCode(1Yo, 2, 10, 0);
            17o[Se] = new OpCode(Se, 3, 11, 0);
            17o[9Z] = new OpCode(9Z, 2, 12, 0);
            17o[24Q] = new OpCode(24Q, 2, 13, 0);
            17o[z5] = new OpCode(z5, 2, 14, 0);
            17o[ZQ] = new OpCode(ZQ, 2, 15, 0);
            17o[e2] = new OpCode(e2, 2, 16, 0);
            17o[0ac] = new OpCode(0ac, 3, 17, 0);
            17o[DP3] = new OpCode(DP3, 3, 18, 0);
            17o[DP4] = new OpCode(DP4, 3, 19, 0);
            17o[Ir] = new OpCode(Ir, 2, 20, 0);
            17o[0RP] = new OpCode(0RP, 2, 21, 0);
            17o[10m] = new OpCode(10m, 2, 22, 0);
            17o[M33] = new OpCode(M33, 3, 23, 082);
            17o[M44] = new OpCode(M44, 3, 24, 082);
            17o[M34] = new OpCode(M34, 3, 25, 082);
            17o[21L] = new OpCode(21L, 1, 26, ((U- | 1YM) | 1CY));
            17o[13g] = new OpCode(13g, 1, 27, ((U- | 1YM) | 1CY));
            17o[0wg] = new OpCode(0wg, 2, 28, ((U- | 1YM) | 1CY));
            17o[06r] = new OpCode(06r, 2, 29, ((U- | 1YM) | 1CY));
            17o[2B] = new OpCode(2B, 2, 30, ((U- | 1YM) | 1CY));
            17o[1ru] = new OpCode(1ru, 2, 31, ((U- | 1YM) | 1CY));
            17o[O0] = new OpCode(O0, 2, 32, ((U- | 1YM) | 1CY));
            17o[0YW] = new OpCode(0YW, 2, 33, ((U- | 1YM) | 1CY));
            17o[1Ol] = new OpCode(1Ol, 0, 34, ((U- | 1YM) | 9F));
            17o[1jj] = new OpCode(1jj, 0, 35, (U- | 9F));
            17o[4z] = new OpCode(4z, 1, 36, ((U- | 1YM) | 1CY));
            17o[1uC] = new OpCode(1uC, 0, 37, (U- | 9F));
            17o[1wC] = new OpCode(1wC, 0, 38, U-);
            17o[Sg] = new OpCode(Sg, 1, 39, (U- | 1sC));
            17o[c0] = new OpCode(c0, 3, 40, (1sC | 0k-));
            17o[0wO] = new OpCode(0wO, 3, 41, 0);
            17o[1hn] = new OpCode(1hn, 3, 42, 0);
            17o[1i7] = new OpCode(1i7, 2, 43, 0);
            h5[2n] = new Register(2n, "vertex attribute", 0, 7, (0oG | 0Le));
            h5[0vV] = new Register(0vV, "vertex constant", 1, 127, (0oG | 0Le));
            h5[0IS] = new Register(0IS, "vertex temporary", 2, 7, ((0oG | 19e) | 0Le));
            h5[1QP] = new Register(1QP, "vertex output", 3, 0, (0oG | 19e));
            h5[V] = new Register(V, "varying", 4, 7, (((0oG | Ri) | 0Le) | 19e));
            h5[GU] = new Register(GU, "fragment constant", 1, 27, (Ri | 0Le));
            h5[0zH] = new Register(0zH, "fragment temporary", 2, 7, ((Ri | 19e) | 0Le));
            h5[1aS] = new Register(1aS, "texture sampler", 5, 7, (Ri | 0Le));
            h5[0pr] = new Register(0pr, "fragment output", 3, 0, (Ri | 19e));
            22r[D2] = new Sampler(D2, 1lU, 0);
            22r[D3] = new Sampler(D3, 1lU, 2);
            22r[0nd] = new Sampler(0nd, 1lU, 1);
            22r[1HU] = new Sampler(1HU, 186, 1);
            22r[0aD] = new Sampler(0aD, 186, 2);
            22r[RF] = new Sampler(RF, 186, 0);
            22r[1Pr] = new Sampler(1Pr, 186, 0);
            22r[1Ls] = new Sampler(1Ls, 0uQ, 0);
            22r[LINEAR] = new Sampler(LINEAR, 0uQ, 1);
            22r[0CZ] = new Sampler(0CZ, 079, (1 << 0));
            22r[0Ll] = new Sampler(0Ll, 079, (1 << 1));
            22r[Jd] = new Sampler(Jd, 079, (1 << 2));
            22r[0TP] = new Sampler(0TP, 1, 1);
            22r[1kj] = new Sampler(1kj, 1, 1);
            22r[028] = new Sampler(028, 1, 0);
        }


        public function get error():String{
            return (this.0fE);
        }

        public function get kr():ByteArray{
            return (this.E4);
        }

        public function 0-u(_arg1:String, _arg2:String, _arg3:Boolean=false):ByteArray{
            var _local9:int;
            var _local11:String;
            var _local12:int;
            var _local13:int;
            var _local14:Array;
            var _local15:Array;
            var _local16:OpCode;
            var _local17:Array;
            var _local18:Boolean;
            var _local19:uint;
            var _local20:uint;
            var _local21:int;
            var _local22:Boolean;
            var _local23:Array;
            var _local24:Array;
            var _local25:Register;
            var _local26:Array;
            var _local27:uint;
            var _local28:uint;
            var _local29:Array;
            var _local30:Boolean;
            var _local31:Boolean;
            var _local32:uint;
            var _local33:uint;
            var _local34:int;
            var _local35:uint;
            var _local36:uint;
            var _local37:int;
            var _local38:Array;
            var _local39:Register;
            var _local40:Array;
            var _local41:Array;
            var _local42:uint;
            var _local43:uint;
            var _local44:Number;
            var _local45:Sampler;
            var _local46:String;
            var _local47:uint;
            var _local48:uint;
            var _local49:String;
            var _local4:uint = getTimer();
            this.E4 = new ByteArray();
            this.0fE = "";
            var _local5:Boolean;
            if (_arg1 == FRAGMENT)
            {
                _local5 = true;
            } else
            {
                if (_arg1 != VERTEX)
                {
                    this.0fE = (((((('ERROR: mode needs to be "' + FRAGMENT) + '" or "') + VERTEX) + '" but is "') + _arg1) + '".');
                };
            };
            this.kr.endian = Endian.LITTLE_ENDIAN;
            this.kr.writeByte(160);
            this.kr.writeUnsignedInt(1);
            this.kr.writeByte(161);
            this.kr.writeByte(((_local5) ? 1 : 0));
            var _local6:Array = _arg2.replace(/[\f\n\r\v]+/g, "\n").split("\n");
            var _local7:int;
            var _local8:int;
            var _local10:int = _local6.length;
            _local9 = 0;
            while ((((_local9 < _local10)) && ((this.0fE == ""))))
            {
                _local11 = new String(_local6[_local9]);
                _local12 = _local11.search("//");
                if (_local12 != -1)
                {
                    _local11 = _local11.slice(0, _local12);
                };
                _local13 = _local11.search(/<.*>/g);
                if (_local13 != -1)
                {
                    _local14 = _local11.slice(_local13).match(/([\w\.\-\+]+)/gi);
                    _local11 = _local11.slice(0, _local13);
                };
                _local15 = _local11.match(/^\w{3}/ig);
                _local16 = 17o[_local15[0]];
                if (this.0Op)
                {
                    trace(_local16);
                };
                if (_local16 == null)
                {
                    if (_local11.length >= 3)
                    {
                        trace(((("warning: bad line " + _local9) + ": ") + _local6[_local9]));
                    };
                } else
                {
                    _local11 = _local11.slice((_local11.search(_local16.name) + _local16.name.length));
                    if ((_local16.flags & 9F))
                    {
                        --_local7;
                        if (_local7 < 0)
                        {
                            this.0fE = "error: conditional closes without open.";
                            break;
                        };
                    };
                    if ((_local16.flags & 1YM))
                    {
                        _local7++;
                        if (_local7 > 1n0)
                        {
                            this.0fE = (("error: nesting to deep, maximum allowed is " + 1n0) + ".");
                            break;
                        };
                    };
                    if ((((_local16.flags & 1sC)) && (!(_local5))))
                    {
                        this.0fE = "error: opcode is only allowed in fragment programs.";
                        break;
                    };
                    if (_arg3)
                    {
                        trace(("emit opcode=" + _local16));
                    };
                    this.kr.writeUnsignedInt(_local16.emitCode);
                    _local8++;
                    if (_local8 > Ce)
                    {
                        this.0fE = (("error: too many opcodes. maximum is " + Ce) + ".");
                        break;
                    };
                    _local17 = _local11.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi);
                    if (_local17.length != _local16.numRegister)
                    {
                        this.0fE = (((("error: wrong number of operands. found " + _local17.length) + " but expected ") + _local16.numRegister) + ".");
                        break;
                    };
                    _local18 = false;
                    _local19 = ((64 + 64) + 32);
                    _local20 = _local17.length;
                    _local21 = 0;
                    while (_local21 < _local20)
                    {
                        _local22 = false;
                        _local23 = _local17[_local21].match(/\[.*\]/ig);
                        if (_local23.length > 0)
                        {
                            _local17[_local21] = _local17[_local21].replace(_local23[0], "0");
                            if (_arg3)
                            {
                                trace("IS REL");
                            };
                            _local22 = true;
                        };
                        _local24 = _local17[_local21].match(/^\b[A-Za-z]{1,2}/ig);
                        _local25 = h5[_local24[0]];
                        if (this.0Op)
                        {
                            trace(_local25);
                        };
                        if (_local25 == null)
                        {
                            this.0fE = (((("error: could not parse operand " + _local21) + " (") + _local17[_local21]) + ").");
                            _local18 = true;
                            break;
                        };
                        if (_local5)
                        {
                            if (!(_local25.flags & Ri))
                            {
                                this.0fE = (((("error: register operand " + _local21) + " (") + _local17[_local21]) + ") only allowed in vertex programs.");
                                _local18 = true;
                                break;
                            };
                            if (_local22)
                            {
                                this.0fE = (((("error: register operand " + _local21) + " (") + _local17[_local21]) + ") relative adressing not allowed in fragment programs.");
                                _local18 = true;
                                break;
                            };
                        } else
                        {
                            if (!(_local25.flags & 0oG))
                            {
                                this.0fE = (((("error: register operand " + _local21) + " (") + _local17[_local21]) + ") only allowed in fragment programs.");
                                _local18 = true;
                                break;
                            };
                        };
                        _local17[_local21] = _local17[_local21].slice((_local17[_local21].search(_local25.name) + _local25.name.length));
                        _local26 = ((_local22) ? _local23[0].match(/\d+/) : _local17[_local21].match(/\d+/));
                        _local27 = 0;
                        if (_local26)
                        {
                            _local27 = uint(_local26[0]);
                        };
                        if (_local25.range < _local27)
                        {
                            this.0fE = (((((("error: register operand " + _local21) + " (") + _local17[_local21]) + ") index exceeds limit of ") + (_local25.range + 1)) + ".");
                            _local18 = true;
                            break;
                        };
                        _local28 = 0;
                        _local29 = _local17[_local21].match(/(\.[xyzw]{1,4})/);
                        _local30 = (((_local21 == 0)) && (!((_local16.flags & U-))));
                        _local31 = (((_local21 == 2)) && ((_local16.flags & 0k-)));
                        _local32 = 0;
                        _local33 = 0;
                        _local34 = 0;
                        if (((_local30) && (_local22)))
                        {
                            this.0fE = "error: relative can not be destination";
                            _local18 = true;
                            break;
                        };
                        if (_local29)
                        {
                            _local28 = 0;
                            _local36 = _local29[0].length;
                            _local37 = 1;
                            while (_local37 < _local36)
                            {
                                _local35 = (_local29[0].charCodeAt(_local37) - "x".charCodeAt(0));
                                if (_local35 > 2)
                                {
                                    _local35 = 3;
                                };
                                if (_local30)
                                {
                                    _local28 = (_local28 | (1 << _local35));
                                } else
                                {
                                    _local28 = (_local28 | (_local35 << ((_local37 - 1) << 1)));
                                };
                                _local37++;
                            };
                            if (!_local30)
                            {
                                while (_local37 <= 4)
                                {
                                    _local28 = (_local28 | (_local35 << ((_local37 - 1) << 1)));
                                    _local37++;
                                };
                            };
                        } else
                        {
                            _local28 = ((_local30) ? 15 : 228);
                        };
                        if (_local22)
                        {
                            _local38 = _local23[0].match(/[A-Za-z]{1,2}/ig);
                            _local39 = h5[_local38[0]];
                            if (_local39 == null)
                            {
                                this.0fE = "error: bad index register";
                                _local18 = true;
                                break;
                            };
                            _local32 = _local39.emitCode;
                            _local40 = _local23[0].match(/(\.[xyzw]{1,1})/);
                            if (_local40.length == 0)
                            {
                                this.0fE = "error: bad index register select";
                                _local18 = true;
                                break;
                            };
                            _local33 = (_local40[0].charCodeAt(1) - "x".charCodeAt(0));
                            if (_local33 > 2)
                            {
                                _local33 = 3;
                            };
                            _local41 = _local23[0].match(/\+\d{1,3}/ig);
                            if (_local41.length > 0)
                            {
                                _local34 = _local41[0];
                            };
                            if ((((_local34 < 0)) || ((_local34 > 0xFF))))
                            {
                                this.0fE = (("error: index offset " + _local34) + " out of bounds. [0..255]");
                                _local18 = true;
                                break;
                            };
                            if (_arg3)
                            {
                                trace(((((((((((("RELATIVE: type=" + _local32) + "==") + _local38[0]) + " sel=") + _local33) + "==") + _local40[0]) + " idx=") + _local27) + " offset=") + _local34));
                            };
                        };
                        if (_arg3)
                        {
                            trace((((((("  emit argcode=" + _local25) + "[") + _local27) + "][") + _local28) + "]"));
                        };
                        if (_local30)
                        {
                            this.kr.writeShort(_local27);
                            this.kr.writeByte(_local28);
                            this.kr.writeByte(_local25.emitCode);
                            _local19 = (_local19 - 32);
                        } else
                        {
                            if (_local31)
                            {
                                if (_arg3)
                                {
                                    trace("  emit sampler");
                                };
                                _local42 = 5;
                                _local43 = _local14.length;
                                _local44 = 0;
                                _local37 = 0;
                                while (_local37 < _local43)
                                {
                                    if (_arg3)
                                    {
                                        trace(("    opt: " + _local14[_local37]));
                                    };
                                    _local45 = 22r[_local14[_local37]];
                                    if (_local45 == null)
                                    {
                                        _local44 = Number(_local14[_local37]);
                                        if (_arg3)
                                        {
                                            trace(("    bias: " + _local44));
                                        };
                                    } else
                                    {
                                        if (_local45.flag != 079)
                                        {
                                            _local42 = (_local42 & ~((15 << _local45.flag)));
                                        };
                                        _local42 = (_local42 | (uint(_local45.mask) << uint(_local45.flag)));
                                    };
                                    _local37++;
                                };
                                this.kr.writeShort(_local27);
                                this.kr.writeByte(int((_local44 * 8)));
                                this.kr.writeByte(0);
                                this.kr.writeUnsignedInt(_local42);
                                if (_arg3)
                                {
                                    trace(("    bits: " + (_local42 - 5)));
                                };
                                _local19 = (_local19 - 64);
                            } else
                            {
                                if (_local21 == 0)
                                {
                                    this.kr.writeUnsignedInt(0);
                                    _local19 = (_local19 - 32);
                                };
                                this.kr.writeShort(_local27);
                                this.kr.writeByte(_local34);
                                this.kr.writeByte(_local28);
                                this.kr.writeByte(_local25.emitCode);
                                this.kr.writeByte(_local32);
                                this.kr.writeShort(((_local22) ? (_local33 | (1 << 15)) : 0));
                                _local19 = (_local19 - 64);
                            };
                        };
                        _local21++;
                    };
                    _local21 = 0;
                    while (_local21 < _local19)
                    {
                        this.kr.writeByte(0);
                        _local21 = (_local21 + 8);
                    };
                    if (_local18) break;
                };
                _local9++;
            };
            if (this.0fE != "")
            {
                this.0fE = (this.0fE + ((("\n  at line " + _local9) + " ") + _local6[_local9]));
                this.kr.length = 0;
                trace(this.0fE);
            };
            if (this.0Op)
            {
                _local46 = "generated bytecode:";
                _local47 = this.kr.length;
                _local48 = 0;
                while (_local48 < _local47)
                {
                    if (!(_local48 % 16))
                    {
                        _local46 = (_local46 + "\n");
                    };
                    if (!(_local48 % 4))
                    {
                        _local46 = (_local46 + " ");
                    };
                    _local49 = this.kr[_local48].toString(16);
                    if (_local49.length < 2)
                    {
                        _local49 = ("0" + _local49);
                    };
                    _local46 = (_local46 + _local49);
                    _local48++;
                };
                trace(_local46);
            };
            if (_arg3)
            {
                trace((("AGALMiniAssembler.assemble time: " + ((getTimer() - _local4) / 1000)) + "s"));
            };
            return (this.kr);
        }


    }
}//package gY

class OpCode {

    private var _emitCode:uint;
    private var _flags:uint;
    private var _name:String;
    private var _numRegister:uint;

    public function OpCode(_arg1:String, _arg2:uint, _arg3:uint, _arg4:uint){
        this._name = _arg1;
        this._numRegister = _arg2;
        this._emitCode = _arg3;
        this._flags = _arg4;
    }

    public function get emitCode():uint{
        return (this._emitCode);
    }

    public function get flags():uint{
        return (this._flags);
    }

    public function get name():String{
        return (this._name);
    }

    public function get numRegister():uint{
        return (this._numRegister);
    }

    public function toString():String{
        return ((((((((('[OpCode name="' + this._name) + '", numRegister=') + this._numRegister) + ", emitCode=") + this._emitCode) + ", flags=") + this._flags) + "]"));
    }


}
class Register {

    private var _emitCode:uint;
    private var _name:String;
    private var _longName:String;
    private var _flags:uint;
    private var _range:uint;

    public function Register(_arg1:String, _arg2:String, _arg3:uint, _arg4:uint, _arg5:uint){
        this._name = _arg1;
        this._longName = _arg2;
        this._emitCode = _arg3;
        this._range = _arg4;
        this._flags = _arg5;
    }

    public function get emitCode():uint{
        return (this._emitCode);
    }

    public function get longName():String{
        return (this._longName);
    }

    public function get name():String{
        return (this._name);
    }

    public function get flags():uint{
        return (this._flags);
    }

    public function get range():uint{
        return (this._range);
    }

    public function toString():String{
        return ((((((((((('[Register name="' + this._name) + '", longName="') + this._longName) + '", emitCode=') + this._emitCode) + ", range=") + this._range) + ", flags=") + this._flags) + "]"));
    }


}
class Sampler {

    private var _flag:uint;
    private var _mask:uint;
    private var _name:String;

    public function Sampler(_arg1:String, _arg2:uint, _arg3:uint){
        this._name = _arg1;
        this._flag = _arg2;
        this._mask = _arg3;
    }

    public function get flag():uint{
        return (this._flag);
    }

    public function get mask():uint{
        return (this._mask);
    }

    public function get name():String{
        return (this._name);
    }

    public function toString():String{
        return ((((((('[Sampler name="' + this._name) + '", flag="') + this._flag) + '", mask=') + this.mask) + "]"));
    }


}

