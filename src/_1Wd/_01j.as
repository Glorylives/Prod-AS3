// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Wd.01j

package _1Wd{
import _04m._0so;
import _04m._1MZ;

import _0k._0P4;
import _0k._0o5;
import _0k._20i;

public class _01j {

        public static const _06N:Boolean = true;
        public static const _1pA:Boolean = false;

        private static var _1hP:_01j;

        private var _2k:_1MZ;
        private var _1ax:_1MZ;

        public function _01j(_arg1:String=""){
            if (_arg1 != "yoThisIsInternal")
            {
                throw (new Error("Program3DFactory is a singleton. Use Program3DFactory.getInstance()"));
            }
        }

        public static function getInstance():_01j{
            if (_1hP == null)
            {
                _1hP = new _01j("yoThisIsInternal");
            }
            return (_1hP);
        }


        public function dispose():void{
            if (this._2k != null)
            {
                this._2k._0PJ().dispose();
            }
            if (this._1ax != null)
            {
                this._1ax._0PJ().dispose();
            }
            _1hP = null;
        }

        public function _0gg(_arg1:_0so, _arg2:Boolean):_1MZ{
            var _local3:_1MZ;
            switch (_arg2)
            {
                case _06N:
                    if (this._2k == null)
                    {
                        this._2k = _arg1.createProgram();
                        this._2k.upload(new _0P4().getVertexProgram(), new _0o5().getVertexProgram());
                    }
                    _local3 = this._2k;
                    break;
                case _1pA:
                    if (this._1ax == null)
                    {
                        this._1ax = _arg1.createProgram();
                        this._1ax.upload(new _0P4().getVertexProgram(), new _20i().getVertexProgram());
                    }
                    _local3 = this._1ax;
                    break;
                default:
                    if (this._2k == null)
                    {
                        this._2k = _arg1.createProgram();
                        this._2k.upload(new _0P4().getVertexProgram(), new _0o5().getVertexProgram());
                    }
                    _local3 = this._2k;
            }
            return (_local3);
        }


    }
}//package 1Wd

