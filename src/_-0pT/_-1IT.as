// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0pT.1IT

package 0pT{
    import 12X.0Q6;
    import _Jy._1HZ;
    import __AS3__.vec.Vector;
    import flash.text.TextField;
    import OZ.0c1;
    import 0uE.KC;
    import OZ.1om;
    import _0BB.Fu;
    import aq.Account;
    import 1Gb.1aM;
    import b4.f1;
    import com.company.assembleegameclient.map.Jw;
    import flash.utils.Timer;
    import zD.4q;
    import flash.display.Sprite;
    import BG.02I;
    import com.company.assembleegameclient.game.GameSprite;
    import com.company.assembleegameclient.util.Currency;
    import _04_._1JZ;
    import _0OG._22M;
    import flash.utils.getTimer;
    import flash.events.Event;
    import gx.1Nb;
    import com.company.assembleegameclient.objects.Player;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.events.MouseEvent;
    import OZ.06j;
    import 0gd.GTween;
    import 0G6.4t;
    import flash.display.DisplayObject;
    import flash.text.TextFormat;
    import flash.text.TextFormatAlign;
    import flash.text.TextFieldAutoSize;
    import flash.filters.GlowFilter;
    import flash.events.TimerEvent;
    import 1qg.0io;
    import 1PB.pu;
    import 1t6.Dialog;
    import 1qg.11S;
    import 1t6.tg;
    import com.company.assembleegameclient.objects.GameObject;
    import 1Np.1wN;
    import g0.1tk;
    import 1Np.Bg;
    import __AS3__.vec.*;

    public class 1IT extends 0Q6 {

        public static const jO:int = 800;
        public static const 1YC:int = 600;
        public static const STATE_ROUND_1:int = 1;
        public static const STATE_ROUND_2:int = 2;
        public static const 14C:Number = 200;
        private static const 0Bq:int = 120;
        public static const closed:_1HZ = new _1HZ();

        public static var ga:Class = EJ;
        public static var 1B5:Class = 1kV;
        public static var fortunePlatformEmbed2:Class = FortuneModal_fortunePlatformEmbed2;
        public static var 0l4:int = jO;//800
        public static var 0oc:int = 1YC;//600
        private static var 0Ea:Vector.<TextField>;
        public static var 07Z:int;
        public static var 1fj:int;
        public static var 1h-:int = ((1YC / 2) - 20);//280
        public static var 1Bx:Boolean = false;

        private const 0Aa:Number = 1200;
        private const 13K:Number = 100;
        private const 0oA:int = 0;
        private const 06O:int = 1;
        private const oG:int = 120;
        private const 0Qr:Number = 1.3;
        private const 0NF:Number = 6;
        private const 108:Number = 2.75;
        private const DISPLAY_PRIZE_TIME_1:Number = 3.75;
        private const DISPLAY_PRIZE_TIME_2:Number = 5;
        private const Il:Number = 0.12;
        private const A2:Number = 10;

        public var 0uV:0Jh;
        public var Fp:Vector.<18X>;
        public var 0pn:18X = null;
        private var 0sd:0c1;
        private var 32:0c1;
        private var 0jc:0c1;
        private var 06p:KC;
        private var 0KJ:int = -1;
        private var k2:1om;
        public var client:Fu;
        public var account:Account;
        public var model:1aM;
        public var Wz:f1;
        public var state:int = 1;
        private var jF:Jw;
        private var jQ:Timer;
        private var vk:int = -1;
        private var 1wh:int = 0;
        public var 0Mv:Vector.<g->;
        private var lastUpdate_:int;
        public var 14i:4q;
        private var 1L2:Number;
        private var MI:int = 0;
        private var 12Y:Boolean = false;
        private var radius:int = 200;
        private var SD:Number = 0;
        private var 0o8:int = 4;
        private var iD:int = 0;
        private var 14k:Sprite;
        private var 0iM:Sprite;
        public var 0qv:02I;
        private var nJ:Sprite;
        private var 10L:int = -1;
        private var 1uM:int = -1;
        private var 1VR:int = -1;
        private var gs_:GameSprite = null;
        private var 1lH:Boolean = false;
        private var 1YB:Array;

        public function 1IT(_arg1:GameSprite=null){
            this.0uV = new 0Jh();
            this.Fp = Vector.<18X>([new 18X(), new 18X(), new 18X()]);
            this.0sd = new 0c1("Play for ", 0, Currency.INVALID);
            this.32 = new 0c1("Play for ", 0, Currency.INVALID);
            this.0jc = new 0c1("Return", 0, Currency.INVALID);
            this.jQ = new Timer(this.0Aa);
            0l4 = jO;
            0oc = 1YC;
            super(0l4, 0oc);
            1Bx = true;
            this.0Da();
            this.1L2 = Jw.MA;
            this.jF = new Jw();
            addChild(this.jF);
            this.06p = new KC(1);
            addChild(this.06p);
            this.06p.y = 4;
            this.06p.x = ((0l4 - this.06p.width) - 5);
            var _local2:_22M = _1JZ.0JF();
            this.client = _local2.getInstance(Fu);
            this.account = _local2.getInstance(Account);
            this.model = _local2.getInstance(1aM);
            this.Wz = this.model.getFortune();
            if (this.Wz == null)
            {
                return;
            }
            this.0uV.setXPos((0l4 / 2));
            this.0uV.setYPos(1h-);
            this.1U1();
            addChild(this.0uV);
            this.lastUpdate_ = getTimer();
            this.k2 = new 1om();
            this.k2.zi.add(this.1gT);
            addChild(this.k2);
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            addEventListener(Event.REMOVED_FROM_STAGE, this.0zN);
            this.0qv = new 02I(null, false, true);
            this.0qv.x = 734;
            this.0qv.y = 0;
            addChild(this.0qv);
            var _local3:Player = _1JZ.0JF().getInstance(1Nb).player;
            if (_local3 != null)
            {
                this.0qv.draw(_local3.credits_, 0, _local3.0NG);
            }
            if (_arg1 != null)
            {
                this.gs_ = _arg1;
                this.gs_.0qv.visible = false;
            }
            var _local4:BitmapData = AssetLibrary.1JR("lofiObj3", 1172);
            _local4 = TextureRedrawer.redraw(_local4, 75, true, 0);
            this.0uV.addEventListener(MouseEvent.ROLL_OVER, this.6J);
            this.0uV.addEventListener(MouseEvent.ROLL_OUT, this.gT);
            this.nJ = 06j.make(this.Wz.1c5);
            this.nJ.x = (0l4 - (this.nJ.width + 10));
            this.nJ.y = 10;
            this.rk();
            this.n0();
            this.setString(0);
            this.m5();
            addChild(this.nJ);
            this.nJ.addEventListener(MouseEvent.ROLL_OVER, this.gT);
            this.nJ.visible = false;
        }

        public static function Bv(_arg1:DisplayObject, _arg2:Object=null, _arg3:Object=null, _arg4:Function=null):void{
            var _local5:GTween = new GTween(_arg1, (0.5 * 1), _arg2, {ease:4t.0uh});
            _local5.0aM = new GTween(_arg1, (0.5 * 1), _arg3, {ease:4t.0vp});
            _local5.0aM.paused = true;
            _local5.0aM.end();
            _local5.0aM.onComplete = _arg4;
        }


        private function 6J(_arg1:MouseEvent):void{
            this.nJ.visible = true;
        }

        private function gT(_arg1:MouseEvent):void{
            if (!(_arg1.relatedObject is g-))
            {
                this.nJ.visible = false;
            }
        }

        private function m5():void{
            this.10L = int(this.Wz.1wt);
            this.1VR = int(this.Wz.20g);
            this.1uM = int(this.Wz.0Tj);
            this.0sd.setPrice(this.10L, Currency.1Jg);
            this.0sd.setEnabled(true);
            this.0sd.x = (((0l4 / 2) - 100) - this.0sd.width);
            this.0sd.y = (((0oc * 70) / 75) - (this.0sd.height / 2));
            addChild(this.0sd);
            this.0sd.addEventListener(MouseEvent.CLICK, this.qJ);
            this.32.setPrice(this.1VR, Currency.Ls);
            this.32.setEnabled(true);
            this.0jc.visible = false;
            addChild(this.0jc);
            this.0jc.1wG("Return");
            addChild(this.32);
            this.32.x = ((0l4 / 2) + 100);
            this.32.y = (((0oc * 70) / 75) - (this.32.height / 2));
            this.0jc.x = ((0l4 / 2) + 100);
            this.0jc.y = (((0oc * 70) / 75) - (this.32.height / 2));
            this.32.addEventListener(MouseEvent.CLICK, this.1N);
        }

        private function n0():void{
            var _local4:TextField;
            0Ea = new Vector.<TextField>();
            var _local1:Vector.<String> = Vector.<String>(["HOW WILL YOU PLAY?", "THE FIVE MASTERS OF GOZOR WILL DETERMINE YOUR PRIZE!", "HERE'S WHAT YOU CAN WIN!", "Shuffling!", "PICK ONE TO WIN A PRIZE!", "YOU WON! ITEMS WILL BE PLACED IN YOUR GIFT CHEST", "TWO ITEMS LEFT! TAKE ANOTHER SHOT!", "PICK A SECOND PRIZE!", "PLAY AGAIN?", "Choose now or I will choose for you!", "Determining Prizes!", "Sorting Loot!", "What can you win?", "Big Prizes! Big Orbs! I love it!", "Wooah! Awesome lewt!", "Processing hadoop data..."]);
            var _local2:TextFormat = new TextFormat();
            _local2.size = 24;
            _local2.font = "Myriad Pro";
            _local2.bold = false;
            _local2.align = TextFormatAlign.LEFT;
            _local2.leftMargin = 0;
            _local2.indent = 0;
            _local2.leading = 0;
            var _local3:uint;
            while (_local3 < _local1.length)
            {
                _local4 = new TextField();
                _local4.text = _local1[_local3];
                _local4.textColor = 0xFFFF00;
                _local4.autoSize = TextFieldAutoSize.CENTER;
                _local4.selectable = false;
                _local4.defaultTextFormat = _local2;
                _local4.setTextFormat(_local2);
                _local4.filters = [new GlowFilter(0xFFFFFF, 1, 2, 2, 1.5, 1)];
                0Ea.push(_local4);
                _local3++;
            }
        }

        private function setString(_arg1:int):void{
            if (this.parent == null)
            {
                return;
            }
            if ((((this.0KJ >= 0)) && (!((0Ea[this.0KJ].parent == null)))))
            {
                removeChild(0Ea[this.0KJ]);
            }
            if (_arg1 < 0)
            {
                return;
            }
            this.0KJ = _arg1;
            var _local2:TextField = 0Ea[this.0KJ];
            _local2.x = ((0l4 / 2) - (_local2.width / 2));
            _local2.y = (((0oc * 66) / 75) - (_local2.height / 2));
            addChild(0Ea[this.0KJ]);
        }

        private function 0zN(_arg1:Event):void{
            this.06p.clicked.removeAll();
            1Bx = false;
            closed.dispatch();
            closed.removeAll();
            this.jQ.removeEventListener(TimerEvent.TIMER, this.0Sy);
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            removeEventListener(Event.REMOVED_FROM_STAGE, this.0zN);
            this.k2.zi.removeAll();
            this.k2.end();
            this.k2 = null;
            this.d-();
            this.0Qi();
            this.0uV.removeEventListener(MouseEvent.ROLL_OVER, this.6J);
            this.0uV.removeEventListener(MouseEvent.ROLL_OUT, this.gT);
            this.nJ.removeEventListener(MouseEvent.ROLL_OVER, this.gT);
            this.0jc.removeEventListener(MouseEvent.CLICK, this.0vR);
            if (this.gs_ != null)
            {
                this.gs_.0qv.visible = false;
            }
        }

        private function 0Sy(_arg1:TimerEvent=null):void{
            var _local5:g-;
            this.vk++;
            if (this.0Mv == null)
            {
                this.0Mv = Vector.<g->([new g-(this.Wz.0Cg[this.vk], 0Bq), new g-(this.Wz.0Cg[(this.vk + 1)], 0Bq)]);
            }
            if (this.vk >= this.Wz.0Cg.length)
            {
                this.vk = 0;
            }
            var _local2:int = (this.vk % 2);
            if (((!((this.0Mv[this.1wh] == null))) && (!((this.0Mv[this.1wh].parent == null)))))
            {
                _local5 = this.0Mv[this.1wh];
                this.16T(_local5, {alpha:0}, this.0Wh);
            }
            var _local3:g- = new g-(this.Wz.0Cg[this.vk], 0Bq, true);
            _local3.onMouseOver.add(this.0e6);
            _local3.onMouseOut.add(this.0gK);
            _local3.setXPos(this.0uV.getCenterX());
            _local3.setYPos(this.0uV.getCenterY());
            this.0Mv[_local2] = _local3;
            _local3.alpha = 0;
            addChild(_local3);
            this.16T(_local3, {alpha:1});
            this.1wh = _local2;
            var _local4:Player = _1JZ.0JF().getInstance(1Nb).player;
            if (((!((this.0qv == null))) && (!((_local4 == null)))))
            {
                this.0qv.draw(_local4.credits_, 0, _local4.0NG);
            }
        }

        private function 0Wh(_arg1:GTween):void{
            if (_arg1.target.parent != null)
            {
                _arg1.target.parent.removeChild(_arg1.target);
            }
        }

        public function 0e6():void{
            this.jQ.stop();
        }

        public function 0gK():void{
            this.jQ.start();
            this.0Sy();
        }

        public function rk():void{
            this.jQ.delay = this.0Aa;
            this.jQ.addEventListener(TimerEvent.TIMER, this.0Sy);
            this.0gK();
        }

        private function 1A8():void{
            this.jQ.removeEventListener(TimerEvent.TIMER, this.0Sy);
            var _local1:int;
            while (_local1 < 2)
            {
                if (((!((this.0Mv[_local1] == null))) && (!((this.0Mv[_local1].parent == null)))))
                {
                    this.0Mv[_local1].alpha = 0;
                    this.0Mv[_local1].onMouseOut.removeAll();
                    this.0Mv[_local1].onMouseOver.removeAll();
                    this.0Mv[_local1].parent.removeChild(this.0Mv[_local1]);
                }
                _local1++;
            }
            this.0e6();
        }

        private function 1DS():Boolean{
            return (1aM.0ui);
        }

        private function 16T(_arg1:DisplayObject, _arg2:Object=null, _arg3:Function=null):void{
            var _local4:GTween = new GTween(_arg1, 0.5, _arg2, {
                ease:4t.0uh,
                onComplete:_arg3
            });
        }

        private function 1gT():void{
            var _local2:int;
            var _local1:18X;
            do 
            {
                _local2 = int((Math.random() * 3));
                if ((((this.state == STATE_ROUND_1)) || (!((this.Fp[_local2] == this.0pn)))))
                {
                    _local1 = this.Fp[_local2];
                }
            } while (_local1 == null);
            this.1_ZS(_local1);
        }

        protected function 0Da():void{
            var _local1:tY;
            this.14k = new Sprite();
            _local1 = new tY(new fortunePlatformEmbed2(), 500, 500);
            _local1.x = (-(_local1.width) / 2);
            _local1.y = (-(_local1.height) / 2);
            this.14k.addChild(_local1);
            this.14k.x = (0l4 / 2);
            this.14k.y = 1h-;
            this.14k.alpha = 0.25;
            addChild(this.14k);
            this.0iM = new Sprite();
            _local1 = new tY(new 1B5(), 700, 700);
            _local1.x = (-(_local1.width) / 2);
            _local1.y = (-(_local1.height) / 2);
            this.0iM.addChild(_local1);
            this.0iM.x = (0l4 / 2);
            this.0iM.y = 1h-;
            this.0iM.alpha = 0.15;
            addChild(this.0iM);
        }

        override protected function makeModalBackground():Sprite{
            var _local1:Sprite = new Sprite();
            var _local2:DisplayObject = new ga();
            _local2.width = 0l4;
            _local2.height = 0oc;
            _local2.alpha = 0.7;
            _local1.addChild(_local2);
            return (_local1);
        }

        private function 0vR(_arg1:MouseEvent):void{
            this.0jc.removeEventListener(MouseEvent.CLICK, this.0vR);
            this.DJ();
        }

        private function qJ(_arg1:MouseEvent):void{
            this.1Gc(Currency.1Jg);
        }

        private function 1N(_arg1:MouseEvent):void{
            this.1Gc(Currency.Ls);
        }

        private function 1Gc(_arg1:int):void{
            var _local4:0io;
            if (!this.1DS())
            {
                this.02F();
            }
            var _local2:Player = _1JZ.0JF().getInstance(1Nb).player;
            if (_local2 != null)
            {
                if ((((((_arg1 == Currency.1Jg)) && ((this.state == STATE_ROUND_2)))) && (((_local2.credits_ - this.1uM) < 0))))
                {
                    _local4 = _1JZ.0JF().getInstance(0io);
                    _local4.dispatch(new pu());
                    return;
                }
                if ((((_arg1 == Currency.1Jg)) && (((_local2.credits_ - this.10L) < 0))))
                {
                    _local4 = _1JZ.0JF().getInstance(0io);
                    _local4.dispatch(new pu());
                    return;
                }
                if ((((_arg1 == Currency.Ls)) && (((_local2.0NG - this.1VR) < 0))))
                {
                    return;
                }
            }
            this.jQ.delay = this.13K;
            this.0uV.0GT(0Jh.14E);
            var _local3:Object = this.NY();
            if (_arg1 == Currency.Ls)
            {
                _local3.currency = 2;
            } else
            {
                if (_arg1 == Currency.1Jg)
                {
                    _local3.currency = 0;
                } else
                {
                    return;
                }
            }
            if (this.state == STATE_ROUND_1)
            {
                _local3.status = 0;
                this.0uV.removeEventListener(MouseEvent.ROLL_OVER, this.6J);
            }
            if ((((this.state == STATE_ROUND_1)) && (!(this.client.1r6()))))
            {
                this.d-();
                this.12Y = (_arg1 == Currency.1Jg);
                if (_local2 != null)
                {
                    if (this.12Y)
                    {
                        _local2.credits_ = (_local2.credits_ - this.10L);
                        this.0qv.draw(_local2.credits_, 0, _local2.0NG);
                    } else
                    {
                        if ((_local2.0NG - this.1VR) < 0)
                        {
                            return;
                        }
                        _local2.0NG = (_local2.0NG - this.1VR);
                        this.0qv.draw(_local2.credits_, 0, _local2.0NG);
                    }
                }
                this.client.sendRequest("/account/playFortuneGame", _local3);
                this.setString((10 + int((Math.random() * 6))));
                this.client.complete.addOnce(this.21y);
                this.0sd.visible = false;
                this.32.visible = false;
            } else
            {
                if (this.state == STATE_ROUND_2)
                {
                    this.d-();
                    this.i2();
                    _local2 = _1JZ.0JF().getInstance(1Nb).player;
                    if (_local2 != null)
                    {
                        _local2.credits_ = (_local2.credits_ - this.1uM);
                        this.0qv.draw(_local2.credits_, 0, _local2.0NG);
                    }
                    this.0sd.visible = false;
                    this.0jc.visible = false;
                    return;
                }
            }
        }

        private function 21y(_arg1:Boolean, _arg2):void{
            var _local3:XML;
            var _local4:Player;
            var _local5:Vector.<int>;
            var _local6:int;
            var _local7:Boolean;
            var _local8:Number;
            var _local9:Number;
            var _local10:Number;
            var _local11:Number;
            var _local12:int;
            var _local13:Number;
            var _local14:Number;
            var _local15:Number;
            var _local16:Number;
            var _local17:String;
            if (_arg1)
            {
                _local3 = new XML(_arg2);
                this.1YB = _local3.Candidates.split(",");
                _local4 = _1JZ.0JF().getInstance(1Nb).player;
                if (_local4 != null)
                {
                    if (_local3.hasOwnProperty("Gold"))
                    {
                        _local4.credits_ = int(_local3.Gold);
                        this.0qv.draw(_local4.credits_, 0, _local4.0NG);
                    } else
                    {
                        if (_local3.hasOwnProperty("FortuneToken"))
                        {
                            _local4.0NG = int(_local3.FortuneToken);
                            this.0qv.draw(_local4.credits_, 0, _local4.0NG);
                        }
                    }
                }
                _local5 = Vector.<int>([0, 2, 1]);
                _local6 = Math.floor((Math.random() * 3));
                _local7 = (Math.random() > 0.5);
                _local8 = this.0uV.getCenterX();
                _local9 = this.0uV.getCenterY();
                _local10 = this.Fp[_local5[_local6]].getCenterX();
                _local11 = this.Fp[_local5[_local6]].getCenterY();
                _local12 = 0;
                _local13 = _local8;
                _local14 = _local9;
                _local15 = 0.25;
                _local16 = 1.2;
                this.1A8();
                for each (_local17 in this.1YB)
                {
                    if (_local12 == 0)
                    {
                        new 1qk(_local15, this.Xf, _local8, _local9, _local10, _local11);
                        new 1qk((_local15 + 0.1), this.Fp[_local5[_local6]].doItemShow, int(_local17));
                    } else
                    {
                        _local10 = this.Fp[_local5[_local6]].getCenterX();
                        _local11 = this.Fp[_local5[_local6]].getCenterY();
                        new 1qk(_local15, this.Xf, _local13, _local14, _local10, _local11);
                        new 1qk((_local15 + 0.1), this.Fp[_local5[_local6]].doItemShow, int(_local17));
                    }
                    _local13 = _local10;
                    _local14 = _local11;
                    _local15 = (_local15 + _local16);
                    _local12++;
                    if (_local7)
                    {
                        _local6 = ((_local6 + 1) % 3);
                    } else
                    {
                        --_local6;
                        _local6 = (((_local6)<0) ? 2 : _local6);
                    }
                }
                new 1qk(this.0NF, this.i2);
            } else
            {
                this.1OP();
            }
        }

        private function i2():void{
            if ((((this.state == STATE_ROUND_2)) && (!((this.0pn == null)))))
            {
                this.Jo();
            }
            var _local1:int;
            while (_local1 < 3)
            {
                this.Fp[_local1].removeItemReveal();
                this.Fp[_local1].saveReturnPotion();
                this.Fp[_local1].setAnimation(6, 7);
                this.Fp[_local1].setAnimationDuration(50);
                _local1++;
            }
            this.0Ae(this.06O);
            this.0uV.0GT(0Jh.0Sf);
            new 1qk(this.108, this.1L1);
            this.setString(3);
        }

        private function 1L1():void{
            this.0Ae(this.0oA);
            if (this.state == STATE_ROUND_2)
            {
                this.setString(7);
            } else
            {
                this.setString(4);
            }
            this.1sa(this.0pn);
            this.0uV.0GT(0Jh.034);
            this.0uX(this.0uV.getCenterX(), this.0uV.getCenterY(), 10, 0xFFFF);
            var _local1:int;
            while (_local1 < 3)
            {
                if ((((this.state == STATE_ROUND_2)) && ((this.Fp[_local1] == this.0pn))))
                {
                } else
                {
                    this.Fp[_local1].setActive2();
                    this.Fp[_local1].doItemReturn();
                    new 1qk(this.Il, this.0uX, int(this.Fp[_local1].returnCenterX()), int(this.Fp[_local1].returnCenterY()), 5, 0xFFFF);
                    new 1qk(this.Il, this.Fp[_local1].setAnimationPulse);
                }
                _local1++;
            }
            if (this.k2 == null)
            {
                return;
            }
            new 1qk(this.Il, this.0uV.0GT, 0Jh.07c);
            this.k2.start(this.A2);
            this.k2.setXPos(this.0uV.getCenterX());
            this.k2.setYPos(this.0uV.getCenterY());
            new 1qk(7, this.Wa);
            this.1lH = true;
        }

        private function Wa():void{
            if (((!((this.k2 == null))) && (this.k2.R5())))
            {
                this.setString(9);
            }
        }

        private function 1OP():void{
            var _local1:0io;
            _local1 = _1JZ.0JF().getInstance(0io);
            var _local2:Dialog = new Dialog("MysteryBoxRollModal.purchaseFailedString", "MysteryBoxRollModal.pleaseTryAgainString", "MysteryBoxRollModal.okString", null, null);
            _local2.addEventListener(Dialog.LEFT_BUTTON, this.1de, false, 0, true);
            _local1.dispatch(_local2);
        }

        private function 1de(_arg1:Event):void{
            var _local2:11S;
            _local2 = _1JZ.0JF().getInstance(11S);
            _local2.dispatch();
        }

        private function 02F():void{
            var _local1:0io;
            _local1 = _1JZ.0JF().getInstance(0io);
            _local1.dispatch(new tg("The Alchemist has left the Nexus.Please check back later.", "Oh no!"));
        }

        private function NY():Object{
            var _local1:Object = this.account.1Y();
            _local1.gameId = this.Wz.id;
            return (_local1);
        }

        private function 1y2(_arg1:MouseEvent):void{
            this.1_ZS(_arg1.currentTarget);
        }

        private function 1_ZS(_arg1:Object):void{
            var _local2:int;
            var _local3:int;
            while (_local3 < 3)
            {
                if (this.Fp[_local3] == _arg1)
                {
                    this.yH(_local3, _local2);
                    this.Fp[_local3].setAnimationClicked();
                }
                if (this.Fp[_local3] != this.0pn)
                {
                    _local2++;
                }
                this.Fp[_local3].setGlowState(18X.1Lm);
                _local3++;
            }
            this.1lH = false;
        }

        private function yH(_arg1:int, _arg2:int):void{
            var _local3:Object = this.NY();
            _local3.choice = _arg2;
            _local3.status = this.state;
            _local3.currency = 0;
            if (!this.client.1r6())
            {
                this.k2.remove();
                this.0Qi();
                this.0pn = this.Fp[_arg1];
                this.client.sendRequest("/account/playFortuneGame", _local3);
                this.client.complete.addOnce(this.0QD);
            }
        }

        private function 0QD(_arg1:Boolean, _arg2):void{
            var _local3:XML;
            var _local4:0io;
            if (_arg1)
            {
                _local3 = new XML(_arg2);
                if (this.state == STATE_ROUND_2)
                {
                    new 1qk(0.25, this.0uX, this.0pn.getCenterX(), this.0pn.getCenterY(), 6, 0xFFFF);
                    new 1qk(0.25, this.0pn.0K4, _local3.Awards);
                    new 1qk(this.DISPLAY_PRIZE_TIME_2, this.DJ);
                } else
                {
                    if (this.state == STATE_ROUND_1)
                    {
                        this.state = STATE_ROUND_2;
                        new 1qk(this.DISPLAY_PRIZE_TIME_1, this.IB, _local3.Awards);
                        new 1qk(0.25, this.0uX, this.0pn.getCenterX(), this.0pn.getCenterY(), 6, 0xFFFF);
                        new 1qk(0.25, this.0pn.0K4, _local3.Awards);
                    }
                }
                new 1qk(0.5, this.setString, 5);
            } else
            {
                this.1sa(null);
                _local4 = _1JZ.0JF().getInstance(0io);
                if (this.state == STATE_ROUND_1)
                {
                    _local4.dispatch(new tg("You have run out _of time to choose, but an item has been chosen for you.", "Oh no!"));
                } else
                {
                    _local4.dispatch(new tg("You have run out _of time to choose.", "Oh no!"));
                }
            }
        }

        private function IB(_arg1:int):void{
            var _local2:int;
            this.RJ();
            this.09P();
            this.0sd.setPrice(this.1uM, Currency.1Jg);
            this.0sd.visible = true;
            this.0jc.visible = true;
            this.0jc.addEventListener(MouseEvent.CLICK, this.0vR);
            _local2 = 0;
            while (_local2 < this.1YB.length)
            {
                if (int(this.1YB[_local2]) == _arg1)
                {
                    this.1YB[_local2] = this.1YB[(this.1YB.length - 1)];
                }
                _local2++;
            }
            this.1YB.pop();
            _local2 = 0;
            while (_local2 < this.Fp.length)
            {
                if (this.Fp[_local2] != this.0pn)
                {
                    this.Fp[_local2].doItemShow(int(this.1YB.pop()));
                }
                _local2++;
            }
            this.setString(6);
        }

        private function DJ():void{
            this.state = STATE_ROUND_1;
            this.0Qi();
            this.09P();
            this.0sd.setPrice(this.10L, Currency.1Jg);
            this.0sd.visible = true;
            this.32.visible = true;
            this.0jc.visible = false;
            this.rk();
            this.setString(0);
            this.RJ();
            this.12Y = false;
            this.0uV.addEventListener(MouseEvent.ROLL_OVER, this.6J);
            this.0uV.reset();
            var _local1:int;
            while (_local1 < 3)
            {
                this.Fp[_local1].resetVars();
                _local1++;
            }
            this.1U1();
        }

        private function RJ():void{
            this.radius = 14C;
            this.SD = 0;
            this.0o8 = 8;
            this.iD = 0;
        }

        private function d-():void{
            this.0sd.removeEventListener(MouseEvent.CLICK, this.qJ);
            this.32.removeEventListener(MouseEvent.CLICK, this.1N);
        }

        private function 09P():void{
            if (this.state == STATE_ROUND_1)
            {
                this.32.addEventListener(MouseEvent.CLICK, this.1N);
            }
            this.0sd.addEventListener(MouseEvent.CLICK, this.qJ);
        }

        private function 0Qi():void{
            var _local1:int;
            while (_local1 < 3)
            {
                this.Fp[_local1].removeEventListener(MouseEvent.CLICK, this.1y2);
                _local1++;
            }
        }

        private function 1sa(_arg1:18X=null):void{
            var _local2:int;
            while (_local2 < 3)
            {
                if (this.Fp[_local2] == _arg1)
                {
                    this.Fp[_local2].removeEventListener(MouseEvent.CLICK, this.1y2);
                } else
                {
                    this.Fp[_local2].addEventListener(MouseEvent.CLICK, this.1y2);
                    this.Fp[_local2].setMouseTracking(true);
                }
                _local2++;
            }
        }

        private function 1U1():void{
            var _local3:Number;
            var _local1:int = 14C;
            var _local2:int;
            while (_local2 < 3)
            {
                _local3 = (((((_local2 + 1) * 120) - 60) * Math.PI) / 180);
                this.Fp[_local2].setXPos((this.0uV.getCenterX() + (_local1 * Math.sin(_local3))));
                this.Fp[_local2].setYPos((this.0uV.getCenterY() + (_local1 * Math.cos(_local3))));
                if (this.Fp[_local2].parent == null)
                {
                    addChild(this.Fp[_local2]);
                } else
                {
                    if (this.Fp[_local2].visible == false)
                    {
                        this.Fp[_local2].visible = true;
                    }
                }
                this.Fp[_local2].removeItemReveal();
                this.Fp[_local2].setInactive();
                this.Fp[_local2].reset();
                _local2++;
            }
            this.0pn = null;
        }

        private function Jo():void{
            var _local4:Number;
            var _local1:int;
            var _local2:int = 14C;
            if (((!((this.0pn == null))) && (this.0pn.parent)))
            {
                this.0pn.visible = false;
                this.0pn.setInactive();
            }
            var _local3:int;
            while (_local3 < 3)
            {
                if (this.Fp[_local3] != this.0pn)
                {
                    _local4 = ((((_local1 * 120) - 60) * Math.PI) / 180);
                    this.Fp[_local3].setXPos((this.0uV.getCenterX() + (_local2 * Math.sin(_local4))));
                    this.Fp[_local3].setYPos((this.0uV.getCenterY() + (_local2 * Math.cos(_local4))));
                    _local1++;
                }
                _local3++;
            }
        }

        public function 0w1():void{
            var _local3:Number;
            var _local1:int = ((200 * Math.abs(((int((getTimer() / 2)) % 1000) - 500))) / 1000);
            if (this.iD < this.oG)
            {
                this.iD = (this.iD + 4);
            }
            var _local2:int;
            while (_local2 < 3)
            {
                _local3 = ((((((_local2 + 1) * (120 + this.iD)) - 60) - getTimer()) * Math.PI) / 180);
                this.Fp[_local2].setXPos((this.0uV.getCenterX() + (this.radius * Math.sin(_local3))));
                this.Fp[_local2].setYPos((this.0uV.getCenterY() + (this.radius * Math.cos(_local3))));
                _local2++;
            }
            if (this.radius == 14C)
            {
                this.0o8 = (this.0o8 * -1);
            }
            if (this.radius < 0)
            {
                this.radius = 0;
            } else
            {
                if (this.iD == this.oG)
                {
                    this.radius = (this.radius - ((this.0o8 * 2.85) / this.108));
                }
            }
        }

        public function onEnterFrame(_arg1:Event):void{
            var _local5:Number;
            var _local2:int = getTimer();
            var _local3:int = (_local2 - this.lastUpdate_);
            07Z = mouseX;
            1fj = mouseY;
            if (this.MI == this.06O)
            {
                this.0w1();
                this.0uV.setAnimationDuration(((this.oG + 80) - this.iD));
            }
            var _local4:int;
            while (_local4 < 3)
            {
                this.Fp[_local4].update(_local2, _local3);
                _local4++;
            }
            this.240(this.14k, 0.1);
            this.240(this.0iM, -0.15);
            if (this.1lH)
            {
                _local5 = Math.random();
                if (_local5 < 0.05)
                {
                    this.Fp[int(((_local5 * 200) % 3))].setShake(true);
                }
            }
            this.draw(_local2, _local3);
        }

        public function 240(_arg1:DisplayObject, _arg2:Number):void{
            if (_arg2 < 0)
            {
                _arg2 = (_arg2 * -1);
                _arg1.rotation = (Math.abs(((_arg1.rotation - _arg2) + 360)) % 360);
            } else
            {
                _arg1.rotation = ((_arg1.rotation + _arg2) % 360);
            }
        }

        public function draw(_arg1:int, _arg2:int):void{
            this.0uV.Ql(_arg1, _arg2);
            this.jF.update(_arg1, _arg2);
            this.jF.draw(null, _arg1);
            this.lastUpdate_ = _arg1;
        }

        private function 0uX(_arg1:Number, _arg2:Number, _arg3:int=20, _arg4:int=12447231):void{
            var _local5:GameObject;
            var _local6:1wN;
            if (this.jF != null)
            {
                _local5 = new GameObject(null);
                _local5.x_ = Jw.0Gb(_arg1);
                _local5.y_ = Jw.0Gb(_arg2);
                _local6 = new 1wN(_local5, _arg3, _arg4);
                this.jF.addObj(_local6, _local5.x_, _local5.y_);
            }
        }

        private function Xf(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number, _arg5:int=200, _arg6:int=12447231):void{
            if (this.parent == null)
            {
                return;
            }
            var _local7:GameObject = new GameObject(null);
            _local7.x_ = Jw.0Gb(_arg1);
            _local7.y_ = Jw.0Gb(_arg2);
            var _local8:1tk = new 1tk();
            _local8.x_ = Jw.0Gb(_arg3);
            _local8.y_ = Jw.0Gb(_arg4);
            var _local9:Bg = new Bg(_local7, _local8, _arg6, _arg5);
            this.jF.addObj(_local9, _local7.x_, _local7.y_);
        }

        private function 0Ae(_arg1:int):void{
            this.MI = _arg1;
        }


    }
}//package 0pT

