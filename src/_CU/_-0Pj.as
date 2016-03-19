// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_CU.0Pj

package _CU{
    import 1n4.1cA;
    import 1n4.1WS;
    import flash.text.TextFieldAutoSize;
    import flash.text.TextFormatAlign;
    import flash.filters.DropShadowFilter;

    public class 0Pj {

        private var 14A:int = -1;
        private var 1Zr:int = -1;


        public function 1RD(_arg1:String, _arg2:int=-1, _arg3:int=-1, _arg4:int=16, _arg5:int=0xFFFFFF, _arg6:int=-1, _arg7:int=-1):_13j{
            var _local8:_13j = new _13j();
            _local8.setStringBuilder(new 1cA().setParams(_arg1));
            return (this.Hg(_local8, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7));
        }

        public function 0x2(_arg1:String, _arg2:int=-1, _arg3:int=-1, _arg4:int=16, _arg5:int=0xFFFFFF, _arg6:int=-1, _arg7:int=-1):_13j{
            var _local8:_13j = new _13j();
            _local8.setStringBuilder(new 1WS(_arg1));
            return (this.Hg(_local8, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7));
        }

        public function 1Aq(_arg1:String, _arg2:int=-1, _arg3:int=-1, _arg4:int=16, _arg5:int=0xFFFFFF, _arg6:int=-1, _arg7:int=-1):_13j{
            var _local8:_13j = new _13j();
            return (this.Hg(_local8, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7));
        }

        public function 1DO(_arg1:_13j, _arg2:int=-1, _arg3:int=-1, _arg4:int=16, _arg5:int=0xFFFFFF, _arg6:int=-1, _arg7:int=-1):_13j{
            return (this.Hg(_arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7));
        }

        private function Hg(_arg1:_13j, _arg2:int=-1, _arg3:int=-1, _arg4:int=16, _arg5:int=0xFFFFFF, _arg6:int=-1, _arg7:int=-1):_13j{
            _arg1.setSize(_arg4).setColor(_arg5);
            if (((!((_arg6 == -1))) && (!((_arg7 == -1)))))
            {
                _arg1.setTextWidth((_arg6 - (_arg7 * 2)));
            } else
            {
                if (((!((this.xE == -1))) && (!((this.0P5 == -1)))))
                {
                    _arg1.setTextWidth((this.xE - (this.0P5 * 2)));
                }
            }
            _arg1.setBold(true);
            _arg1.setWordWrap(true);
            _arg1.setMultiLine(true);
            _arg1.setAutoSize(TextFieldAutoSize.CENTER);
            _arg1.setHorizontalAlign(TextFormatAlign.CENTER);
            _arg1.filters = [new DropShadowFilter(0, 0, 0)];
            if (_arg2 != -1)
            {
                _arg1.x = _arg2;
            }
            if (_arg3 != -1)
            {
                _arg1.y = _arg3;
            }
            return (_arg1);
        }

        public function get xE():int{
            return (this.14A);
        }

        public function set xE(_arg1:int):void{
            this.14A = _arg1;
        }

        public function get 0P5():int{
            return (this.1Zr);
        }

        public function set 0P5(_arg1:int):void{
            this.1Zr = _arg1;
        }


    }
}//package _CU

