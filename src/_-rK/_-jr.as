// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//rK.jr

package rK{
    import __AS3__.vec.Vector;
    import flash.errors.IllegalOperationError;
    import __AS3__.vec.*;

    public class jr implements 0HA, 1gI {

        protected const 7E:Vector.<Class> = new Vector.<Class>();
        protected const 1Rv:Vector.<Class> = new Vector.<Class>();
        protected const 0Hl:Vector.<Class> = new Vector.<Class>();

        protected var eq:0sO;


        public function allOf(... _args):jr{
            this.i3(_args, this.7E);
            return (this);
        }

        public function anyOf(... _args):jr{
            this.i3(_args, this.1Rv);
            return (this);
        }

        public function noneOf(... _args):jr{
            this.i3(_args, this.0Hl);
            return (this);
        }

        public function 1Ti():0sO{
            return ((this.eq = ((this.eq) || (this.0Dn()))));
        }

        public function 06z():1gI{
            this.1Ti();
            return (this);
        }

        public function clone():jr{
            return (new jr().allOf(this.7E).anyOf(this.1Rv).noneOf(this.0Hl));
        }

        protected function 0Dn():0sO{
            if ((((((this.7E.length == 0)) && ((this.1Rv.length == 0)))) && ((this.0Hl.length == 0))))
            {
                throw (new 00u(00u.30));
            };
            return (new 0OE(this.7E, this.1Rv, this.0Hl));
        }

        protected function i3(_arg1:Array, _arg2:Vector.<Class>):void{
            ((this.eq) && (this.0JH()));
            this.11P(_arg1, _arg2);
        }

        protected function 0JH():void{
            throw (new IllegalOperationError("This TypeMatcher has been sealed and can no longer be configured"));
        }

        protected function 11P(_arg1:Array, _arg2:Vector.<Class>):void{
            var _local3:Class;
            if ((((_arg1.length == 1)) && ((((_arg1[0] is Array)) || ((_arg1[0] is Vector.<Class>))))))
            {
                for each (_local3 in _arg1[0])
                {
                    _arg2.push(_local3);
                };
            } else
            {
                for each (_local3 in _arg1)
                {
                    _arg2.push(_local3);
                };
            };
        }


    }
}//package rK

