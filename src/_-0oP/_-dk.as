// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0oP.dk

package 0oP{
    public class dk {

        private var obj:Object;
        private var 0Dm:String;
        private var a5:int;
        private var ch:String;

        public function dk(_arg1:String){
            this.0Dm = _arg1;
            this.a5 = 0;
            this.1s7();
        }

        public function J3():BS{
            var _local2:String;
            var _local3:String;
            var _local4:String;
            var _local1:BS = new BS();
            this.sj();
            switch (this.ch)
            {
                case "{":
                    _local1.type = gd.22c;
                    _local1.value = "{";
                    this.1s7();
                    break;
                case "}":
                    _local1.type = gd.1aB;
                    _local1.value = "}";
                    this.1s7();
                    break;
                case "[":
                    _local1.type = gd.08a;
                    _local1.value = "[";
                    this.1s7();
                    break;
                case "]":
                    _local1.type = gd.6d;
                    _local1.value = "]";
                    this.1s7();
                    break;
                case ",":
                    _local1.type = gd.226;
                    _local1.value = ",";
                    this.1s7();
                    break;
                case ":":
                    _local1.type = gd.1oN;
                    _local1.value = ":";
                    this.1s7();
                    break;
                case "t":
                    _local2 = ((("t" + this.1s7()) + this.1s7()) + this.1s7());
                    if (_local2 == "true")
                    {
                        _local1.type = gd.1tH;
                        _local1.value = true;
                        this.1s7();
                    } else
                    {
                        this.1xT(("Expecting 'true' but found " + _local2));
                    };
                    break;
                case "f":
                    _local3 = (((("f" + this.1s7()) + this.1s7()) + this.1s7()) + this.1s7());
                    if (_local3 == "false")
                    {
                        _local1.type = gd.0_CU;
                        _local1.value = false;
                        this.1s7();
                    } else
                    {
                        this.1xT(("Expecting 'false' but found " + _local3));
                    };
                    break;
                case "n":
                    _local4 = ((("n" + this.1s7()) + this.1s7()) + this.1s7());
                    if (_local4 == "null")
                    {
                        _local1.type = gd.NULL;
                        _local1.value = null;
                        this.1s7();
                    } else
                    {
                        this.1xT(("Expecting 'null' but found " + _local4));
                    };
                    break;
                case '"':
                    _local1 = this.zX();
                    break;
                default:
                    if (((this.0n9(this.ch)) || ((this.ch == "-"))))
                    {
                        _local1 = this.05b();
                    } else
                    {
                        if (this.ch == "")
                        {
                            return (null);
                        };
                        this.1xT((("Unexpected " + this.ch) + " encountered"));
                    };
            };
            return (_local1);
        }

        private function zX():BS{
            var _local3:String;
            var _local4:int;
            var _local1:BS = new BS();
            _local1.type = gd.0oZ;
            var _local2 = "";
            this.1s7();
            while (((!((this.ch == '"'))) && (!((this.ch == "")))))
            {
                if (this.ch == "\\")
                {
                    this.1s7();
                    switch (this.ch)
                    {
                        case '"':
                            _local2 = (_local2 + '"');
                            break;
                        case "/":
                            _local2 = (_local2 + "/");
                            break;
                        case "\\":
                            _local2 = (_local2 + "\\");
                            break;
                        case "b":
                            _local2 = (_local2 + "\b");
                            break;
                        case "f":
                            _local2 = (_local2 + "\f");
                            break;
                        case "n":
                            _local2 = (_local2 + "\n");
                            break;
                        case "r":
                            _local2 = (_local2 + "\r");
                            break;
                        case "t":
                            _local2 = (_local2 + "\t");
                            break;
                        case "u":
                            _local3 = "";
                            _local4 = 0;
                            while (_local4 < 4)
                            {
                                if (!this.0W8(this.1s7()))
                                {
                                    this.1xT((" Excepted a hex digit, but found: " + this.ch));
                                };
                                _local3 = (_local3 + this.ch);
                                _local4++;
                            };
                            _local2 = (_local2 + String.fromCharCode(parseInt(_local3, 16)));
                            break;
                        default:
                            _local2 = (_local2 + ("\\" + this.ch));
                    };
                } else
                {
                    _local2 = (_local2 + this.ch);
                };
                this.1s7();
            };
            if (this.ch == "")
            {
                this.1xT("Unterminated string literal");
            };
            this.1s7();
            _local1.value = _local2;
            return (_local1);
        }

        private function 05b():BS{
            var _local1:BS = new BS();
            _local1.type = gd.10s;
            var _local2 = "";
            if (this.ch == "-")
            {
                _local2 = (_local2 + "-");
                this.1s7();
            };
            if (!this.0n9(this.ch))
            {
                this.1xT("Expecting a digit");
            };
            if (this.ch == "0")
            {
                _local2 = (_local2 + this.ch);
                this.1s7();
                if (this.0n9(this.ch))
                {
                    this.1xT("A digit cannot immediately follow 0");
                };
            } else
            {
                while (this.0n9(this.ch))
                {
                    _local2 = (_local2 + this.ch);
                    this.1s7();
                };
            };
            if (this.ch == ".")
            {
                _local2 = (_local2 + ".");
                this.1s7();
                if (!this.0n9(this.ch))
                {
                    this.1xT("Expecting a digit");
                };
                while (this.0n9(this.ch))
                {
                    _local2 = (_local2 + this.ch);
                    this.1s7();
                };
            };
            if ((((this.ch == "e")) || ((this.ch == "E"))))
            {
                _local2 = (_local2 + "e");
                this.1s7();
                if ((((this.ch == "+")) || ((this.ch == "-"))))
                {
                    _local2 = (_local2 + this.ch);
                    this.1s7();
                };
                if (!this.0n9(this.ch))
                {
                    this.1xT("Scientific notation number needs exponent value");
                };
                while (this.0n9(this.ch))
                {
                    _local2 = (_local2 + this.ch);
                    this.1s7();
                };
            };
            var _local3:Number = Number(_local2);
            if (((isFinite(_local3)) && (!(isNaN(_local3)))))
            {
                _local1.value = _local3;
                return (_local1);
            };
            this.1xT((("Number " + _local3) + " is not valid!"));
            return (null);
        }

        private function 1s7():String{
            return ((this.ch = this.0Dm.charAt(this.a5++)));
        }

        private function sj():void{
            var _local1:int;
            do 
            {
                _local1 = this.a5;
                this.0Ot();
                this.093();
            } while (_local1 != this.a5);
        }

        private function 093():void{
            if (this.ch == "/")
            {
                this.1s7();
                switch (this.ch)
                {
                    case "/":
                        do 
                        {
                            this.1s7();
                        } while (((!((this.ch == "\n"))) && (!((this.ch == "")))));
                        this.1s7();
                        return;
                    case "*":
                        this.1s7();
                        while (true)
                        {
                            if (this.ch == "*")
                            {
                                this.1s7();
                                if (this.ch == "/")
                                {
                                    this.1s7();
                                    break;
                                };
                            } else
                            {
                                this.1s7();
                            };
                            if (this.ch == "")
                            {
                                this.1xT("Multi-line comment not closed");
                            };
                        };
                        return;
                    default:
                        this.1xT((("Unexpected " + this.ch) + " encountered (expecting '/' or '*' )"));
                };
            };
        }

        private function 0Ot():void{
            while (this.1hK(this.ch))
            {
                this.1s7();
            };
        }

        private function 1hK(_arg1:String):Boolean{
            return ((((((((_arg1 == " ")) || ((_arg1 == "\t")))) || ((_arg1 == "\n")))) || ((_arg1 == "\r"))));
        }

        private function 0n9(_arg1:String):Boolean{
            return ((((_arg1 >= "0")) && ((_arg1 <= "9"))));
        }

        private function 0W8(_arg1:String):Boolean{
            var _local2:String = _arg1.toUpperCase();
            return (((this.0n9(_arg1)) || ((((_local2 >= "A")) && ((_local2 <= "F"))))));
        }

        public function 1xT(_arg1:String):void{
            throw (new JSONParseError(_arg1, this.a5, this.0Dm));
        }


    }
}//package 0oP

