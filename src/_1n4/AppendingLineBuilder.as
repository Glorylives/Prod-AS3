// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1n4.AppendingLineBuilder

package 1n4{
    import __AS3__.vec.Vector;
    import 1qQ.0oB;
    import __AS3__.vec.*;

    public class AppendingLineBuilder implements 1Jo {

        private var data:Vector.<LineData>;
        private var 3G:String = "\n";
        private var provider:0oB;

        public function AppendingLineBuilder(){
            this.data = new Vector.<LineData>();
            super();
        }

        public function pushParams(_arg1:String, _arg2:Object=null, _arg3:String="", _arg4:String=""):AppendingLineBuilder{
            this.data.push(new LineData().setKey(_arg1).setTokens(_arg2).setOpeningTags(_arg3).setClosingTags(_arg4));
            return (this);
        }

        public function setDelimiter(_arg1:String):AppendingLineBuilder{
            this.3G = _arg1;
            return (this);
        }

        public function 1jM(_arg1:0oB):void{
            this.provider = _arg1;
        }

        public function getString():String{
            var _local2:LineData;
            var _local1:Vector.<String> = new Vector.<String>();
            for each (_local2 in this.data)
            {
                _local1.push(_local2.getString(this.provider));
            };
            return (_local1.join(this.3G));
        }

        public function 0My():Boolean{
            return (!((this.data.length == 0)));
        }

        public function clear():void{
            this.data = new Vector.<LineData>();
        }


    }
}//package 1n4

import 1n4.1Jo;
import AO.du;
import 1qQ.0oB;

class LineData {

    public var key:String;
    public var tokens:Object;
    public var openingHTMLTags:String = "";
    public var closingHTMLTags:String = "";


    public function setKey(_arg1:String):LineData{
        this.key = _arg1;
        return (this);
    }

    public function setTokens(_arg1:Object):LineData{
        this.tokens = _arg1;
        return (this);
    }

    public function setOpeningTags(_arg1:String):LineData{
        this.openingHTMLTags = _arg1;
        return (this);
    }

    public function setClosingTags(_arg1:String):LineData{
        this.closingHTMLTags = _arg1;
        return (this);
    }

    public function getString(_arg1:0oB):String{
        var _local3:String;
        var _local4:String;
        var _local5:1Jo;
        var _local6:String;
        var _local2:String = this.openingHTMLTags;
        _local3 = _arg1.getValue(du.1I(this.key));
        if (_local3 == null)
        {
            _local3 = this.key;
        };
        _local2 = _local2.concat(_local3);
        for (_local4 in this.tokens)
        {
            if ((this.tokens[_local4] is 1Jo))
            {
                _local5 = 1Jo(this.tokens[_local4]);
                _local5.1jM(_arg1);
                _local2 = _local2.replace((("{" + _local4) + "}"), _local5.getString());
            } else
            {
                _local6 = this.tokens[_local4];
                if ((((((_local6.length > 0)) && ((_local6.charAt(0) == "{")))) && ((_local6.charAt((_local6.length - 1)) == "}"))))
                {
                    _local6 = _arg1.getValue(_local6.substr(1, (_local6.length - 2)));
                };
                _local2 = _local2.replace((("{" + _local4) + "}"), _local6);
            };
        };
        _local2 = _local2.replace(/\\n/g, "\n");
        _local2 = _local2.concat(this.closingHTMLTags);
        return (_local2);
    }


}

