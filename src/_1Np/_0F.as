// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Np.0F-

package _1Np{
import com.company.assembleegameclient.map._1C8;
import com.company.assembleegameclient.objects.GameObject;
    import flash.display.IGraphicsData;

    public class _0F extends GameObject {

        public var _1Jm:Boolean;

        public function _0F(){
            super(null);
            objectId_ = _0Zh();
            _1QM = false;
            this._1Jm = false;
        }

        public static function _1qK(_arg1:_lW, _arg2:GameObject):_0F{
            switch (_arg1.id)
            {
                case "Healing":
                    return (new _0t0(_arg2));
                case "Fountain":
                    return (new FountainEffect(_arg2));
                case "Gas":
                    return (new _21a(_arg2, _arg1));
                case "Vent":
                    return (new VentEffect(_arg2));
                case "Bubbles":
                    return (new _0I8(_arg2, _arg1));
                case "XMLEffect":
                    return (new XMLEffect(_arg2, _arg1));
                case "CustomParticles":
                    return (_02L._1WJ(_arg1, _arg2));
            }
            return (null);
        }


        override public function update(_arg1:int, _arg2:int):Boolean{
            if (this._1Jm)
            {
                return (this.runEasyRendering(_arg1, _arg2));
            }
            return (this.runNormalRendering(_arg1, _arg2));
        }

        public function runNormalRendering(_arg1:int, _arg2:int):Boolean{
            return (false);
        }

        public function runEasyRendering(_arg1:int, _arg2:int):Boolean{
            return (false);
        }

        override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_1C8, _arg3:int):void{
        }


    }
}//package 1Np

