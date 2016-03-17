// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//04w.Background

package _04w{
import com.company.assembleegameclient.map._1C8;

import flash.display.Sprite;

    public class Background extends Sprite {

        public static const _1Yg:int = 0;
        public static const Kt:int = 1;
        public static const _1MD:int = 2;
        public static const Ee:int = 3;

        public function Background(){
            visible = false;
        }

        public static function UN(_arg1:int):Background{
            switch (_arg1)
            {
                case _1Yg:
                    return (null);
                case Kt:
                    return (new StarBackground());
                case _1MD:
                    return (new NexusBackground());
            };
            return (null);
        }


        public function draw(_arg1:_1C8, _arg2:int):void{
        }


    }
}//package 04w

