// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.RankToolTip

package 0qj{
    import _CU._13j;
    import com.company.rotmg.graphics.StarGraphic;
    import com.company.assembleegameclient.ui.1-p;
    import 1n4.1cA;
    import AO.du;
    import flash.filters.DropShadowFilter;
    import 1PB.cO;
    import flash.geom.ColorTransform;
    import flash.geom.Rectangle;
    import com.company.assembleegameclient.util.09g;
    import com.company.assembleegameclient.objects.ObjectLibrary;

    public class RankToolTip extends 1ae {

        private static const 1FL:int = 6;

        private var 0gh:_13j;
        private var star_:StarGraphic;
        private var 0c2:_13j;
        private var 0pN:1-p;

        public function RankToolTip(_arg1:int){
            this.0pN = new 1-p(100, 0x1C1C1C);
            super(0x363636, 1, 0xFFFFFF, 1);
            this.0gh = new _13j().setSize(13).setColor(0xB3B3B3).setBold(true);
            this.0gh.setVerticalAlign(_13j.BOTTOM);
            this.0gh.setStringBuilder(new 1cA().setParams(du.Bz, {numStars:_arg1}));
            this.0gh.filters = [new DropShadowFilter(0, 0, 0)];
            this.0gh.x = 1FL;
            addChild(this.0gh);
            this.0c2 = new _13j().setSize(13).setColor(0xB3B3B3);
            this.0c2.setTextWidth(174);
            this.0c2.setMultiLine(true).setWordWrap(true);
            this.0c2.setStringBuilder(new 1cA().setParams(du.19I));
            this.0c2.filters = [new DropShadowFilter(0, 0, 0)];
            this.0c2.x = 1FL;
            this.0c2.y = 30;
            addChild(this.0c2);
            var _local2:cO = new cO().push(this.0gh.textChanged).push(this.0c2.textChanged);
            _local2.complete.addOnce(this.16k);
        }

        private function 16k():void{
            var _local2:LegendLine;
            var _local3:int;
            this.0gh.y = (this.0gh.height + 2);
            this.star_ = new StarGraphic();
            this.star_.transform.colorTransform = new ColorTransform((179 / 0xFF), (179 / 0xFF), (179 / 0xFF));
            var _local1:Rectangle = this.0gh.getBounds(this);
            this.star_.x = (_local1.right + 7);
            this.star_.y = (this.0gh.y - this.star_.height);
            addChild(this.star_);
            this.0pN.x = 1FL;
            this.0pN.y = (height + 10);
            addChild(this.0pN);
            _local3 = (this.0pN.y + 4);
            var _local4:int;
            while (_local4 < 09g.1zF.length)
            {
                _local2 = new LegendLine((_local4 * ObjectLibrary.1wa.length), (((_local4 + 1) * ObjectLibrary.1wa.length) - 1), 09g.1zF[_local4]);
                _local2.x = 1FL;
                _local2.y = _local3;
                addChild(_local2);
                _local3 = (_local3 + _local2.height);
                _local4++;
            }
            _local2 = new LegendLine(09g.1yg(), 09g.1yg(), new ColorTransform());
            _local2.x = 1FL;
            _local2.y = _local3;
            addChild(_local2);
            this.draw();
        }

        override public function draw():void{
            this.0pN.1rZ((width - 10), 0x1C1C1C);
            super.draw();
        }


    }
}//package 0qj

import flash.display.Sprite;
import com.company.rotmg.graphics.StarGraphic;
import _CU._13j;
import flash.geom.ColorTransform;
import 1n4.1WS;
import flash.filters.DropShadowFilter;

class LegendLine extends Sprite {

    private var coloredStar_:StarGraphic;
    private var rangeText_:_13j;
    private var star_:StarGraphic;

    public function LegendLine(_arg1:int, _arg2:int, _arg3:ColorTransform){
        this.addColoredStar(_arg3);
        this.addRangeText(_arg1, _arg2);
        this.addGreyStar();
    }

    public function addGreyStar():void{
        this.star_ = new StarGraphic();
        this.star_.transform.colorTransform = new ColorTransform((179 / 0xFF), (179 / 0xFF), (179 / 0xFF));
        addChild(this.star_);
    }

    public function addRangeText(_arg1:int, _arg2:int):void{
        this.rangeText_ = new _13j().setSize(13).setColor(0xB3B3B3);
        this.rangeText_.setVerticalAlign(_13j.BOTTOM);
        this.rangeText_.setStringBuilder(new 1WS((": " + (((_arg1 == _arg2)) ? _arg1.toString() : ((_arg1 + " - ") + _arg2)))));
        this.rangeText_.setBold(true);
        filters = [new DropShadowFilter(0, 0, 0)];
        this.rangeText_.x = this.coloredStar_.width;
        this.rangeText_.y = this.coloredStar_.getBounds(this).bottom;
        this.rangeText_.textChanged.addOnce(this.positionGreyStar);
        addChild(this.rangeText_);
    }

    public function addColoredStar(_arg1:ColorTransform):void{
        this.coloredStar_ = new StarGraphic();
        this.coloredStar_.transform.colorTransform = _arg1;
        this.coloredStar_.y = 4;
        addChild(this.coloredStar_);
    }

    private function positionGreyStar():void{
        this.star_.x = (this.rangeText_.getBounds(this).right + 2);
        this.star_.y = 4;
    }


}

