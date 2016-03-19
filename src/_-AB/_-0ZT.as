// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//AB.0ZT

package AB{
    import 1n4.AppendingLineBuilder;
    import AO.du;
    import 0qj.TR;
    import 0Px.*;

    public class 0ZT extends 103 {

        private var 02t:XML;
        private var speedy:XML;
        private var 19C:XML;
        private var 0cx:XML;
        private var 22O:XML;
        private var 0UC:XML;


        override protected function compareSlots(_arg1:XML, _arg2:XML):void{
            this.1iN(_arg1, _arg2);
            1Tf = new AppendingLineBuilder();
            this.1Y2();
            this.1Ud();
            this.0V8();
        }

        private function 1iN(_arg1:XML, _arg2:XML):void{
            this.02t = this.1Rs(_arg1, "Berserk");
            this.speedy = this.0Fb(_arg1, "Speedy");
            this.22O = this.0Fb(_arg1, "Armored");
            this.19C = this.1Rs(_arg2, "Berserk");
            this.0cx = this.0Fb(_arg2, "Speedy");
            this.0UC = this.0Fb(_arg2, "Armored");
        }

        private function 1Rs(_arg1:XML, _arg2:String):XML{
            var matches:XMLList;
            var tag:XML;
            var xml:XML = _arg1;
            var typeName:String = _arg2;
            matches = xml.Activate.(text() == 0MX.Oa);
            for each (tag in matches)
            {
                if (tag.@effect == typeName)
                {
                    return (tag);
                }
            }
            return (null);
        }

        private function 0Fb(_arg1:XML, _arg2:String):XML{
            var matches:XMLList;
            var tag:XML;
            var xml:XML = _arg1;
            var typeName:String = _arg2;
            matches = xml.Activate.(text() == 0MX.1YG);
            for each (tag in matches)
            {
                if (tag.@effect == typeName)
                {
                    return (tag);
                }
            }
            return (null);
        }

        private function 1Y2():void{
            if ((((this.02t == null)) || ((this.19C == null))))
            {
                return;
            }
            var _local1:Number = Number(this.02t.@range);
            var _local2:Number = Number(this.19C.@range);
            var _local3:Number = Number(this.02t.@duration);
            var _local4:Number = Number(this.19C.@duration);
            var _local5:Number = ((0.5 * _local1) + (0.5 * _local3));
            var _local6:Number = ((0.5 * _local2) + (0.5 * _local4));
            var _local7:uint = 1kE((_local5 - _local6));
            var _local8:AppendingLineBuilder = new AppendingLineBuilder();
            _local8.pushParams(du.l, {range:_local1.toString()}, TR.1pw(_local7), TR.17H());
            _local8.pushParams(du.0P9, {
                effect:du.0y4(du.Qt),
                duration:_local3.toString()
            }, TR.1pw(_local7), TR.17H());
            1Tf.pushParams(du.Nk, {effect:_local8});
            ZX[this.02t.toXMLString()] = true;
        }

        private function 1Ud():void{
            var _local1:Number;
            var _local2:Number;
            if (((!((this.speedy == null))) && (!((this.0cx == null)))))
            {
                _local1 = Number(this.speedy.@duration);
                _local2 = Number(this.0cx.@duration);
                1Tf.pushParams(du.1Dr, {effect:""});
                1Tf.pushParams(du.0P9, {
                    effect:du.0y4(du.sy),
                    duration:_local1.toString()
                }, TR.1pw(1kE((_local1 - _local2))), TR.17H());
                ZX[this.speedy.toXMLString()] = true;
            } else
            {
                if (((!((this.speedy == null))) && ((this.0cx == null))))
                {
                    1Tf.pushParams(du.1Dr, {effect:""});
                    1Tf.pushParams(du.0P9, {
                        effect:du.0y4(du.sy),
                        duration:this.speedy.@duration
                    }, TR.1pw(1HG), TR.17H());
                    ZX[this.speedy.toXMLString()] = true;
                }
            }
        }

        private function 0V8():void{
            if (this.22O != null)
            {
                1Tf.pushParams(du.1Dr, {effect:""});
                1Tf.pushParams(du.0P9, {
                    effect:du.0y4(du.0-J),
                    duration:this.22O.@duration
                }, TR.1pw(2-W), TR.17H());
                ZX[this.22O.toXMLString()] = true;
            }
        }


    }
}//package AB

