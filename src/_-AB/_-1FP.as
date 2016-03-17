// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.1FP

package AB{
    import 1n4.AppendingLineBuilder;
    import AO.du;
    import 1n4.1cA;
    import 0qj.TR;

    public class 1FP extends 103 {

        private var decoy:XMLList;
        private var 1Qe:XMLList;


        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            var duration:Number;
            var otherDuration:Number;
            var textColor:uint;
            var test:String;
            var itemXML:XML = _arg1;
            var curItemXML:XML = _arg2;
            this.decoy = itemXML.Activate.(text() == "Decoy");
            this.1Qe = curItemXML.Activate.(text() == "Decoy");
            1Tf = new AppendingLineBuilder();
            if ((((this.decoy.length() == 1)) && ((this.1Qe.length() == 1))))
            {
                duration = Number(this.decoy[0].@duration);
                otherDuration = Number(this.1Qe[0].@duration);
                textColor = 1kE((duration - otherDuration));
                1Tf.pushParams(du.18W, {data:new 1cA().setParams(du.1oV, {duration:duration.toString()}).setPrefix(TR.1pw(textColor)).setPostfix(TR.17H())});
                test = this.decoy[0].toXMLString();
                ZX[this.decoy[0].toXMLString()] = true;
            };
        }


    }
}//package AB

