// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//rK._jr

package _rK{
    import flash.errors.IllegalOperationError;

    public class _jr implements _0HA, _1gI {

        protected const _7E:Vector.<Class> = new Vector.<Class>();
        protected const _1Rv:Vector.<Class> = new Vector.<Class>();
        protected const _0Hl:Vector.<Class> = new Vector.<Class>();

        protected var eq:_0sO;


        public function allOf(... _args):_jr{
            this.i3(_args, this._7E);
            return (this);
        }

        public function anyOf(... _args):_jr{
            this.i3(_args, this._1Rv);
            return (this);
        }

        public function noneOf(... _args):_jr{
            this.i3(_args, this._0Hl);
            return (this);
        }

        public function _1Ti():_0sO{
            return ((this.eq = ((this.eq) || (this._0Dn()))));
        }

        public function _06z():_1gI{
            this._1Ti();
            return (this);
        }

        public function clone():_jr{
            return (new _jr().allOf(this._7E).anyOf(this._1Rv).noneOf(this._0Hl));
        }

        protected function _0Dn():_0sO{
            if ((((((this._7E.length == 0)) && ((this._1Rv.length == 0)))) && ((this._0Hl.length == 0))))
            {
                throw (new _00u(_00u._30));
            }
            return (new _0OE(this._7E, this._1Rv, this._0Hl));
        }

        protected function i3(_arg1:Array, _arg2:Vector.<Class>):void{
            ((this.eq) && (this._0JH()));
            this._11P(_arg1, _arg2);
        }

        protected function _0JH():void{
            throw (new IllegalOperationError("This TypeMatcher has been sealed and can no longer be configured"));
        }

        protected function _11P(_arg1:Array, _arg2:Vector.<Class>):void{
            var _local3:Class;
            if ((((_arg1.length == 1)) && ((((_arg1[0] is Array)) || ((_arg1[0] is Vector.<Class>))))))
            {
                for each (_local3 in _arg1[0])
                {
                    _arg2.push(_local3);
                }
            } else
            {
                for each (_local3 in _arg1)
                {
                    _arg2.push(_local3);
                }
            }
        }


    }
}//package rK

