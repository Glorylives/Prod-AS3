// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//06I.Dc

package 06I{
    import flash.events.EventDispatcher;

    import flash.utils.Dictionary;
    import flash.display.DisplayObjectContainer;
    import flash.display.DisplayObject;


    public class Dc extends EventDispatcher {

        private const _bindings:Vector.<Ko> = new Vector.<Ko>();
        private const 1Fn:Vector.<Ko> = new Vector.<Ko>();
        private const _bindingByContainer:Dictionary = new Dictionary();


        public function get j1():Vector.<Ko>{
            return (this._bindings);
        }

        public function get pr():Vector.<Ko>{
            return (this.1Fn);
        }

        public function 1Nt(_arg1:DisplayObjectContainer):Ko{
            return ((this._bindingByContainer[_arg1] = ((this._bindingByContainer[_arg1]) || (this.1g0(_arg1)))));
        }

        public function 0gu(_arg1:DisplayObjectContainer):Ko{
            var _local2:Ko = this._bindingByContainer[_arg1];
            ((_local2) && (this.0La(_local2)));
            return (_local2);
        }

        public function 0p(_arg1:DisplayObject):Ko{
            var _local3:Ko;
            var _local2:DisplayObjectContainer = _arg1.parent;
            while (_local2)
            {
                _local3 = this._bindingByContainer[_local2];
                if (_local3)
                {
                    return (_local3);
                }
                _local2 = _local2.parent;
            }
            return (null);
        }

        public function E(_arg1:DisplayObjectContainer):Ko{
            return (this._bindingByContainer[_arg1]);
        }

        private function 1g0(_arg1:DisplayObjectContainer):Ko{
            var _local3:Ko;
            var _local2:Ko = new Ko(_arg1);
            this._bindings.push(_local2);
            _local2.addEventListener(9o.22F, this.0tU);
            _local2.parent = this.0p(_arg1);
            if (_local2.parent == null)
            {
                this.0KR(_local2);
            }
            for each (_local3 in this._bindingByContainer)
            {
                if (_arg1.contains(_local3.container))
                {
                    if (!_local3.parent)
                    {
                        this.0AF(_local3);
                        _local3.parent = _local2;
                    } else
                    {
                        if (!_arg1.contains(_local3.parent.container))
                        {
                            _local3.parent = _local2;
                        }
                    }
                }
            }
            dispatchEvent(new Cv(Cv.1fg, _local2.container));
            return (_local2);
        }

        private function 0La(_arg1:Ko):void{
            var _local3:Ko;
            delete this._bindingByContainer[_arg1.container];
            var _local2:int = this._bindings.indexOf(_arg1);
            this._bindings.splice(_local2, 1);
            _arg1.removeEventListener(9o.22F, this.0tU);
            if (!_arg1.parent)
            {
                this.0AF(_arg1);
            }
            for each (_local3 in this._bindingByContainer)
            {
                if (_local3.parent == _arg1)
                {
                    _local3.parent = _arg1.parent;
                    if (!_local3.parent)
                    {
                        this.0KR(_local3);
                    }
                }
            }
            dispatchEvent(new Cv(Cv.0PQ, _arg1.container));
        }

        private function 0KR(_arg1:Ko):void{
            this.1Fn.push(_arg1);
            dispatchEvent(new Cv(Cv.11, _arg1.container));
        }

        private function 0AF(_arg1:Ko):void{
            var _local2:int = this.1Fn.indexOf(_arg1);
            this.1Fn.splice(_local2, 1);
            dispatchEvent(new Cv(Cv.cj, _arg1.container));
        }

        private function 0tU(_arg1:9o):void{
            this.0La((_arg1.target as Ko));
        }


    }
}//package 06I

