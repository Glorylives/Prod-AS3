// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1u9.SF

package _1u9
{

import _sc._15R;
import _sc._18e;
import _sc._3A;
import _sc._UV;

import flash.utils.describeType;

    public class SF extends _0hX implements _vu {

    var _0XM:XML;


        public function _04a(_arg1:Class,_arg2:Class):Boolean{
            var type:Class = _arg1;
            var superType:Class = _arg2;
            if (type == superType)
            {
                return (true);
            }
            var factoryDescription:XML = describeType(type).factory[0];
            return ((factoryDescription.children().(((name() == "implementsInterface")) || ((name() == "extendsClass"))).(attribute("type") == getQualifiedClassName(superType)).length() > 0));
        }

        public function _210(_arg1:Class):_3A{
            this._0XM = describeType(_arg1).factory[0];
            var _local2:_3A = new _3A(false);
            this._0ds(_local2, _arg1);
            this._xB(_local2);
            this._1re(_local2);
            this._9z(_local2);
            this._0sq(_local2);
            this._0XM = null;
            return (_local2);
        }

        private function _0ds(_arg1:_3A, _arg2:Class):void{
            var injectParameters:Dictionary;
            var parameters:Array;
            var description:_3A = _arg1;
            var type:Class = _arg2;
            var node:XML = this._0XM.constructor[0];
            if (!node)
            {
                if ((((this._0XM.parent().@name == "Object")) || ((this._0XM.extendsClass.length() > 0))))
                {
                    description.ctor = new _15R();
                }
                return;
            }
            injectParameters = this._1MP(node.parent().metadata.arg);
            var parameterNames:Array = ((injectParameters.name) || ("")).split(",");
            var parameterNodes:XMLList = node.parameter;
            if (parameterNodes.(@type == "*").length() == parameterNodes.@type.length())
            {
                this._2Q(node, type);
            }
            parameters = this._1IB(parameterNodes, parameterNames);
            var requiredParameters:uint = parameters.required;
            delete parameters.required;
            description.ctor = new _18e(parameters, requiredParameters, injectParameters);
        }

            function _1MP(_arg1:XMLList):Dictionary{
            var _local5:XML;
            var _local6:String;
            var _local2:Dictionary = new Dictionary();
            var _local3:uint = _arg1.length();
            var _local4:int;
            while (_local4 < _local3)
            {
                _local5 = _arg1[_local4];
                _local6 = _local5.@key;
                _local2[_local6] = ((_local2[_local6]) ? ((_local2[_local6] + ",") + _local5.attribute("value")) : _local5.attribute("value"));
                _local4++;
            }
            return (_local2);
        }

        private function _xB(_arg1:_3A):void{
            var node:XML;
            var mappingId:String;
            var propertyName:String;
            var injectParameters:Dictionary;
            var injectionPoint:_UV;
            var description:_3A = _arg1;
            for each (node in this._0XM.*.(((name() == "variable")) || ((name() == "accessor"))).metadata.(@name == "Inject"))
            {
                mappingId = ((node.parent().@type + "|") + node.arg.(@key == "name").attribute("value"));
                propertyName = node.parent().@name;
                injectParameters = this._1MP(node.arg);
                injectionPoint = new _UV(mappingId, propertyName, (injectParameters.optional == "true"), injectParameters);
                description.gj(injectionPoint);
            }
        }

import flash.utils.Dictionary;

private function _1re(_arg1:_3A):void{
            var node:XML;
            var injectParameters:Dictionary;
            var parameterNames:Array;
            var parameters:Array;
            var requiredParameters:uint;
            var injectionPoint:_09S;
            var description:_3A = _arg1;
            for each (node in this._0XM.method.metadata.(@name == "Inject"))
            {
                injectParameters = this._1MP(node.arg);
                parameterNames = ((injectParameters.name) || ("")).split(",");
                parameters = this._1IB(node.parent().parameter, parameterNames);
                requiredParameters = parameters.required;
                delete parameters.required;
                injectionPoint = new _09S(node.parent().@name, parameters, requiredParameters, (injectParameters.optional == "true"), injectParameters);
                description.gj(injectionPoint);
            }
        }

        private function _9z(_arg1:_3A):void{
            var _local2:Array = this.G6(_0Zz, "PostConstruct");
            var _local3:int;
            var _local4:int = _local2.length;
            while (_local3 < _local4)
            {
                _arg1.gj(_local2[_local3]);
                _local3++;
            }
        }

        private function _0sq(_arg1:_3A):void{
            var _local2:Array = this.G6(1-W, "PreDestroy");
            if (!_local2.length)
            {
                return;
            }
            _arg1._1iP = _local2[0];
            _arg1._1iP.last = _local2[0];
            var _local3:int = 1;
            var _local4:int = _local2.length;
            while (_local3 < _local4)
            {
                _arg1._1iP.last.next = _local2[_local3];
                _arg1._1iP.last = _local2[_local3];
                _local3++;
            }
        }

        private function _1IB(_arg1:XMLList, _arg2:Array):Array{
            var _local4:uint;
            var _local7:XML;
            var _local8:String;
            var _local9:String;
            var _local10:Boolean;
            var _local3:uint;
            _local4 = _arg1.length();
            var _local5:Array = new Array(_local4);
            var _local6:int;
            while (_local6 < _local4)
            {
                _local7 = _arg1[_local6];
                _local8 = ((_arg2[_local6]) || (""));
                _local9 = _local7.@type;
                _local10 = (_local7.@optional == "true");
                if (_local9 == "*")
                {
                    if (!_local10)
                    {
                        throw (new _03A((('Error in method definition _of injectee "' + this._0XM.@type) + "Required parameters can't have type \"*\".")));
                    }
                    _local9 = null;
                }
                if (!_local10)
                {
                    _local3++;
                }
                _local5[_local6] = ((_local9 + "|") + _local8);
                _local6++;
            }
            _local5.required = _local3;
            return (_local5);
        }

        private function G6(_arg1:Class, _arg2:String):Array{
            var node:XML;
            var injectParameters:Dictionary;
            var parameterNames:Array;
            var parameters:Array;
            var requiredParameters:uint;
            var order:Number;
            var injectionPointType:Class = _arg1;
            var tag:String = _arg2;
            var injectionPoints:Array = [];
            for each (node in this._0XM..metadata.(@name == tag))
            {
                injectParameters = this._1MP(node.arg);
                parameterNames = ((injectParameters.name) || ("")).split(",");
                parameters = this._1IB(node.parent().parameter, parameterNames);
                requiredParameters = parameters.required;
                delete parameters.required;
                order = parseInt(node.arg.(@key == "order").@value);
                injectionPoints.push(new injectionPointType(node.parent().@name, parameters, requiredParameters, ((isNaN(order)) ? int.MAX_VALUE : order)));
            }
            if (injectionPoints.length > 0)
            {
                injectionPoints.sortOn("order", Array.NUMERIC);
            }
            return (injectionPoints);
        }

        private function _2Q(_arg1:XML, _arg2:Class):void{
            var constructorNode:XML = _arg1;
            var clazz:Class = _arg2;
            try
            {
                switch (constructorNode.children().length())
                {
                    case 0:
                        new (clazz)();
                        break;
                    case 1:
                        new clazz(null);
                        break;
                    case 2:
                        new clazz(null, null);
                        break;
                    case 3:
                        new clazz(null, null, null);
                        break;
                    case 4:
                        new clazz(null, null, null, null);
                        break;
                    case 5:
                        new clazz(null, null, null, null, null);
                        break;
                    case 6:
                        new clazz(null, null, null, null, null, null);
                        break;
                    case 7:
                        new clazz(null, null, null, null, null, null, null);
                        break;
                    case 8:
                        new clazz(null, null, null, null, null, null, null, null);
                        break;
                    case 9:
                        new clazz(null, null, null, null, null, null, null, null, null);
                        break;
                    case 10:
                        new clazz(null, null, null, null, null, null, null, null, null, null);
                        break;
                }
            } catch(error:Error)
            {
                trace(((((("Exception caught while trying to create dummy instance for constructor " + "injection. It's almost certainly ok to ignore this exception, but you ") + "might want to restructure your constructor to prevent errors from ") + "happening. See the Swiftsuspenders documentation for more details.\n") + "The caught exception was:\n") + error));
            }
            constructorNode.setChildren(describeType(clazz).factory.constructor[0].children());
        }


    }
}//package _1u9

