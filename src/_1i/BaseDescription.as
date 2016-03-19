// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1i-.BaseDescription

package _1i{
    import flash.errors.IllegalOperationError;

    public class BaseDescription implements Description {

        private static const _2S:Object = {
            '"': '\\"',
            "\n": "\\n",
            "\r": "\\r",
            "\t": "\\t"
        }


        public function _1n8(_arg1:_0TR):Description{
            _arg1.describeTo(this);
            return (this);
        }

        private function _00R(_arg1:Object):void{
            String(_arg1).split("").forEach(Ah);
        }

        private function _0M(_arg1:Object, _arg2:int=0, _arg3:Array=null):SelfDescribingValue{
            return (new SelfDescribingValue(_arg1));
        }

        public function _1dS(_arg1:_1o, _arg2):Description{
            _arg1.describeMismatch(_arg2, this);
            return (this);
        }

        public function appendText(_arg1:String):Description{
            append(_arg1);
            return (this);
        }

        public function _1jS(_arg1:String, _arg2:String, _arg3:String, _arg4:Array):Description{
            return (_1PN(_arg1, _arg2, _arg3, _arg4.map(_0M)));
        }

        public function _1VJ(_arg1:Object):Description{
            if (_arg1 == null)
            {
                append("null");
            } else
            {
                if ((_arg1 is String))
                {
                    append('"');
                    _00R(_arg1);
                    append('"');
                } else
                {
                    if ((_arg1 is Number))
                    {
                        append("<");
                        append(_arg1);
                        append(">");
                    } else
                    {
                        if ((_arg1 is int))
                        {
                            append("<");
                            append(_arg1);
                            append(">");
                        } else
                        {
                            if ((_arg1 is uint))
                            {
                                append("<");
                                append(_arg1);
                                append(">");
                            } else
                            {
                                if ((_arg1 is Array))
                                {
                                    _1jS("[", ",", "]", (_arg1 as Array));
                                } else
                                {
                                    if ((_arg1 is XML))
                                    {
                                        append(XML(_arg1).toXMLString());
                                    } else
                                    {
                                        append("<");
                                        append(_arg1);
                                        append(">");
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return (this);
        }

        public function _1PN(_arg1:String, _arg2:String, _arg3:String, _arg4:Array):Description{
            var _local6:Object;
            var _local5:Boolean;
            append(_arg1);
            for each (_local6 in _arg4)
            {
                if (_local5)
                {
                    append(_arg2);
                }
                if ((_local6 is _0TR))
                {
                    _1n8((_local6 as _0TR));
                } else
                {
                    _1VJ(_local6);
                }
                _local5 = true;
            }
            append(_arg3);
            return (this);
        }

        protected function append(_arg1:Object):void{
            throw (new IllegalOperationError("BaseDescription#append is abstract and must be overriden by a subclass"));
        }

        public function toString():String{
            throw (new IllegalOperationError("BaseDescription#toString is abstract and must be overriden by a subclass"));
        }

        private function Ah(_arg1:String, _arg2:int=0, _arg3:Array=null):void{
            append(((_2S[_arg1]) || (_arg1)));
        }


    }
}

import _1i.Description;
import _1i._0TR;

class SelfDescribingValue implements _0TR {

    private var _value:Object;

    public function SelfDescribingValue(_arg1:Object){
        _value = _arg1;
    }

    public function describeTo(_arg1:Description):void{
        _arg1._1VJ(_value);
    }


}

