// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0qj.13P

package 0qj{
    import AB.GeneralProjectileComparison;
    import AB.ts;
    import 0Px.0J9;
    import AB.0g4;
    import AB.R1;
    import AB.0II;
    import AB.0Os;
    import AB.ZV;
    import AB.sK;
    import AB.0ZT;
    import AB.PoisonComparison;
    import AB.1NR;
    import AB.1QB;
    import AB.1ab;
    import AB.1FP;
    import AB.iF;
    import AB.103;

    public class 13P {

        private var hash:Object;

        public function 13P(){
            var _local1:GeneralProjectileComparison = new GeneralProjectileComparison();
            var _local2:ts = new ts();
            this.hash = {};
            this.hash[0J9.0Us] = _local1;
            this.hash[0J9.yn] = _local1;
            this.hash[0J9.1yX] = _local1;
            this.hash[0J9.U3] = new 0g4();
            this.hash[0J9.U5] = new R1();
            this.hash[0J9.1vW] = _local2;
            this.hash[0J9.1qq] = _local2;
            this.hash[0J9.0hG] = _local1;
            this.hash[0J9.0or] = new 0II();
            this.hash[0J9.If] = new 0Os();
            this.hash[0J9.hU] = new ZV();
            this.hash[0J9.ne] = _local2;
            this.hash[0J9.qx] = new sK();
            this.hash[0J9.s-] = new 0ZT();
            this.hash[0J9.Xg] = _local1;
            this.hash[0J9.g9] = new PoisonComparison();
            this.hash[0J9.xM] = new 1NR();
            this.hash[0J9.0-q] = new 1QB();
            this.hash[0J9.0LV] = new 1ab();
            this.hash[0J9.14L] = new 1FP();
            this.hash[0J9.av] = new iF();
            this.hash[0J9.Rd] = _local1;
            this.hash[0J9.08C] = _local1;
        }

        public function 0vU(_arg1:XML, _arg2:XML):02M{
            var _local3:int = int(_arg1.SlotType);
            var _local4:103 = this.hash[_local3];
            var _local5:02M = new 02M();
            if (_local4 != null)
            {
                _local4.0Ys(_arg1, _arg2);
                _local5.zM = _local4.1Tf;
                _local5.ZX = _local4.ZX;
            };
            return (_local5);
        }


    }
}//package 0qj

