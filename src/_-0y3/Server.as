// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0y3.Server

package 0y3{
    public class Server {

        public var name:String;
        public var address:String;
        public var port:int;
        public var 0z:1O7;
        public var 1kq:Number;
        public var 1t7:Boolean;


        public function setName(_arg1:String):Server{
            this.name = _arg1;
            return (this);
        }

        public function setAddress(_arg1:String):Server{
            this.address = _arg1;
            return (this);
        }

        public function setPort(_arg1:int):Server{
            this.port = _arg1;
            return (this);
        }

        public function setLatLong(_arg1:Number, _arg2:Number):Server{
            this.0z = new 1O7(_arg1, _arg2);
            return (this);
        }

        public function setUsage(_arg1:Number):Server{
            this.1kq = _arg1;
            return (this);
        }

        public function setIsAdminOnly(_arg1:Boolean):Server{
            this.1t7 = _arg1;
            return (this);
        }

        public function priority():int{
            if (this.1t7)
            {
                return (2);
            };
            if (this.0-4())
            {
                return (1);
            };
            return (0);
        }

        public function 0-4():Boolean{
            return ((this.1kq >= 0.66));
        }

        public function 1zU():Boolean{
            return ((this.1kq >= 1));
        }

        public function toString():String{
            return ((((((((((((("[" + this.name) + ": ") + this.address) + ":") + this.port) + ":") + this.0z) + ":") + this.1kq) + ":") + this.1t7) + "]"));
        }


    }
}//package 0y3

