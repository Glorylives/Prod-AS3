// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.02I

package _BG{
import _1PB._cO;

import _b4._f1;

import flash.display.Sprite;
    import _1PB._cO;
    import _CU._13j;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.game.GameSprite;
    import _Jy._1HZ;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.assembleegameclient.util._09g;
    import _1Gb._1aM;
    import _04_._1JZ;
    import _1n4._1WS;
    import kabam.rotmg.assets.services._02W;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.filters.DropShadowFilter;
    import com.company.assembleegameclient.util._1ze;

    public class _02I extends Sprite {

        private static const VJ:int = 18;
        public static const _0A7:String = "lofiObj3";
        public static const _1hq:int = 225;
        public static const _1he:_cO = new _cO();

        private var di:_13j;
        private var _6u:_13j;
        private var Nj:_13j;
        private var LJ:_13j;
        private var Qz:Bitmap;
        private var _1Bc:Bitmap;
        private var _1CG:Bitmap;
        private var credits_:int = -1;
        private var _1iQ:int = -1;
        private var _4s:int = -1;
        private var _162:Boolean = false;
        private var _0Ty:Boolean = true;
        private var _0Eg:GameSprite;
        public var kn:_1HZ;
        private var _0rX:Number = -1;
        private var _0bu:String = "";

        public function _02I(_arg1:GameSprite=null, _arg2:Boolean=true, _arg3:Boolean=false, _arg4:Number=0){
            var _local6:_f1;
            this.kn = new _1HZ();
            super();
            this._162 = _arg3;
            this._0Ty = _arg2;
            this._0Eg = _arg1;
            this.di = this._1zR();
            _1he.push(this.di.textChanged);
            addChild(this.di);
            var _local5:BitmapData = AssetLibrary._1JR(_0A7, _1hq);
            _local5 = TextureRedrawer.redraw(_local5, 40, true, 0);
            this.Qz = new Bitmap(_local5);
            addChild(this.Qz);
            if (this._0Ty)
            {
                this._6u = this._1zR();
                _1he.push(this._6u.textChanged);
                addChild(this._6u);
                this._1Bc = new Bitmap(_09g._0jZ());
                addChild(this._1Bc);
            }
            if (((this._162) && (_1aM._0ui)))
            {
                _local6 = _1JZ._0JF().getInstance(_1aM).getFortune();
                if (_local6._2N != null)
                {
                    this._0rX = _local6._2N.time;
                    this.LJ = this._1zR(0xFFFFFF);
                    _1he.push(this.LJ.textChanged);
                    this.LJ.setStringBuilder(new _1WS(this._20a()));
                    addChild(this.LJ);
                    this.LJ.visible = false;
                }
                this.Nj = this._1zR(0xFFFFFF);
                _1he.push(this.Nj.textChanged);
                addChild(this.Nj);
                this._1CG = new Bitmap(_02W._1vS());
                addChild(this._1CG);
            } else
            {
                this._162 = false;
            }
            this.draw(0, 0, 0);
            mouseEnabled = true;
            doubleClickEnabled = true;
            addEventListener(MouseEvent.DOUBLE_CLICK, this.Go, false, 0, true);
            _1he.complete.add(this.S5);
        }

        private function S5():void{
            if (this._162)
            {
                this.Qz.x = -(this.Qz.width);
                this._1CG.x = (-(this.Qz.width) + 10);
                this._1CG.y = 10;
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
            }
            if (this._0Ty)
            {
                this._1Bc.x = (this.di.x - this._1Bc.width);
                this._6u.x = ((this._1Bc.x - this._6u.width) + 8);
                this._6u.y = ((this._1Bc.y + (this._1Bc.height / 2)) - (this._6u.height / 2));
            }
        }

        private function Go(_arg1:MouseEvent):void{
            if (((((!(this._0Eg)) || (this._0Eg.evalIsNotInCombatMapArea()))) || ((Parameters.data_.clickForGold == true))))
            {
                this.kn.dispatch();
            }
        }

        public function _1zR(_arg1:uint=0xFFFFFF):_13j{
            var _local2:_13j = new _13j().setSize(VJ).setColor(_arg1).setTextHeight(16);
            _local2.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            return (_local2);
        }

        private function _21R():void{
            var _local1:String = this._20a();
            if (_local1 != this._0bu)
            {
                if (_local1 == "Ended")
                {
                    this._162 = false;
                    removeChild(this.LJ);
                    removeChild(this._1CG);
                    removeChild(this.Nj);
                    _1aM._0ui = false;
                } else
                {
                    this.LJ.setStringBuilder(new _1WS(_local1));
                    this._0bu = _local1;
                }
                this.S5();
            }
        }

        public function draw(_arg1:int, _arg2:int, _arg3:int=0):void{
            if (this._162)
            {
                this._21R();
            }
            if ((((((_arg1 == this.credits_)) && (((this._0Ty) && ((_arg2 == this._1iQ)))))) && (((this._162) && ((_arg3 == this._4s))))))
            {
                return;
            }
            this.credits_ = _arg1;
            this.di.setStringBuilder(new _1WS(this.credits_.toString()));
            if (this._0Ty)
            {
                this._1iQ = _arg2;
                this._6u.setStringBuilder(new _1WS(this._1iQ.toString()));
            }
            if (this._162)
            {
                this._4s = _arg3;
                this.Nj.setStringBuilder(new _1WS(this._4s.toString()));
            }
            if (_1he.isEmpty())
            {
                this.S5();
            }
        }

        public function _20a():String{
            var _local1 = "";
            var _local2:Date = new Date();
            var _local3:Number = ((this._0rX - _local2.time) / 1000);
            if (_local3 > _1ze.ll)
            {
                _local1 = (String(Math.ceil(_1ze.ut(_local3))) + " days");
            } else
            {
                if (_local3 > _1ze._17Q)
                {
                    _local1 = (String(Math.ceil(_1ze.bd(_local3))) + " hours");
                } else
                {
                    if (_local3 > _1ze._1rT)
                    {
                        _local1 = (String(Math.ceil(_1ze._7b(_local3))) + " minutes");
                    } else
                    {
                        if (_local3 > (_1ze._1rT / 2))
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
                            }
                        }
                    }
                }
            }
            return (_local1);
        }


    }
}//package BG

