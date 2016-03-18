// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.02I

package BG{
    import flash.display.Sprite;
    import 1PB.cO;
    import _CU._13j;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.game.GameSprite;
    import _Jy._1HZ;
    import b4.f1;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.assembleegameclient.util.09g;
    import 1Gb.1aM;
    import _04_._1JZ;
    import 1n4.1WS;
    import kabam.rotmg.assets.services.02W;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.util.1ze;

    public class 02I extends Sprite {

        private static const VJ:int = 18;
        public static const 0A7:String = "lofiObj3";
        public static const 1hq:int = 225;
        public static const 1he:cO = new cO();

        private var di:_13j;
        private var 6u:_13j;
        private var Nj:_13j;
        private var LJ:_13j;
        private var Qz:Bitmap;
        private var 1Bc:Bitmap;
        private var 1CG:Bitmap;
        private var credits_:int = -1;
        private var 1iQ:int = -1;
        private var 4s:int = -1;
        private var 162:Boolean = false;
        private var 0Ty:Boolean = true;
        private var 0Eg:GameSprite;
        public var kn:_1HZ;
        private var 0rX:Number = -1;
        private var 0bu:String = "";

        public function 02I(_arg1:GameSprite=null, _arg2:Boolean=true, _arg3:Boolean=false, _arg4:Number=0){
            var _local6:f1;
            this.kn = new _1HZ();
            super();
            this.162 = _arg3;
            this.0Ty = _arg2;
            this.0Eg = _arg1;
            this.di = this.1zR();
            1he.push(this.di.textChanged);
            addChild(this.di);
            var _local5:BitmapData = AssetLibrary.1JR(0A7, 1hq);
            _local5 = TextureRedrawer.redraw(_local5, 40, true, 0);
            this.Qz = new Bitmap(_local5);
            addChild(this.Qz);
            if (this.0Ty)
            {
                this.6u = this.1zR();
                1he.push(this.6u.textChanged);
                addChild(this.6u);
                this.1Bc = new Bitmap(09g.0jZ());
                addChild(this.1Bc);
            };
            if (((this.162) && (1aM.0ui)))
            {
                _local6 = _1JZ.0JF().getInstance(1aM).getFortune();
                if (_local6.2N != null)
                {
                    this.0rX = _local6.2N.time;
                    this.LJ = this.1zR(0xFFFFFF);
                    1he.push(this.LJ.textChanged);
                    this.LJ.setStringBuilder(new 1WS(this.20a()));
                    addChild(this.LJ);
                    this.LJ.visible = false;
                };
                this.Nj = this.1zR(0xFFFFFF);
                1he.push(this.Nj.textChanged);
                addChild(this.Nj);
                this.1CG = new Bitmap(02W.1vS());
                addChild(this.1CG);
            } else
            {
                this.162 = false;
            };
            this.draw(0, 0, 0);
            mouseEnabled = true;
            doubleClickEnabled = true;
            addEventListener(MouseEvent.DOUBLE_CLICK, this.Go, false, 0, true);
            1he.complete.add(this.S5);
        }

        private function S5():void{
            if (this.162)
            {
                this.Qz.x = -(this.Qz.width);
                this.1CG.x = (-(this.Qz.width) + 10);
                this.1CG.y = 10;
                this.Nj.x = ((this.Qz.x - this.Nj.width) + 8);
                this.Nj.y = ((this.Qz.y + (this.Qz.height / 2)) - (this.di.height / 2));
                this.LJ.x = (-(this.LJ.width) - 2);
                this.LJ.y = 33;
                this.Qz.x = (this.Nj.x - this.Qz.width);
                this.di.x = ((this.Qz.x - this.di.width) + 8);
                this.di.y = ((this.Qz.y + (this.Qz.height / 2)) - (this.di.height / 2));
            } else
            {
                this.Qz.x = -(this.Qz.width);
                this.di.x = ((this.Qz.x - this.di.width) + 8);
                this.di.y = ((this.Qz.y + (this.Qz.height / 2)) - (this.di.height / 2));
            };
            if (this.0Ty)
            {
                this.1Bc.x = (this.di.x - this.1Bc.width);
                this.6u.x = ((this.1Bc.x - this.6u.width) + 8);
                this.6u.y = ((this.1Bc.y + (this.1Bc.height / 2)) - (this.6u.height / 2));
            };
        }

        private function Go(_arg1:MouseEvent):void{
            if (((((!(this.0Eg)) || (this.0Eg.evalIsNotInCombatMapArea()))) || ((Parameters.data_.clickForGold == true))))
            {
                this.kn.dispatch();
            };
        }

        public function 1zR(_arg1:uint=0xFFFFFF):_13j{
            var _local2:_13j = new _13j().setSize(VJ).setColor(_arg1).setTextHeight(16);
            _local2.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            return (_local2);
        }

        private function 21R():void{
            var _local1:String = this.20a();
            if (_local1 != this.0bu)
            {
                if (_local1 == "Ended")
                {
                    this.162 = false;
                    removeChild(this.LJ);
                    removeChild(this.1CG);
                    removeChild(this.Nj);
                    1aM.0ui = false;
                } else
                {
                    this.LJ.setStringBuilder(new 1WS(_local1));
                    this.0bu = _local1;
                };
                this.S5();
            };
        }

        public function draw(_arg1:int, _arg2:int, _arg3:int=0):void{
            if (this.162)
            {
                this.21R();
            };
            if ((((((_arg1 == this.credits_)) && (((this.0Ty) && ((_arg2 == this.1iQ)))))) && (((this.162) && ((_arg3 == this.4s))))))
            {
                return;
            };
            this.credits_ = _arg1;
            this.di.setStringBuilder(new 1WS(this.credits_.toString()));
            if (this.0Ty)
            {
                this.1iQ = _arg2;
                this.6u.setStringBuilder(new 1WS(this.1iQ.toString()));
            };
            if (this.162)
            {
                this.4s = _arg3;
                this.Nj.setStringBuilder(new 1WS(this.4s.toString()));
            };
            if (1he.isEmpty())
            {
                this.S5();
            };
        }

        public function 20a():String{
            var _local1 = "";
            var _local2:Date = new Date();
            var _local3:Number = ((this.0rX - _local2.time) / 1000);
            if (_local3 > 1ze.ll)
            {
                _local1 = (String(Math.ceil(1ze.ut(_local3))) + " days");
            } else
            {
                if (_local3 > 1ze.17Q)
                {
                    _local1 = (String(Math.ceil(1ze.bd(_local3))) + " hours");
                } else
                {
                    if (_local3 > 1ze.1rT)
                    {
                        _local1 = (String(Math.ceil(1ze.7b(_local3))) + " minutes");
                    } else
                    {
                        if (_local3 > (1ze.1rT / 2))
                        {
                            _local1 = "One Minute Left!";
                        } else
                        {
                            if (_local3 > 0)
                            {
                                _local1 = "Ending in a few seconds!!";
                            } else
                            {
                                _local1 = "Ended";
                            };
                        };
                    };
                };
            };
            return (_local1);
        }


    }
}//package BG

