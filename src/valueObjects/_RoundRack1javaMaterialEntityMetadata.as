
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _RoundRack1javaMaterialEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("roundTray110plateMaterialUrl", "roundTray17plateMaterialUrl", "roundTray12plateMaterialUrl", "roundTray117plateMaterialUrl", "roundTray13plateMaterialUrl", "roundTray16plateMaterialUrl", "roundTray121plateMaterialUrl", "roundTray119plateMaterialUrl", "roundTray115plateMaterialUrl", "roundTray118plateMaterialUrl", "roundTray120plateMaterialUrl", "roundTray114plateMaterialUrl", "roundTray18plateMaterialUrl", "cylinderBitmapFileMaterialUrl", "roundTray113plateMaterialUrl", "status", "roundTray111plateMaterialUrl", "roundTray11plateMaterialUrl", "cubesMaterialListUrl", "roundRack1javaMaterialId", "roundTray15plateMaterialUrl", "roundTray19plateMaterialUrl", "trayplateMaterialUrl", "roundTray112plateMaterialUrl", "roundRack1javaMaterialname", "roundTray116plateMaterialUrl", "roundTray14plateMaterialUrl");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array();
    model_internal static var allAlwaysAvailableProperties:Array = new Array("roundTray110plateMaterialUrl", "roundTray17plateMaterialUrl", "roundTray12plateMaterialUrl", "roundTray117plateMaterialUrl", "roundTray13plateMaterialUrl", "roundTray16plateMaterialUrl", "roundTray121plateMaterialUrl", "roundTray119plateMaterialUrl", "roundTray115plateMaterialUrl", "roundTray118plateMaterialUrl", "roundTray120plateMaterialUrl", "roundTray114plateMaterialUrl", "roundTray18plateMaterialUrl", "cylinderBitmapFileMaterialUrl", "roundTray113plateMaterialUrl", "status", "roundTray111plateMaterialUrl", "roundTray11plateMaterialUrl", "cubesMaterialListUrl", "roundRack1javaMaterialId", "roundTray15plateMaterialUrl", "roundTray19plateMaterialUrl", "trayplateMaterialUrl", "roundTray112plateMaterialUrl", "roundRack1javaMaterialname", "roundTray116plateMaterialUrl", "roundTray14plateMaterialUrl");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("roundTray110plateMaterialUrl", "roundTray17plateMaterialUrl", "roundTray12plateMaterialUrl", "roundTray117plateMaterialUrl", "roundTray13plateMaterialUrl", "roundTray16plateMaterialUrl", "roundTray121plateMaterialUrl", "roundTray119plateMaterialUrl", "roundTray115plateMaterialUrl", "roundTray118plateMaterialUrl", "roundTray120plateMaterialUrl", "roundTray114plateMaterialUrl", "roundTray18plateMaterialUrl", "cylinderBitmapFileMaterialUrl", "roundTray113plateMaterialUrl", "status", "roundTray111plateMaterialUrl", "roundTray11plateMaterialUrl", "cubesMaterialListUrl", "roundRack1javaMaterialId", "roundTray15plateMaterialUrl", "roundTray19plateMaterialUrl", "trayplateMaterialUrl", "roundTray112plateMaterialUrl", "roundRack1javaMaterialname", "roundTray116plateMaterialUrl", "roundTray14plateMaterialUrl");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "RoundRack1javaMaterial";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();


    model_internal var _instance:_Super_RoundRack1javaMaterial;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _RoundRack1javaMaterialEntityMetadata(value : _Super_RoundRack1javaMaterial)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["roundTray110plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray17plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray12plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray117plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray13plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray16plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray121plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray119plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray115plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray118plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray120plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray114plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray18plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["cylinderBitmapFileMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray113plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["status"] = new Array();
            model_internal::dependentsOnMap["roundTray111plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray11plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["cubesMaterialListUrl"] = new Array();
            model_internal::dependentsOnMap["roundRack1javaMaterialId"] = new Array();
            model_internal::dependentsOnMap["roundTray15plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray19plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["trayplateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray112plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundRack1javaMaterialname"] = new Array();
            model_internal::dependentsOnMap["roundTray116plateMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["roundTray14plateMaterialUrl"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::dataProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity RoundRack1javaMaterial");  
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity RoundRack1javaMaterial");  

        return model_internal::collectionBaseMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity RoundRack1javaMaterial");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity RoundRack1javaMaterial");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity RoundRack1javaMaterial");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray110plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray17plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray12plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray117plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray13plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray16plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray121plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray119plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray115plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray118plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray120plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray114plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray18plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCylinderBitmapFileMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray113plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isStatusAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray111plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray11plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCubesMaterialListUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundRack1javaMaterialIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray15plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray19plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTrayplateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray112plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundRack1javaMaterialnameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray116plateMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRoundTray14plateMaterialUrlAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray110plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray17plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray12plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray117plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray13plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray16plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray121plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray119plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray115plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray118plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray120plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray114plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray18plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get cylinderBitmapFileMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray113plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get statusStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray111plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray11plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get cubesMaterialListUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundRack1javaMaterialIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray15plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray19plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get trayplateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray112plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundRack1javaMaterialnameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray116plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get roundTray14plateMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
