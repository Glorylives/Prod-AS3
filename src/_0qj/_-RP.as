// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.RP

package 0qj{
    import flash.display.Bitmap;
    import _CU._13j;
    import com.company.assembleegameclient.ui.1-p;
    import 1n4.AppendingLineBuilder;
    import flash.display.BitmapData;
    import com.company.assembleegameclient.util._V4;
    import com.company.assembleegameclient.util._BJ;
    import com.company.assembleegameclient.util.0s0;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import com.company.util.hd;
    import flash.geom.ColorTransform;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;
    import AO.du;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import kabam.rotmg.assets.services.02W;
    import com.company.assembleegameclient.util.09g;
    import WZ.0Te;
    import com.company.assembleegameclient.appengine.1WG;
    import com.company.assembleegameclient.appengine.Cp;

    public class RP extends 1ae {

        private var 0Sz:Bitmap;
        private var nameText_:_13j;
        private var v-:_13j;
        private var 0pN:1-p;
        private var bestLevel_:_13j;
        private var 0qD:_13j;
        private var unlockText_:_13j;
        private var nextClassQuest_:_13j;
        private var costText_:_13j;
        private var By:Bitmap;
        private var 0CS:Boolean;

        public function RP(_arg1:XML, _arg2:0Te, _arg3:1WG){
            var _local8:AppendingLineBuilder;
            var _local9:XML;
            var _local10:BitmapData;
            var _local11:int;
            var _local12:int;
            var _local13:int;
            var _local14:int;
            super(0x363636, 1, 0xFFFFFF, 1);
            var _local4:_BJ = _V4.1Q2(String(_arg1.AnimatedTexture.File), int(_arg1.AnimatedTexture.Index));
            var _local5:0s0 = _local4.imageFromDir(_BJ.RIGHT, _BJ.1OS, 0);
            var _local6:int = ((4 / _local5.width()) * 100);
            var _local7:BitmapData = TextureRedrawer.redraw(_local5.image_, _local6, true, 0);
            this.0CS = this.1fS(_arg2, _arg1);
            if (this.0CS)
            {
                _local7 = hd.07J(_local7, new ColorTransform(0, 0, 0, 0.5, 0, 0, 0, 0));
            };
            this.0Sz = new Bitmap();
            this.0Sz.bitmapData = _local7;
            this.0Sz.x = -4;
            this.0Sz.y = -4;
            addChild(this.0Sz);
            this.nameText_ = new _13j().setSize(13).setColor(0xB3B3B3);
            this.nameText_.setBold(true);
            this.nameText_.setStringBuilder(new 1cA().setParams(_arg1.DisplayId));
            this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
            1he.push(this.nameText_.textChanged);
            addChild(this.nameText_);
            this.v- = new _13j().setSize(13).setColor(0xB3B3B3).setWordWrap(true).setMultiLine(true).setTextWidth(174);
            this.v-.setStringBuilder(new 1cA().setParams(_arg1.Description));
            this.v-.filters = [new DropShadowFilter(0, 0, 0)];
            1he.push(this.v-.textChanged);
            addChild(this.v-);
            this.0pN = new 1-p(100, 0x1C1C1C);
            addChild(this.0pN);
            if (this.0CS)
            {
                this.0qD = new _13j().setSize(13).setColor(0xB3B3B3).setTextWidth(174).setBold(true);
                this.0qD.setStringBuilder(new 1cA().setParams(du.1l));
                this.0qD.filters = [new DropShadowFilter(0, 0, 0)];
                1he.push(this.0qD.textChanged);
                addChild(this.0qD);
                this.unlockText_ = new _13j().setSize(13).setColor(16549442).setTextWidth(174).setWordWrap(false).setMultiLine(true);
                _local8 = new AppendingLineBuilder();
                for each (_local9 in _arg1.UnlockLevel)
                {
                    _local11 = ObjectLibrary.get[_local9.toString()];
                    _local12 = int(_local9.@level);
                    if (_arg2.1QG(_local11) < int(_local9.@level))
                    {
                        _local8.pushParams(du.1f4, {
                            unlockLevel:_local12,
                            typeToDisplay:ObjectLibrary.118[_local11]
                        });
                    };
                };
                this.unlockText_.setStringBuilder(_local8);
                this.unlockText_.filters = [new DropShadowFilter(0, 0, 0)];
                1he.push(this.unlockText_.textChanged);
                addChild(this.unlockText_);
                this.costText_ = new _13j().setSize(13).setColor(0xFF00);
                this.costText_.setStringBuilder(new 1cA().setParams(du.1wm, {unlockCost:_arg1.UnlockCost}));
                this.costText_.filters = [new DropShadowFilter(0, 0, 0)];
                1he.push(this.costText_.textChanged);
                addChild(this.costText_);
                _local10 = 02W.makeCoin();
                this.By = new Bitmap(_local10);
                addChild(this.By);
            } else
            {
                _local13 = (((_arg3 == null)) ? 0 : _arg3.numStars());
                this.bestLevel_ = new _13j().setSize(14).setColor(6206769).setMultiLine(true);
                this.bestLevel_.setStringBuilder(new 1cA().setParams(du.1eB, {
                    numStars:_local13,
                    bestLevel:(((_arg3)!=null) ? _arg3.bestLevel() : 0),
                    fame:(((_arg3)!=null) ? _arg3.ho() : 0)
                }));
                this.bestLevel_.filters = [new DropShadowFilter(0, 0, 0)];
                1he.push(this.bestLevel_.textChanged);
                addChild(this.bestLevel_);
                _local14 = 09g.nextStarFame((((_arg3 == null)) ? 0 : _arg3.ho()), 0);
                if (_local14 > 0)
                {
                    this.nextClassQuest_ = new _13j().setSize(13).setColor(16549442).setTextWidth(160).setMultiLine(true).setWordWrap(true);
                    this.nextClassQuest_.setStringBuilder(new 1cA().setParams(du.0l-, {
                        nextStarFame:_local14,
                        typeToDisplay:_arg1.DisplayId
                    }));
                    this.nextClassQuest_.filters = [new DropShadowFilter(0, 0, 0)];
                    1he.push(this.nextClassQuest_.textChanged);
                    addChild(this.nextClassQuest_);
                };
            };
        }

        override protected function alignUI():void{
            this.nameText_.x = 32;
            this.nameText_.y = 6;
            this.v-.x = 8;
            this.v-.y = 40;
            this.0pN.x = 6;
            this.0pN.y = height;
            if (this.0CS)
            {
                this.0qD.x = 8;
                this.0qD.y = (height - 2);
                this.unlockText_.x = 12;
                this.unlockText_.y = (height - 4);
                this.costText_.x = 12;
                this.costText_.y = (height - 4);
                this.By.y = (this.costText_.y - 2);
                this.By.x = ((this.costText_.x + this.costText_.getBounds(this.costText_).width) + 4);
            } else
            {
                this.bestLevel_.x = 8;
                this.bestLevel_.y = (height - 2);
                if (this.nextClassQuest_)
                {
                    this.nextClassQuest_.x = 8;
                    this.nextClassQuest_.y = (height - 2);
                };
            };
            this.draw();
            position();
        }

        private function 1fS(_arg1:0Te, _arg2:XML):Boolean{
            var _local3:Boolean = _arg1.0Po(String(_arg2.@id), Cp.5o);
            var _local4:Boolean = _arg1.1if(int(_arg2.@type));
            return (((!(_local3)) && (!(_local4))));
        }

        override public function draw():void{
            this.0pN.1rZ((width - 10), 0x1C1C1C);
            super.draw();
        }


    }
}//package 0qj

