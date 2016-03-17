// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1qa.MysteryBoxRollModal

package 1qa{
    import flash.display.Sprite;
    import _0BB.Fu;
    import aq.Account;
    import vF.MysteryBoxInfo;
    import __AS3__.vec.Vector;
    import flash.display.Bitmap;
    import 0pT.g-;
    import 0uE.KC;
    import com.company.assembleegameclient.map.Jw;
    import OZ.08g;
    import _CU._13j;
    import flash.utils.Timer;
    import flash.display.DisplayObject;
    import 0IN.1qO;
    import com.company.assembleegameclient.util.Currency;
    import kabam.rotmg.assets.0EP;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import OZ.0Zn;
    import flash.filters.GlowFilter;
    import _04_._1JZ;
    import _0OG._22M;
    import 0uE.IJ;
    import 1n4.1cA;
    import 1n4.1WS;
    import flash.text.TextFieldAutoSize;
    import flash.text.TextFormatAlign;
    import flash.filters.DropShadowFilter;
    import 1dX.aQ;
    import flash.events.TimerEvent;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.objects.Player;
    import WZ.0Te;
    import 1qg.0io;
    import 1t6.Dialog;
    import M0.jc;
    import gx.1Nb;
    import 1PB.pu;
    import 1t6.NotEnoughFameDialog;
    import 0gd.GTween;
    import 0G6.4t;
    import __AS3__.vec.*;

    public class MysteryBoxRollModal extends Sprite {

        public static const WIDTH:int = 415;
        public static const HEIGHT:int = 400;
        public static const 1yz:int = 20;

        public static var open:Boolean;

        private const S0:int = 1;
        private const 26T:int = 0;
        private const 1Ob:Number = 160;
        private const playAgainString:String = "MysteryBoxRollModal.playAgainString";
        private const playAgainXTimesString:String = "MysteryBoxRollModal.playAgainXTimesString";
        private const youWonString:String = "MysteryBoxRollModal.youWonString";
        private const rewardsInVaultString:String = "MysteryBoxRollModal.rewardsInVaultString";

        public var client:Fu;
        public var account:Account;
        public var ZJ:MysteryBoxSelectModal;
        private var state:int;
        private var 4a:Boolean = false;
        private var 1ZI:int = 0;
        private var 0bf:int = 0;
        private var quantity_:int = 0;
        private var 1Eg:MysteryBoxInfo;
        private var 2r:Sprite;
        private var ei:Vector.<Bitmap>;
        private var Pb:Vector.<g->;
        private var 1tf:KC;
        private var 22d:Jw;
        private var dd:Sprite;
        private var lI:Sprite;
        private var 1Xy:08g;
        private var Yi:_13j;
        private var 1pZ:_13j;
        private var 1j6:Vector.<_13j>;
        private var 1LP:Timer;
        private var 11r:Timer;
        private var 06T:Timer;
        private var 19x:Vector.<int>;
        private var 0Zl:String = "";
        private var N7:Boolean = false;
        private var zi:Boolean = false;
        private var 1Fr:DisplayObject;
        private var 0V:DisplayObject;

        public function MysteryBoxRollModal(_arg1:MysteryBoxInfo, _arg2:int):void{
            this.2r = new Sprite();
            this.ei = new Vector.<Bitmap>();
            this.Pb = new Vector.<g->();
            this.1tf = 1qO.19W(WIDTH);
            this.1Xy = new 08g(this.playAgainString, 16, 0, Currency.INVALID);
            this.1j6 = new Vector.<_13j>();
            this.1LP = new Timer(50);
            this.11r = new Timer(2000);
            this.06T = new Timer(800);
            this.19x = new Vector.<int>();
            this.1Fr = new 0EP.EvolveBackground();
            this.0V = new 0EP.EvolveBackground();
            super();
            this.1Eg = _arg1;
            this.1tf.1BU();
            this.1tf.addEventListener(MouseEvent.CLICK, this.onCloseClick);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.1pZ = this.1UU(this.rewardsInVaultString, 1yz, 220).setSize(20).setColor(0);
            this.1pZ.y = 40;
            this.1pZ.filters = [];
            this.V8();
            open = true;
            this.1Xy.x = (this.1Xy.x + ((WIDTH / 2) - 100));
            this.1Xy.y = (this.1Xy.y + (HEIGHT - 43));
            this.1Xy.k4 = 200;
            this.1Xy.addEventListener(MouseEvent.CLICK, this.0cZ);
            this.dd = 0Zn.0QY(0Zn.1GG, 3);
            this.dd.addEventListener(MouseEvent.CLICK, this.1wP);
            this.dd.filters = [new GlowFilter(0, 1, 2, 2, 10, 1)];
            this.dd.x = ((WIDTH / 2) + 110);
            this.dd.y = (HEIGHT - 35);
            this.dd.alpha = 0;
            addChild(this.dd);
            this.lI = 0Zn.0QY(0Zn.1ST, 3);
            this.lI.addEventListener(MouseEvent.CLICK, this.1wP);
            this.lI.filters = [new GlowFilter(0, 1, 2, 2, 10, 1)];
            this.lI.x = ((WIDTH / 2) + 110);
            this.lI.y = (HEIGHT - 50);
            this.lI.alpha = 0;
            addChild(this.lI);
            var _local3:_22M = _1JZ.0JF();
            this.client = _local3.getInstance(Fu);
            this.account = _local3.getInstance(Account);
            var _local4:uint;
            while (_local4 < this.1Eg.ft.length)
            {
                this.19x.push(0);
                _local4++;
            };
            this.1or();
            this.DR(_arg2);
            this.1j1();
        }

        private static function makeModalBackground(_arg1:int, _arg2:int):IJ{
            var _local3:IJ = new IJ();
            _local3.draw(_arg1, _arg2, IJ.0W9);
            return (_local3);
        }


        private function DR(_arg1){
            var _local2:int;
            var _local3:int;
            this.quantity_ = _arg1;
            switch (_arg1)
            {
                case 1:
                    this.1ZI = 1;
                    this.0bf = 1;
                    this.1LP.delay = 50;
                    this.11r.delay = 2000;
                    break;
                case 5:
                    this.1ZI = 0;
                    this.0bf = 4;
                    this.1LP.delay = 50;
                    this.11r.delay = 1000;
                    break;
                case 10:
                    this.1ZI = 0;
                    this.0bf = 9;
                    this.1LP.delay = 50;
                    this.11r.delay = 1000;
                    break;
                    this.1ZI = 1;
                    this.0bf = 1;
                    this.1LP.delay = 50;
                    this.11r.delay = 2000;
            };
            if (this.1Eg.1p1())
            {
                _local2 = (this.1Eg.rn * this.quantity_);
                _local3 = this.1Eg.4O;
            } else
            {
                _local2 = (this.1Eg.0Br * this.quantity_);
                _local3 = this.1Eg.1hG;
            };
            if (this.quantity_ == 1)
            {
                this.1Xy.setPrice(_local2, this.1Eg.1hG);
            } else
            {
                this.1Xy.currency = _local3;
                this.1Xy.price = _local2;
                this.1Xy.setStringBuilder(new 1cA().setParams(this.playAgainXTimesString, {
                    cost:_local2.toString(),
                    repeat:this.quantity_.toString()
                }));
            };
        }

        public function 1UU(_arg1:String, _arg2:int, _arg3:int, _arg4:Boolean=false):_13j{
            var _local5:_13j = new _13j().setSize(16).setColor(0xFFFFFF).setTextWidth((WIDTH - (1yz * 2)));
            _local5.setBold(true);
            if (_arg4)
            {
                _local5.setStringBuilder(new 1WS(_arg1));
            } else
            {
                _local5.setStringBuilder(new 1cA().setParams(_arg1));
            };
            _local5.setWordWrap(true);
            _local5.setMultiLine(true);
            _local5.setAutoSize(TextFieldAutoSize.CENTER);
            _local5.setHorizontalAlign(TextFormatAlign.CENTER);
            _local5.filters = [new DropShadowFilter(0, 0, 0)];
            _local5.x = _arg2;
            _local5.y = _arg3;
            return (_local5);
        }

        private function V8():void{
            var _local1:int = 27;
            var _local2:int = 28;
            this.0V.y = (this.1Fr.y = _local1);
            this.0V.x = (this.1Fr.x = 1);
            this.0V.width = (this.1Fr.width = (WIDTH - 1));
            this.0V.height = (this.1Fr.height = (HEIGHT - _local2));
            addChild(this.1Fr);
            addChild(this.0V);
            var _local3:aQ = new aQ();
            var _local4:aQ = new aQ();
            _local3.0hE = 50;
            _local4.0hE = (_local3.0hE * 1.5);
            var _local5:Number = 0.7;
            _local4.width = (_local3.width * _local5);
            _local4.height = (_local3.height * _local5);
            _local4.alpha = (_local3.alpha = 0.7);
            this.2r.addChild(_local3);
            this.2r.addChild(_local4);
            this.2r.mask = this.0V;
            this.2r.x = (WIDTH / 2);
            this.2r.y = (((HEIGHT - 30) / 3) + 50);
            this.2r.alpha = 0;
            addChild(this.2r);
            addChild(makeModalBackground(WIDTH, HEIGHT));
            addChild(this.1tf);
            this.22d = new Jw(Jw.0ZG);
            addChild(this.22d);
        }

        private function 1j1():void{
            if (!this.dz())
            {
                return;
            };
            this.state = this.S0;
            this.1tf.visible = false;
            var _local1:Object = this.account.1Y();
            _local1.boxId = this.1Eg.id;
            if (this.1Eg.1p1())
            {
                _local1.quantity = this.1Eg._quantity;
                _local1.price = this.1Eg.0k6;
                _local1.currency = this.1Eg.1DH;
            } else
            {
                _local1.quantity = this.1Eg._quantity;
                _local1.price = this.1Eg.1e6;
                _local1.currency = this.1Eg.eh;
            };
            this.client.sendRequest("/account/purchaseMysteryBox", _local1);
            this.Yi = this.1UU(this.1Eg._title, 1yz, 6, true).setSize(18);
            this.Yi.setColor(0xFFDE00);
            addChild(this.Yi);
            addChild(this.1pZ);
            this.1Xq();
            this.0Zl = "";
            this.N7 = false;
            this.zi = false;
            this.11r.addEventListener(TimerEvent.TIMER, this.1dW);
            this.11r.start();
            this.client.complete.addOnce(this.onComplete);
        }

        private function 1Xq():void{
            var _local2:Bitmap;
            var _local1:int;
            while (_local1 < this.1Eg.ft.length)
            {
                _local2 = new Bitmap(ObjectLibrary.getRedrawnTextureFromType(this.1Eg.0Cg[this.19x[_local1]], this.1Ob, true));
                this.ei.push(_local2);
                _local1++;
            };
            this.0Ml(this.ei);
            this.1LP.addEventListener(TimerEvent.TIMER, this.0pj);
            this.1LP.start();
        }

        private function 1dW(_arg1:TimerEvent):void{
            this.11r.stop();
            this.zi = true;
            if (this.N7)
            {
                this.tm(this.0Zl);
            };
            this.11r.removeEventListener(TimerEvent.TIMER, this.1dW);
        }

        private function 1vp(_arg1:TimerEvent):void{
            this.06T.stop();
            this.06T.removeEventListener(TimerEvent.TIMER, this.1vp);
            this.0ho();
            this.zg();
            this.1ZI++;
            this.1j1();
        }

        private function 0pj(_arg1:TimerEvent):void{
            this.1LP.stop();
            var _local2:uint;
            while (_local2 < this.19x.length)
            {
                if (this.19x[_local2] < (this.1Eg.0Cg.length - 1))
                {
                    var _local3 = this.19x;
                    var _local4 = _local2;
                    var _local5 = (_local3[_local4] + 1);
                    _local3[_local4] = _local5;
                } else
                {
                    this.19x[_local2] = 0;
                };
                this.ei[_local2].bitmapData = new Bitmap(ObjectLibrary.getRedrawnTextureFromType(this.1Eg.0Cg[this.19x[_local2]], this.1Ob, true)).bitmapData;
                _local2++;
            };
            this.1LP.start();
        }

        private function 0Ml(_arg1:Vector.<Bitmap>):void{
            var _local2:Bitmap;
            switch (_arg1.length)
            {
                case 1:
                    _arg1[0].x = (_arg1[0].x + ((WIDTH / 2) - 40));
                    _arg1[0].y = (_arg1[0].y + (HEIGHT / 3));
                    break;
                case 2:
                    _arg1[0].x = (_arg1[0].x + ((WIDTH / 2) + 20));
                    _arg1[0].y = (_arg1[0].y + (HEIGHT / 3));
                    _arg1[1].x = (_arg1[1].x + ((WIDTH / 2) - 100));
                    _arg1[1].y = (_arg1[1].y + (HEIGHT / 3));
                    break;
                case 3:
                    _arg1[0].x = (_arg1[0].x + ((WIDTH / 2) - 140));
                    _arg1[0].y = (_arg1[0].y + (HEIGHT / 3));
                    _arg1[1].x = (_arg1[1].x + ((WIDTH / 2) - 40));
                    _arg1[1].y = (_arg1[1].y + (HEIGHT / 3));
                    _arg1[2].x = (_arg1[2].x + ((WIDTH / 2) + 60));
                    _arg1[2].y = (_arg1[2].y + (HEIGHT / 3));
                    break;
            };
            for each (_local2 in _arg1)
            {
                addChild(_local2);
            };
        }

        private function onComplete(_arg1:Boolean, _arg2):void{
            var _local3:XML;
            var _local4:Player;
            var _local5:0Te;
            var _local6:0io;
            var _local7:Dialog;
            var _local8:_22M;
            var _local9:jc;
            this.N7 = true;
            if (_arg1)
            {
                _local3 = new XML(_arg2);
                this.0Zl = _local3.Awards;
                if (this.zi)
                {
                    this.tm(_local3.Awards);
                };
                _local4 = _1JZ.0JF().getInstance(1Nb).player;
                if (_local4 != null)
                {
                    if (_local3.hasOwnProperty("Gold"))
                    {
                        _local4.1Ep(int(_local3.Gold));
                    } else
                    {
                        if (_local3.hasOwnProperty("Fame"))
                        {
                            _local4.1iQ = _local3.Fame;
                        };
                    };
                } else
                {
                    _local5 = _1JZ.0JF().getInstance(0Te);
                    if (_local5 != null)
                    {
                        if (_local3.hasOwnProperty("Gold"))
                        {
                            _local5.1Ep(int(_local3.Gold));
                        } else
                        {
                            if (_local3.hasOwnProperty("Fame"))
                            {
                                _local5.MF(int(_local3.Fame));
                            };
                        };
                    };
                };
            } else
            {
                _local6 = _1JZ.0JF().getInstance(0io);
                _local7 = new Dialog("MysteryBoxRollModal.purchaseFailedString", "MysteryBoxRollModal.pleaseTryAgainString", "MysteryBoxRollModal.okString", null, null);
                _local7.addEventListener(Dialog.LEFT_BUTTON, this.1de);
                _local6.dispatch(_local7);
                _local8 = _1JZ.0JF();
                _local9 = _local8.getInstance(jc);
                _local9.1Ot();
                _local9.start();
                this.close(true);
            };
        }

        private function 1de(_arg1:Event):void{
            var _local2:0io;
            _local2 = _1JZ.0JF().getInstance(0io);
            _local2.dispatch(new MysteryBoxSelectModal());
        }

        public function dz():Boolean{
            var _local1:int;
            var _local2:int;
            var _local7:0io;
            var _local8:0Te;
            if (((this.1Eg.1p1()) && (!((this.1Eg.rn == "")))))
            {
                _local1 = int(this.1Eg.4O);
                _local2 = (int(this.1Eg.rn) * this.quantity_);
            } else
            {
                _local1 = int(this.1Eg.1hG);
                _local2 = (int(this.1Eg.0Br) * this.quantity_);
            };
            var _local3:Boolean = true;
            var _local4:int;
            var _local5:int;
            var _local6:Player = _1JZ.0JF().getInstance(1Nb).player;
            if (_local6 != null)
            {
                _local5 = _local6.credits_;
                _local4 = _local6.1iQ;
            } else
            {
                _local8 = _1JZ.0JF().getInstance(0Te);
                if (_local8 != null)
                {
                    _local5 = _local8.0ce();
                    _local4 = _local8.15g();
                };
            };
            if ((((_local1 == Currency.1Jg)) && ((_local5 < _local2))))
            {
                _local7 = _1JZ.0JF().getInstance(0io);
                _local7.dispatch(new pu());
                _local3 = false;
            } else
            {
                if ((((_local1 == Currency.FAME)) && ((_local4 < _local2))))
                {
                    _local7 = _1JZ.0JF().getInstance(0io);
                    _local7.dispatch(new NotEnoughFameDialog());
                    _local3 = false;
                };
            };
            return (_local3);
        }

        public function onCloseClick(_arg1:MouseEvent):void{
            this.close();
        }

        private function close(_arg1:Boolean=false):void{
            var _local2:0io;
            if (this.state == this.S0)
            {
                return;
            };
            if (!_arg1)
            {
                _local2 = _1JZ.0JF().getInstance(0io);
                if (this.ZJ != null)
                {
                    _local2.dispatch(this.ZJ);
                } else
                {
                    _local2.dispatch(new MysteryBoxSelectModal());
                };
            };
            open = false;
        }

        private function onRemovedFromStage(_arg1:Event):void{
            open = false;
        }

        private function tm(_arg1:String):void{
            var _local4:String;
            var _local5:uint;
            var _local6:_13j;
            this.1LP.removeEventListener(TimerEvent.TIMER, this.0pj);
            this.1LP.stop();
            this.state = this.26T;
            if (this.1ZI < this.0bf)
            {
                this.06T.addEventListener(TimerEvent.TIMER, this.1vp);
                this.06T.start();
            };
            this.1tf.visible = true;
            var _local2:Array = _arg1.split(",");
            removeChild(this.1pZ);
            this.Yi.setStringBuilder(new 1cA().setParams(this.youWonString));
            this.Yi.setColor(0xFFDE00);
            var _local3:int = 40;
            for each (_local4 in _local2)
            {
                _local6 = this.1UU(ObjectLibrary.118[_local4], 1yz, _local3).setSize(16).setColor(0);
                _local6.filters = [];
                _local6.setSize(18);
                _local6.x = 20;
                addChild(_local6);
                this.1j6.push(_local6);
                _local3 = (_local3 + 25);
            };
            _local5 = 0;
            while (_local5 < _local2.length)
            {
                if (_local5 < this.ei.length)
                {
                    this.ei[_local5].bitmapData = new Bitmap(ObjectLibrary.getRedrawnTextureFromType(int(_local2[_local5]), this.1Ob, true)).bitmapData;
                };
                _local5++;
            };
            _local5 = 0;
            while (_local5 < this.ei.length)
            {
                this.16T(this.ei[_local5], {
                    scaleX:1.25,
                    scaleY:1.25
                }, {
                    scaleX:1,
                    scaleY:1
                });
                _local5++;
            };
            this.1Xy.alpha = 0;
            addChild(this.1Xy);
            if (this.1ZI == this.0bf)
            {
                this.16T(this.1Xy, {alpha:0}, {alpha:1});
                this.16T(this.dd, {alpha:0}, {alpha:1});
                this.16T(this.lI, {alpha:0}, {alpha:1});
            };
            this.16T(this.2r, {alpha:0}, {alpha:1});
            this.4a = true;
        }

        private function 16T(_arg1:DisplayObject, _arg2:Object=null, _arg3:Object=null):void{
            var _local4:GTween = new GTween(_arg1, (0.5 * 1), _arg2, {ease:4t.0uh});
            _local4.0aM = new GTween(_arg1, (0.5 * 1), _arg3, {ease:4t.0vp});
            _local4.0aM.paused = true;
        }

        private function 0ho():void{
            var _local2:g-;
            var _local3:int;
            var _local4:int;
            var _local5:int;
            var _local6:int;
            var _local7:int;
            var _local8:int;
            var _local1:Array = this.0Zl.split(",");
            if (_local1.length > 0)
            {
                _local2 = new g-(int(_local1[0]), 64);
                _local3 = ((HEIGHT / 6) - 10);
                _local4 = (WIDTH - 65);
                _local2.x = (5 + (_local4 * int((this.1ZI / 5))));
                _local2.y = (80 + (_local3 * (this.1ZI % 5)));
                _local5 = (((WIDTH / 2) - 40) + (this.ei[0].width * 0.5));
                _local6 = ((HEIGHT / 3) + (this.ei[0].height * 0.5));
                _local7 = (_local2.x + (_local2.height * 0.5));
                _local8 = ((100 + (_local3 * (this.1ZI % 5))) + (0.5 * ((HEIGHT / 6) - 20)));
                this.22d.Xf(_local5, _local6, _local7, _local8, 115, 15787660, 0.2);
                addChild(_local2);
                this.Pb.push(_local2);
            };
        }

        private function zg():void{
            var _local1:_13j;
            var _local2:Bitmap;
            this.2r.alpha = 0;
            this.dd.alpha = 0;
            this.lI.alpha = 0;
            removeChild(this.Yi);
            for each (_local1 in this.1j6)
            {
                removeChild(_local1);
            };
            while (this.1j6.length > 0)
            {
                this.1j6.pop();
            };
            removeChild(this.1Xy);
            for each (_local2 in this.ei)
            {
                removeChild(_local2);
            };
            while (this.ei.length > 0)
            {
                this.ei.pop();
            };
        }

        private function 1UO():void{
            var _local1:g-;
            for each (_local1 in this.Pb)
            {
                removeChild(_local1);
            };
            while (this.Pb.length > 0)
            {
                this.Pb.pop();
            };
        }

        private function 1or():void{
            x = ((WebMain._0Kr.stageWidth / 2) - (WIDTH / 2));
            y = ((WebMain._0Kr.stageHeight / 2) - (HEIGHT / 2));
        }

        private function 1wP(_arg1:MouseEvent):void{
            if (_arg1.currentTarget == this.dd)
            {
                switch (this.quantity_)
                {
                    case 5:
                        this.DR(1);
                        break;
                    case 10:
                        this.DR(5);
                        break;
                };
            } else
            {
                if (_arg1.currentTarget == this.lI)
                {
                    switch (this.quantity_)
                    {
                        case 1:
                            this.DR(5);
                            return;
                        case 5:
                            this.DR(10);
                            return;
                    };
                };
            };
        }

        private function 0cZ(_arg1:MouseEvent):void{
            this.DR(this.quantity_);
            this.zg();
            this.1UO();
            this.1j1();
        }


    }
}//package 1qa

