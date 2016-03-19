// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1hz.1Dv

package 1hz{
    import flash.utils.ByteArray;
    import flash.display.BitmapData;

    public class 1Dv {

        private static const 05:int = 1229472850;
        private static const 1hF:int = 1229209940;
        private static const OP:int = 1950701684;
        private static const 1z2:int = 1767135348;
        private static const 0il:int = 2052348020;
        private static const 0lS:int = 1229278788;

        private static var 1ws:uint;
        private static var 0VR:uint;
        private static var 3t:int;
        private static var 0pg:int;
        private static var 1-G:int;
        private static var 1Yc:int;
        private static var 0SH:int;
        private static var 0js:ByteArray;
        private static var buffer:ByteArray;
        private static var 0Ii:int;
        private static var 18o:int;


        public static function 0fq(_arg1:ByteArray):BitmapData{
            var _local4:Boolean;
            var _local5:int;
            if (_arg1 == null)
            {
                return (null);
            }
            0js = _arg1;
            buffer = new ByteArray();
            18o = 4;
            0js.position = 0;
            if (0js.readUnsignedInt() != 2303741511)
            {
                return (0Ni());
            }
            if (0js.readUnsignedInt() != 218765834)
            {
                return (0Ni());
            }
            var _local2:Array = 1ol();
            var _local3:int;
            _local5 = 0;
            while (_local5 < _local2.length)
            {
                0js.position = _local2[_local5].position;
                _local4 = true;
                if (_local2[_local5].type == 05)
                {
                    _local3++;
                    if (_local5 == 0)
                    {
                        _local4 = aG(_local2[_local5].length);
                    } else
                    {
                        _local4 = false;
                    }
                }
                if (_local2[_local5].type == 1hF)
                {
                    buffer.writeBytes(0js, 0js.position, _local2[_local5].length);
                }
                if (((!(_local4)) || ((_local3 > 1))))
                {
                    return (0Ni());
                }
                _local5++;
            }
            var _local6:BitmapData = am();
            0js = null;
            buffer = null;
            return (_local6);
        }

        public static function 0oY(_arg1:ByteArray):XML{
            var _local4:int;
            if (_arg1 == null)
            {
                return (null);
            }
            0js = _arg1;
            0js.position = 0;
            if (0js.readUnsignedInt() != 2303741511)
            {
                0js = null;
                return (null);
            }
            if (0js.readUnsignedInt() != 218765834)
            {
                0js = null;
                return (null);
            }
            var _local2:Array = 1ol();
            var _local3:XML = <information/>
            ;
            _local4 = 0;
            while (_local4 < _local2.length)
            {
                if (_local2[_local4].type == OP)
                {
                    _local3.appendChild(0rs(_local2[_local4].position, _local2[_local4].length));
                }
                if (_local2[_local4].type == 1z2)
                {
                    _local3.appendChild(070(_local2[_local4].position, _local2[_local4].length));
                }
                if (_local2[_local4].type == 0il)
                {
                    _local3.appendChild(T7(_local2[_local4].position, _local2[_local4].length));
                }
                _local4++;
            }
            0js = null;
            return (_local3);
        }

        private static function 0rs(_arg1:int, _arg2:int):XML{
            var _local3:XML = <tEXt/>
            ;
            var _local4 = "";
            var _local5 = "";
            var _local6:int = -1;
            0js.position = _arg1;
            while (0js.position < (_arg1 + _arg2))
            {
                _local6 = 0js.readUnsignedByte();
                if (_local6 > 0)
                {
                    _local4 = (_local4 + String.fromCharCode(_local6));
                } else
                {
                    break;
                }
            }
            _local5 = 0js.readUTFBytes(((_arg1 + _arg2) - 0js.position));
            _local3.appendChild(new XML((("<keyword>" + _local4) + "</keyword>")));
            _local3.appendChild(new XML((("<text>" + _local5) + "</text>")));
            return (_local3);
        }

        private static function T7(_arg1:int, _arg2:int):XML{
            var _local8:ByteArray;
            var _local3:XML = <zTXt/>
            ;
            var _local4 = "";
            var _local5 = "";
            var _local6:int = -1;
            0js.position = _arg1;
            while (0js.position < (_arg1 + _arg2))
            {
                _local6 = 0js.readUnsignedByte();
                if (_local6 > 0)
                {
                    _local4 = (_local4 + String.fromCharCode(_local6));
                } else
                {
                    break;
                }
            }
            var _local7:int = 0js.readUnsignedByte();
            if (_local7 == 0)
            {
                _local8 = new ByteArray();
                _local8.writeBytes(0js, 0js.position, ((_arg1 + _arg2) - 0js.position));
                _local8.uncompress();
                _local5 = _local8.readUTFBytes(_local8.length);
            }
            _local3.appendChild(new XML((("<keyword>" + _local4) + "</keyword>")));
            _local3.appendChild(new XML((("<text>" + _local5) + "</text>")));
            return (_local3);
        }

        private static function 070(_arg1:int, _arg2:int):XML{
            var _local11:ByteArray;
            var _local3:XML = <iTXt/>
            ;
            var _local4 = "";
            var _local5 = "";
            var _local6 = "";
            var _local7 = "";
            var _local8:int = -1;
            0js.position = _arg1;
            while (0js.position < (_arg1 + _arg2))
            {
                _local8 = 0js.readUnsignedByte();
                if (_local8 > 0)
                {
                    _local4 = (_local4 + String.fromCharCode(_local8));
                } else
                {
                    break;
                }
            }
            var _local9 = (0js.readUnsignedByte() == 1);
            var _local10:int = 0js.readUnsignedByte();
            while (0js.position < (_arg1 + _arg2))
            {
                _local8 = 0js.readUnsignedByte();
                if (_local8 > 0)
                {
                    _local5 = (_local5 + String.fromCharCode(_local8));
                } else
                {
                    break;
                }
            }
            while (0js.position < (_arg1 + _arg2))
            {
                _local8 = 0js.readUnsignedByte();
                if (_local8 > 0)
                {
                    _local6 = (_local6 + String.fromCharCode(_local8));
                } else
                {
                    break;
                }
            }
            if (_local9)
            {
                if (_local10 == 0)
                {
                    _local11 = new ByteArray();
                    _local11.writeBytes(0js, 0js.position, ((_arg1 + _arg2) - 0js.position));
                    _local11.uncompress();
                    _local7 = _local11.readUTFBytes(_local11.length);
                }
            } else
            {
                _local7 = 0js.readUTFBytes(((_arg1 + _arg2) - 0js.position));
            }
            _local3.appendChild(new XML((("<keyword>" + _local4) + "</keyword>")));
            _local3.appendChild(new XML((("<text>" + _local7) + "</text>")));
            _local3.appendChild(new XML((("<languageTag>" + _local5) + "</languageTag>")));
            _local3.appendChild(new XML((("<translatedKeyword>" + _local6) + "</translatedKeyword>")));
            return (_local3);
        }

        private static function 0Ni():BitmapData{
            0js = null;
            buffer = null;
            return (null);
        }

        private static function 1ol():Array{
            var _local2:uint;
            var _local3:int;
            var _local1:Array = [];
            do 
            {
                _local2 = 0js.readUnsignedInt();
                _local3 = 0js.readInt();
                _local1.push({
                    type:_local3,
                    position:0js.position,
                    length:_local2
                });
                0js.position = (0js.position + (_local2 + 4));
            } while (((!((_local3 == 0lS))) && ((0js.bytesAvailable > 0))));
            return (_local1);
        }

        private static function aG(_arg1:int):Boolean{
            if (_arg1 != 13)
            {
                return (false);
            }
            1ws = 0js.readUnsignedInt();
            0VR = 0js.readUnsignedInt();
            3t = 0js.readUnsignedByte();
            0pg = 0js.readUnsignedByte();
            1-G = 0js.readUnsignedByte();
            1Yc = 0js.readUnsignedByte();
            0SH = 0js.readUnsignedByte();
            if ((((1ws <= 0)) || ((0VR <= 0))))
            {
                return (false);
            }
            switch (3t)
            {
                case 1:
                case 2:
                case 4:
                case 8:
                case 16:
                    break;
                    return (false);
            }
            switch (0pg)
            {
                case 0:
                    if (((((((((!((3t == 1))) && (!((3t == 2))))) && (!((3t == 4))))) && (!((3t == 8))))) && (!((3t == 16)))))
                    {
                        return (false);
                    }
                    break;
                case 2:
                case 4:
                case 6:
                    if (((!((3t == 8))) && (!((3t == 16)))))
                    {
                        return (false);
                    }
                    break;
                case 3:
                    if (((((((!((3t == 1))) && (!((3t == 2))))) && (!((3t == 4))))) && (!((3t == 8)))))
                    {
                        return (false);
                    }
                    break;
                    return (false);
            }
            if (((!((1-G == 0))) || (!((1Yc == 0)))))
            {
                return (false);
            }
            if (((!((0SH == 0))) && (!((0SH == 1)))))
            {
                return (false);
            }
            return (true);
        }

        private static function am():BitmapData{
            var bufferLen:uint;
            var filter:int;
            var i:int;
            var r:uint;
            var g:uint;
            var b:uint;
            var a:uint;
            var bd:BitmapData = new BitmapData(1ws, 0VR);
            try
            {
                buffer.uncompress();
            } catch(err)
            {
                return (null);
            }
            0Ii = 0;
            bufferLen = buffer.length;
            while (buffer.position < bufferLen)
            {
                filter = buffer.readUnsignedByte();
                if (filter == 0)
                {
                    i = 0;
                    while (i < 1ws)
                    {
                        r = (Hv() << 16);
                        g = (Hv() << 8);
                        b = Hv();
                        a = (Hv() << 24);
                        bd.setPixel32(i, 0Ii, (((a + r) + g) + b));
                        i = (i + 1);
                    }
                } else
                {
                    if (filter == 1)
                    {
                        i = 0;
                        while (i < 1ws)
                        {
                            r = (1xR() << 16);
                            g = (1xR() << 8);
                            b = 1xR();
                            a = (1xR() << 24);
                            bd.setPixel32(i, 0Ii, (((a + r) + g) + b));
                            i = (i + 1);
                        }
                    } else
                    {
                        if (filter == 2)
                        {
                            i = 0;
                            while (i < 1ws)
                            {
                                r = (Px() << 16);
                                g = (Px() << 8);
                                b = Px();
                                a = (Px() << 24);
                                bd.setPixel32(i, 0Ii, (((a + r) + g) + b));
                                i = (i + 1);
                            }
                        } else
                        {
                            if (filter == 3)
                            {
                                i = 0;
                                while (i < 1ws)
                                {
                                    r = (VP() << 16);
                                    g = (VP() << 8);
                                    b = VP();
                                    a = (VP() << 24);
                                    bd.setPixel32(i, 0Ii, (((a + r) + g) + b));
                                    i = (i + 1);
                                }
                            } else
                            {
                                if (filter == 4)
                                {
                                    i = 0;
                                    while (i < 1ws)
                                    {
                                        r = (_1aA() << 16);
                                        g = (_1aA() << 8);
                                        b = _1aA();
                                        a = (_1aA() << 24);
                                        bd.setPixel32(i, 0Ii, (((a + r) + g) + b));
                                        i = (i + 1);
                                    }
                                } else
                                {
                                    buffer.position = (buffer.position + (18o * 1ws));
                                }
                            }
                        }
                    }
                }
                0Ii++;
            }
            return (bd);
        }

        private static function Hv():uint{
            return (buffer[buffer.position++]);
        }

        private static function 1xR():uint{
            var _local1:uint = (buffer[buffer.position] + 0Y6());
            _local1 = (_local1 & 0xFF);
            var _local2 = buffer.position++;
            buffer[_local2] = _local1;
            return (_local1);
        }

        private static function Px():uint{
            var _local1:uint = (buffer[buffer.position] + 0Za());
            _local1 = (_local1 & 0xFF);
            var _local2 = buffer.position++;
            buffer[_local2] = _local1;
            return (_local1);
        }

        private static function VP():uint{
            var _local1:uint = (buffer[buffer.position] + Math.floor(((0Y6() + 0Za()) / 2)));
            _local1 = (_local1 & 0xFF);
            var _local2 = buffer.position++;
            buffer[_local2] = _local1;
            return (_local1);
        }

        private static function _1aA():uint{
            var _local1:uint = (buffer[buffer.position] + 0lE());
            _local1 = (_local1 & 0xFF);
            var _local2 = buffer.position++;
            buffer[_local2] = _local1;
            return (_local1);
        }

        private static function 0lE():uint{
            var _local1:uint = 0Y6();
            var _local2:uint = 0Za();
            var _local3:uint = 1QJ();
            var _local4:int;
            var _local5:int;
            var _local6:int;
            var _local7:int;
            var _local8:int;
            _local4 = ((_local1 + _local2) - _local3);
            _local5 = Math.abs((_local4 - _local1));
            _local6 = Math.abs((_local4 - _local2));
            _local7 = Math.abs((_local4 - _local3));
            if ((((_local5 <= _local6)) && ((_local5 <= _local7))))
            {
                _local8 = _local1;
            } else
            {
                if (_local6 <= _local7)
                {
                    _local8 = _local2;
                } else
                {
                    _local8 = _local3;
                }
            }
            return (_local8);
        }

        private static function 0Y6():uint{
            var _local1:int = (0Ii * ((1ws * 18o) + 1));
            var _local2:int = (buffer.position - 18o);
            if (_local2 <= _local1)
            {
                return (0);
            }
            return (buffer[_local2]);
        }

        private static function 0Za():uint{
            var _local1:int = (buffer.position - ((1ws * 18o) + 1));
            if (_local1 < 0)
            {
                return (0);
            }
            return (buffer[_local1]);
        }

        private static function 1QJ():uint{
            var _local1:int = (buffer.position - ((1ws * 18o) + 1));
            if (_local1 < 0)
            {
                return (0);
            }
            var _local2:int = ((0Ii - 1) * ((1ws * 18o) + 1));
            _local1 = (_local1 - 18o);
            if (_local1 <= _local2)
            {
                return (0);
            }
            return (buffer[_local1]);
        }


    }
}//package 1hz

