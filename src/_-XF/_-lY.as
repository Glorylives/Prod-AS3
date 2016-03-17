// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//XF.lY

package XF{
    import flash.events.IEventDispatcher;
    import flash.utils.getQualifiedClassName;
    import flash.events.Event;
    import _Jy.0Y4;

    public class lY extends Wb {

        private var 7J:Function = null;

        public function lY(_arg1:IEventDispatcher, _arg2:String, _arg3:Class=null, ... _args){
            super(_arg1, _arg2, _arg3);
            this.valueClasses = _args;
        }

        protected function get 0uG():Function{
            return (this.7J);
        }

        override public function get eventClass():Class{
            return (Ty);
        }

        override public function set eventClass(_arg1:Class):void{
            Ty = _arg1;
        }

        override public function set valueClasses(_arg1:Array):void{
            0Sq = ((_arg1) ? _arg1.slice() : []);
            var _local2:int = 0Sq.length;
            while (_local2--)
            {
                if (!(0Sq[_local2] is Class))
                {
                    throw (new ArgumentError((((((("Invalid valueClasses argument: " + "item at index ") + _local2) + " should be a Class but was:<") + 0Sq[_local2]) + ">.") + getQualifiedClassName(0Sq[_local2]))));
                };
            };
        }

        public function 0jh(... _args):lY{
            var objectListOrFunction:Array = _args;
            if ((((objectListOrFunction.length == 1)) && ((objectListOrFunction[0] is Function))))
            {
                this.7J = (objectListOrFunction[0] as Function);
                if (this.7J.length > 1)
                {
                    throw (new ArgumentError((("Mapping function has " + this.7J.length) + " arguments but it needs zero or one of type Event")));
                };
            } else
            {
                this.7J = function ():Object{
                    return (objectListOrFunction);
                };
            };
            return (this);
        }

        protected function w5(_arg1:Event):Object{
            if (this.0uG != null)
            {
                if (this.0uG.length == 1)
                {
                    return (this.0uG(_arg1));
                };
                return (this.0uG());
            };
            if (valueClasses.length == 0)
            {
                return ([]);
            };
            throw (new ArgumentError((("There are valueClasses set to be dispatched <" + valueClasses) + "> but mappingFunction is null.")));
        }

        override public function dispatchEvent(_arg1:Event):Boolean{
            var _local4:Array;
            var _local5:Object;
            var _local6:Class;
            var _local7:int;
            var _local2:Object = this.w5(_arg1);
            var _local3:int = valueClasses.length;
            if ((_local2 is Array))
            {
                _local4 = (_local2 as Array);
                _local7 = 0;
                while (_local7 < _local3)
                {
                    _local5 = _local4[_local7];
                    _local6 = valueClasses[_local7];
                    if ((((_local5 === null)) || ((_local5 is _local6))))
                    {
                    } else
                    {
                        throw (new ArgumentError((((("Value object <" + _local5) + "> is not an instance of <") + _local6) + ">.")));
                    };
                    _local7++;
                };
            } else
            {
                if (_local3 > 1)
                {
                    throw (new ArgumentError("Expected more than one value."));
                };
                if (!(_local2 is valueClasses[0]))
                {
                    throw (new ArgumentError((((("Mapping returned " + getQualifiedClassName(_local2)) + ", expected ") + valueClasses[0]) + ".")));
                };
            };
            return (super.dispatchEvent(_arg1));
        }

        override protected function onNativeEvent(_arg1:Event):void{
            var _local4:Array;
            var _local2:Object = this.w5(_arg1);
            var _local3:0Y4 = 0LG;
            if ((_local2 is Array))
            {
                if ((((valueClasses.length == 1)) && ((valueClasses[0] == Array))))
                {
                    while (_local3.nonEmpty)
                    {
                        _local3.0kc.execute1(_local2);
                        _local3 = _local3.0wv;
                    };
                } else
                {
                    _local4 = (_local2 as Array);
                    while (_local3.nonEmpty)
                    {
                        _local3.0kc.execute(_local4);
                        _local3 = _local3.0wv;
                    };
                };
            } else
            {
                while (_local3.nonEmpty)
                {
                    _local3.0kc.execute1(_local2);
                    _local3 = _local3.0wv;
                };
            };
        }


    }
}//package XF

