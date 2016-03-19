// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.MyPlayerToolTip

package 0qj{
    import kabam.rotmg.assets.services.0Vx;
    import tn.0ec;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.ui.0S7;
    import com.company.assembleegameclient.ui.StatusBar;
    import com.company.assembleegameclient.ui.1-p;
    import _CU._13j;
    import h0.0Jr;
    import h0.1cg;
    import com.company.assembleegameclient.appengine.1WG;
    import _04_._1JZ;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import tn.0dE;
    import tn.1iY;
    import AO.du;
    import 0Px.1zw;
    import com.company.assembleegameclient.util.09g;
    import 1n4.1cA;
    import flash.filters.DropShadowFilter;

    public class MyPlayerToolTip extends 1ae {

        private var factory:0Vx;
        private var classes:0ec;
        public var player_:Player;
        private var 0Pr:0S7;
        private var 0Mt:StatusBar;
        private var uV:StatusBar;
        private var 0pN:1-p;
        private var bestLevel_:_13j;
        private var nextClassQuest_:_13j;
        private var 133:0Jr;
        private var 05f:1cg;
        private var 0GP:String;
        private var  try:XML;
        private var charStats:1WG;

        public function MyPlayerToolTip(_arg1:String, _arg2:XML, _arg3:1WG){
            super(0x363636, 1, 0xFFFFFF, 1);
            this.0GP = _arg1;
            this. try = _arg2;
            this.charStats = _arg3;
        }

        public function 0nh():void{
            this.factory = _1JZ.0JF().getInstance(0Vx);
            this.classes = _1JZ.0JF().getInstance(0ec);
            var _local1:int = int(this. try.ObjectType);
            var _local2:XML = ObjectLibrary.GD[_local1];
            this.player_ = Player.1KR(this.0GP, this. try);
            var _local3:0dE = this.classes.7k(this.player_.objectType_);
            var _local4:1iY = _local3.0sP.15c(this. try.Texture);
            this.player_.3q = this.factory.1hi(_local4.26-);
            this.0Pr = new 0S7(0xB3B3B3, true, this.player_);
            addChild(this.0Pr);
            this.0Mt = new StatusBar(176, 16, 14693428, 0x545454, du.10h);
            this.0Mt.x = 6;
            this.0Mt.y = 40;
            addChild(this.0Mt);
            this.uV = new StatusBar(176, 16, 6325472, 0x545454, du.0b-);
            this.uV.x = 6;
            this.uV.y = 64;
            addChild(this.uV);
            this.133 = new 0Jr(null, this.player_.px, this.player_);
            this.133.x = 8;
            this.133.y = 88;
            addChild(this.133);
            this.133.setItems(this.player_.1Wz);
            this.05f = new 1cg(null, this.player_, 1zw.1ye);
            this.05f.x = 8;
            this.05f.y = 132;
            addChild(this.05f);
            this.05f.setItems(this.player_.1Wz);
            this.0pN = new 1-p(100, 0x1C1C1C);
            this.0pN.x = 6;
            this.0pN.y = 228;
            addChild(this.0pN);
            this.0fI();
            this.bestLevel_.x = 8;
            this.bestLevel_.y = (height - 2);
            var _local5:int = 09g.nextStarFame((((this.charStats == null)) ? 0 : this.charStats.ho()), 0);
            if (_local5 > 0)
            {
                this.1WW(_local5, _local2);
            }
        }

        public function 1WW(_arg1:int, _arg2:XML):void{
            this.nextClassQuest_ = new _13j().setSize(13).setColor(16549442).setTextWidth(174);
            this.nextClassQuest_.setStringBuilder(new 1cA().setParams(du.0rT, {
                nextStarFame:_arg1,
                character:_arg2.DisplayId
            }));
            this.nextClassQuest_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.nextClassQuest_);
            1he.push(this.nextClassQuest_.textChanged);
        }

        public function 0fI():void{
            this.bestLevel_ = new _13j().setSize(14).setColor(6206769);
            var _local1:int = (((this.charStats == null)) ? 0 : this.charStats.numStars());
            var _local2:String = (((this.charStats)!=null) ? this.charStats.bestLevel() : 0).toString();
            var _local3:String = (((this.charStats)!=null) ? this.charStats.ho() : 0).toString();
            this.bestLevel_.setStringBuilder(new 1cA().setParams(du.R-, {
                numStars:_local1,
                bestLevel:_local2,
                fame:_local3
            }));
            this.bestLevel_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.bestLevel_);
            1he.push(this.bestLevel_.textChanged);
        }

        override protected function alignUI():void{
            if (this.nextClassQuest_)
            {
                this.nextClassQuest_.x = 8;
                this.nextClassQuest_.y = (this.bestLevel_.getBounds(this).bottom - 2);
            }
        }

        override public function draw():void{
            this.0Mt.draw(this.player_.1VZ, this.player_.ba, this.player_.1j8, this.player_.1w7);
            this.uV.draw(this.player_.12a, this.player_.1nC, this.player_.24q, this.player_.0NB);
            this.0pN.1rZ((width - 10), 0x1C1C1C);
            super.draw();
        }


    }
}//package 0qj

