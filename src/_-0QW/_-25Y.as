// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.25Y

package 0QW{
    import flash.display.Sprite;
    import 0AB.Stats;
    import 5I.n2;
    import 1xS.s7;
    import Yz.0Vd;
    import __AS3__.vec.Vector;
    import flash.net.FileReference;
    import zD.05l;
    import _1aA.01l;
    import _04_._1JZ;
    import 5I.0V2;
    import flash.events.Event;
    import com.company.util.IntPoint;
    import 5I.0Ao;
    import com.company.util.0IB;
    import flash.geom.Rectangle;
    import flash.utils.ByteArray;
    import com.hurlant.util.Base64;
    import com.company.assembleegameclient.map.0s6;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.map.T8;
    import flash.net.FileFilter;
    import flash.events.IOErrorEvent;
    import __AS3__.vec.*;

    public class 25Y extends Sprite {

        private static const GT:int = ((600 - 1c1.0H4) - 10);//78
        public static const Zg:Stats = new Stats();

        public var AS:0rp;
        private var 23c:n2;
        public var 1TR:1c1;
        public var 1Or:Vc;
        public var 0UJ:s7;
        public var 1E3:0Xe;
        public var 6v:1ey;
        public var 0rP:1zE;
        public var Zp:F8;
        public var filename_:String = null;
        private var 1SD:0Vd;
        private var 17z:Vector.<172>;
        private var 0J3:FileReference = null;

        public function 25Y(){
            addChild(new 05l());
            addChild(new 01l());
            this.1SD = _1JZ.0JF().getInstance(0Vd);
            this.AS = new 0rp();
            this.AS.x = 15;
            this.AS.y = (GT - 30);
            this.AS.addEventListener(0V2.UNDO_COMMAND_EVENT, this.15H);
            this.AS.addEventListener(0V2.REDO_COMMAND_EVENT, this.P1);
            this.AS.addEventListener(0V2.CLEAR_COMMAND_EVENT, this.1I9);
            this.AS.addEventListener(0V2.LOAD_COMMAND_EVENT, this.Wk);
            this.AS.addEventListener(0V2.SAVE_COMMAND_EVENT, this.1q0);
            this.AS.addEventListener(0V2.TEST_COMMAND_EVENT, this.Di);
            this.AS.addEventListener(0V2.SELECT_COMMAND_EVENT, this.1Vv);
            addChild(this.AS);
            this.23c = new n2();
            this.1TR = new 1c1();
            this.1TR.addEventListener(je.TILES_EVENT, this.0FZ);
            this.1TR.x = ((800 / 2) - (1c1.0H4 / 2));
            this.1TR.y = GT;
            addChild(this.1TR);
            this.1Or = new Vc(this.1TR);
            this.1Or.x = 4;
            this.1Or.y = ((600 - Vc.HEIGHT) - 10);
            addChild(this.1Or);
            this.0UJ = new s7(new <String>["Ground", "Objects", "Regions"], F8.WIDTH, 26);
            this.0UJ.x = ((this.1TR.x + 1c1.0H4) + 4);
            this.0UJ.y = GT;
            this.0UJ.addEventListener(Event.CHANGE, this.1sp);
            addChild(this.0UJ);
            this.1E3 = new 0Xe();
            this.1E3.x = this.0UJ.x;
            this.1E3.y = ((this.0UJ.y + this.0UJ.height) + 4);
            this.Zp = this.1E3;
            addChild(this.1E3);
            this.6v = new 1ey();
            this.6v.x = this.0UJ.x;
            this.6v.y = ((this.0UJ.y + this.0UJ.height) + 4);
            this.0rP = new 1zE();
            this.0rP.x = this.0UJ.x;
            this.0rP.y = ((this.0UJ.y + this.0UJ.height) + 4);
        }

        private function 0FZ(_arg1:je):void{
            var _local2:IntPoint;
            var _local3:172;
            var _local4:int;
            var _local5:String;
            var _local6:05S;
            var _local7:Vector.<172>;
            _local2 = _arg1.tiles_[0];
            switch (this.AS.Ih())
            {
                case 0rp.1ts:
                    this.0Q4(_arg1.tiles_, this.Zp.07X, this.Zp.1MQ());
                    break;
                case 0rp.0tp:
                    this.0Q4(_arg1.tiles_, this.Zp.07X, -1);
                    break;
                case 0rp.Mn:
                    _local4 = this.1TR.getType(_local2.x_, _local2.y_, this.Zp.07X);
                    if (_local4 == -1)
                    {
                        return;
                    };
                    this.Zp.1lB(_local4);
                    this.AS.21O(0rp.1ts);
                    break;
                case 0rp.Pd:
                    _local5 = this.1TR.1sb(_local2.x_, _local2.y_);
                    _local6 = new 05S(_arg1.tiles_, _local5);
                    _local6.addEventListener(Event.COMPLETE, this.1cq);
                    addChild(_local6);
                    break;
                case 0rp.1tm:
                    this.17z = new Vector.<172>();
                    _local7 = new Vector.<172>();
                    for each (_local2 in _arg1.tiles_)
                    {
                        _local3 = this.1TR.0hm(_local2.x_, _local2.y_);
                        if (_local3 != null)
                        {
                            _local3 = _local3.clone();
                        };
                        this.17z.push(_local3);
                        _local7.push(null);
                    };
                    this.1Rl(_arg1.tiles_, _local7);
                    this.1TR.0n8();
                    this.AS.21O(0rp.1ul);
                    break;
                case 0rp.224:
                    this.17z = new Vector.<172>();
                    for each (_local2 in _arg1.tiles_)
                    {
                        _local3 = this.1TR.0hm(_local2.x_, _local2.y_);
                        if (_local3 != null)
                        {
                            _local3 = _local3.clone();
                        };
                        this.17z.push(_local3);
                    };
                    this.1TR.0n8();
                    this.AS.21O(0rp.1ul);
                    break;
                case 0rp.1ul:
                    this.1Rl(_arg1.tiles_, this.17z);
                    break;
            };
            this.1TR.draw();
        }

        private function 1cq(_arg1:Event):void{
            var _local2:05S = (_arg1.currentTarget as 05S);
            this.020(_local2.tiles_, _local2.1sb());
        }

        private function 0Q4(_arg1:Vector.<IntPoint>, _arg2:int, _arg3:int):void{
            var _local5:IntPoint;
            var _local6:int;
            var _local4:0Ao = new 0Ao();
            for each (_local5 in _arg1)
            {
                _local6 = this.1TR.getType(_local5.x_, _local5.y_, _arg2);
                if (_local6 == _arg3)
                {
                } else
                {
                    _local4.0tz(new Qr(this.1TR, _local5.x_, _local5.y_, _arg2, _local6, _arg3));
                };
            };
            if (_local4.1Qj())
            {
                return;
            };
            this.23c.0Jo(_local4);
        }

        private function 1Rl(_arg1:Vector.<IntPoint>, _arg2:Vector.<172>):void{
            var _local5:IntPoint;
            var _local6:172;
            var _local3:0Ao = new 0Ao();
            var _local4:int;
            for each (_local5 in _arg1)
            {
                if (_local4 >= _arg2.length) break;
                _local6 = this.1TR.0hm(_local5.x_, _local5.y_);
                _local3.0tz(new 1d9(this.1TR, _local5.x_, _local5.y_, _local6, _arg2[_local4]));
                _local4++;
            };
            if (_local3.1Qj())
            {
                return;
            };
            this.23c.0Jo(_local3);
        }

        private function 020(_arg1:Vector.<IntPoint>, _arg2:String):void{
            var _local4:IntPoint;
            var _local5:String;
            var _local3:0Ao = new 0Ao();
            for each (_local4 in _arg1)
            {
                _local5 = this.1TR.1sb(_local4.x_, _local4.y_);
                if (_local5 == _arg2)
                {
                } else
                {
                    _local3.0tz(new 4k(this.1TR, _local4.x_, _local4.y_, _local5, _arg2));
                };
            };
            if (_local3.1Qj())
            {
                return;
            };
            this.23c.0Jo(_local3);
        }

        private function 1sp(_arg1:Event):void{
            switch (this.0UJ.getValue())
            {
                case "Ground":
                    0IB.0pa(this, this.1E3);
                    0IB.13h(this, this.6v);
                    0IB.13h(this, this.0rP);
                    this.Zp = this.1E3;
                    return;
                case "Objects":
                    0IB.13h(this, this.1E3);
                    0IB.0pa(this, this.6v);
                    0IB.13h(this, this.0rP);
                    this.Zp = this.6v;
                    return;
                case "Regions":
                    0IB.13h(this, this.1E3);
                    0IB.13h(this, this.6v);
                    0IB.0pa(this, this.0rP);
                    this.Zp = this.0rP;
                    return;
            };
        }

        private function 15H(_arg1:0V2):void{
            this.23c.07b();
            this.1TR.draw();
        }

        private function P1(_arg1:0V2):void{
            this.23c.150();
            this.1TR.draw();
        }

        private function 1I9(_arg1:0V2):void{
            var _local4:IntPoint;
            var _local5:172;
            var _local2:Vector.<IntPoint> = this.1TR.21V();
            var _local3:0Ao = new 0Ao();
            for each (_local4 in _local2)
            {
                _local5 = this.1TR.0hm(_local4.x_, _local4.y_);
                if (_local5 == null)
                {
                } else
                {
                    _local3.0tz(new 14u(this.1TR, _local4.x_, _local4.y_, _local5));
                };
            };
            if (_local3.1Qj())
            {
                return;
            };
            this.23c.0Jo(_local3);
            this.1TR.draw();
            this.filename_ = null;
        }

        private function 1rs():String{
            var _local7:int;
            var _local8:172;
            var _local9:Object;
            var _local10:String;
            var _local11:int;
            var _local1:Rectangle = this.1TR.1xY();
            if (_local1 == null)
            {
                return (null);
            };
            var _local2:Object = {};
            _local2["width"] = int(_local1.width);
            _local2["height"] = int(_local1.height);
            var _local3:Object = {};
            var _local4:Array = [];
            var _local5:ByteArray = new ByteArray();
            var _local6:int = _local1.y;
            while (_local6 < _local1.bottom)
            {
                _local7 = _local1.x;
                while (_local7 < _local1.right)
                {
                    _local8 = this.1TR.0hm(_local7, _local6);
                    _local9 = this.0wq(_local8);
                    _local10 = this.1SD.stringify(_local9);
                    if (!_local3.hasOwnProperty(_local10))
                    {
                        _local11 = _local4.length;
                        _local3[_local10] = _local11;
                        _local4.push(_local9);
                    } else
                    {
                        _local11 = _local3[_local10];
                    };
                    _local5.writeShort(_local11);
                    _local7++;
                };
                _local6++;
            };
            _local2["dict"] = _local4;
            _local5.compress();
            _local2["data"] = Base64.encodeByteArray(_local5);
            return (this.1SD.stringify(_local2));
        }

        private function 1q0(_arg1:0V2):void{
            var _local2:String = this.1rs();
            if (_local2 == null)
            {
                return;
            };
            new FileReference().save(_local2, (((this.filename_ == null)) ? "map.jm" : this.filename_));
        }

        private function 0wq(_arg1:172):Object{
            var _local3:Vector.<int>;
            var _local4:String;
            var _local5:Object;
            var _local2:Object = {};
            if (_arg1 != null)
            {
                _local3 = _arg1.18A;
                if (_local3[1KM.1Xh] != -1)
                {
                    _local4 = 0s6.Uq(_local3[1KM.1Xh]);
                    _local2["ground"] = _local4;
                };
                if (_local3[1KM.ti] != -1)
                {
                    _local4 = ObjectLibrary.Uq(_local3[1KM.ti]);
                    _local5 = {id:_local4};
                    if (_arg1.0hD != null)
                    {
                        _local5["name"] = _arg1.0hD;
                    };
                    _local2["objs"] = [_local5];
                };
                if (_local3[1KM.0eT] != -1)
                {
                    _local4 = T8.Uq(_local3[1KM.0eT]);
                    _local2["regions"] = [{id:_local4}];
                };
            };
            return (_local2);
        }

        private function Wk(_arg1:0V2):void{
            this.0J3 = new FileReference();
            this.0J3.addEventListener(Event.SELECT, this.Xo);
            this.0J3.browse([new FileFilter("JSON Map (*.jm)", "*.jm")]);
        }

        private function Xo(_arg1:Event):void{
            var event:Event = _arg1;
            var loadedFile:FileReference = (event.target as FileReference);
            loadedFile.addEventListener(Event.COMPLETE, this.00L);
            loadedFile.addEventListener(IOErrorEvent.IO_ERROR, this.0gB);
            try
            {
                loadedFile.load();
            } catch(e:Error)
            {
            };
        }

        private function 00L(_arg1:Event):void{
            var _local9:int;
            var _local11:int;
            var _local12:Object;
            var _local13:Array;
            var _local14:Array;
            var _local15:Object;
            var _local16:Object;
            var _local2:FileReference = (_arg1.target as FileReference);
            this.filename_ = _local2.name;
            var _local3:Object = this.1SD.parse(_local2.data.toString());
            var _local4:int = _local3["width"];
            var _local5:int = _local3["height"];
            var _local6:Rectangle = new Rectangle(int(((1c1.b7 / 2) - (_local4 / 2))), int(((1c1.b7 / 2) - (_local5 / 2))), _local4, _local5);
            this.1TR.clear();
            this.23c.clear();
            var _local7:Array = _local3["dict"];
            var _local8:ByteArray = Base64.decodeToByteArray(_local3["data"]);
            _local8.uncompress();
            var _local10:int = _local6.y;
            while (_local10 < _local6.bottom)
            {
                _local11 = _local6.x;
                while (_local11 < _local6.right)
                {
                    _local12 = _local7[_local8.readShort()];
                    if (_local12.hasOwnProperty("ground"))
                    {
                        _local9 = 0s6.get[_local12["ground"]];
                        this.1TR.0j0(_local11, _local10, 1KM.1Xh, _local9);
                    };
                    _local13 = _local12["objs"];
                    if (_local13 != null)
                    {
                        for each (_local15 in _local13)
                        {
                            if (!ObjectLibrary.get.hasOwnProperty(_local15["id"]))
                            {
                            } else
                            {
                                _local9 = ObjectLibrary.get[_local15["id"]];
                                this.1TR.0j0(_local11, _local10, 1KM.ti, _local9);
                                if (_local15.hasOwnProperty("name"))
                                {
                                    this.1TR.7N(_local11, _local10, _local15["name"]);
                                };
                            };
                        };
                    };
                    _local14 = _local12["regions"];
                    if (_local14 != null)
                    {
                        for each (_local16 in _local14)
                        {
                            _local9 = T8.get[_local16["id"]];
                            this.1TR.0j0(_local11, _local10, 1KM.0eT, _local9);
                        };
                    };
                    _local11++;
                };
                _local10++;
            };
            this.1TR.draw();
        }

        private function 0gB(_arg1:Event):void{
        }

        private function Di(_arg1:Event):void{
            dispatchEvent(new 61(this.1rs()));
        }

        private function 1Vv(_arg1:Event):void{
            if (this.1TR != null)
            {
                this.1TR.1jY();
            };
        }


    }
}//package 0QW

