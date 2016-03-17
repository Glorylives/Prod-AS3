// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.0F-

package 1Np{
    import com.company.assembleegameclient.objects.GameObject;
    import __AS3__.vec.Vector;
    import flash.display.IGraphicsData;
    import com.company.assembleegameclient.map.1C8;

    public class 0F- extends GameObject {

        public var 1Jm:Boolean;

        public function 0F-(){
            super(null);
            objectId_ = 0Zh();
            1QM = false;
            this.1Jm = false;
        }

        public static function 1qK(_arg1:lW, _arg2:GameObject):0F-{
            switch (_arg1.id)
            {
                case "Healing":
                    return (new 0t0(_arg2));
                case "Fountain":
                    return (new FountainEffect(_arg2));
                case "Gas":
                    return (new 21a(_arg2, _arg1));
                case "Vent":
                    return (new VentEffect(_arg2));
                case "Bubbles":
                    return (new 0I8(_arg2, _arg1));
                case "XMLEffect":
                    return (new XMLEffect(_arg2, _arg1));
                case "CustomParticles":
                    return (02L.1WJ(_arg1, _arg2));
            };
            return (null);
        }


        override public function update(_arg1:int, _arg2:int):Boolean{
            if (this.1Jm)
            {
                return (this.runEasyRendering(_arg1, _arg2));
            };
            return (this.runNormalRendering(_arg1, _arg2));
        }

        public function runNormalRendering(_arg1:int, _arg2:int):Boolean{
            return (false);
        }

        public function runEasyRendering(_arg1:int, _arg2:int):Boolean{
            return (false);
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:1C8, _arg3:int):void{
        }


    }
}//package 1Np

