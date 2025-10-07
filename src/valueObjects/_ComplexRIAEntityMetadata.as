
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
import valueObjects.DynamicRack1java;
import valueObjects.RolleRack1java;
import valueObjects.RoundRack1java;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _ComplexRIAEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("listDeletedRoundRack1java", "listNewRoundRack1java", "listNewRolleRack1java", "listNewDynamicRack1java", "listExistingRolleRack1java", "listExistingRoundRack1java", "listDeletedRolleRack1java", "showRoomId", "listExistingDynamicRack1java", "uSerMessage", "listDeletedDynamicRack1java");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array();
    model_internal static var allAlwaysAvailableProperties:Array = new Array("listDeletedRoundRack1java", "listNewRoundRack1java", "listNewRolleRack1java", "listNewDynamicRack1java", "listExistingRolleRack1java", "listExistingRoundRack1java", "listDeletedRolleRack1java", "showRoomId", "listExistingDynamicRack1java", "uSerMessage", "listDeletedDynamicRack1java");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("listDeletedRoundRack1java", "listNewRoundRack1java", "listNewRolleRack1java", "listNewDynamicRack1java", "listExistingRolleRack1java", "listExistingRoundRack1java", "listDeletedRolleRack1java", "showRoomId", "listExistingDynamicRack1java", "uSerMessage", "listDeletedDynamicRack1java");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("listDeletedRoundRack1java", "listNewRoundRack1java", "listNewRolleRack1java", "listNewDynamicRack1java", "listExistingRolleRack1java", "listExistingRoundRack1java", "listDeletedRolleRack1java", "listExistingDynamicRack1java", "listDeletedDynamicRack1java");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "ComplexRIA";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();


    model_internal var _instance:_Super_ComplexRIA;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ComplexRIAEntityMetadata(value : _Super_ComplexRIA)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["listDeletedRoundRack1java"] = new Array();
            model_internal::dependentsOnMap["listNewRoundRack1java"] = new Array();
            model_internal::dependentsOnMap["listNewRolleRack1java"] = new Array();
            model_internal::dependentsOnMap["listNewDynamicRack1java"] = new Array();
            model_internal::dependentsOnMap["listExistingRolleRack1java"] = new Array();
            model_internal::dependentsOnMap["listExistingRoundRack1java"] = new Array();
            model_internal::dependentsOnMap["listDeletedRolleRack1java"] = new Array();
            model_internal::dependentsOnMap["showRoomId"] = new Array();
            model_internal::dependentsOnMap["listExistingDynamicRack1java"] = new Array();
            model_internal::dependentsOnMap["uSerMessage"] = new Array();
            model_internal::dependentsOnMap["listDeletedDynamicRack1java"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["listDeletedRoundRack1java"] = "valueObjects.RoundRack1java";
            model_internal::collectionBaseMap["listNewRoundRack1java"] = "valueObjects.RoundRack1java";
            model_internal::collectionBaseMap["listNewRolleRack1java"] = "valueObjects.RolleRack1java";
            model_internal::collectionBaseMap["listNewDynamicRack1java"] = "valueObjects.DynamicRack1java";
            model_internal::collectionBaseMap["listExistingRolleRack1java"] = "valueObjects.RolleRack1java";
            model_internal::collectionBaseMap["listExistingRoundRack1java"] = "valueObjects.RoundRack1java";
            model_internal::collectionBaseMap["listDeletedRolleRack1java"] = "valueObjects.RolleRack1java";
            model_internal::collectionBaseMap["listExistingDynamicRack1java"] = "valueObjects.DynamicRack1java";
            model_internal::collectionBaseMap["listDeletedDynamicRack1java"] = "valueObjects.DynamicRack1java";
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
            throw new Error(propertyName + " is not a data property of entity ComplexRIA");  
            
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
            throw new Error(propertyName + " is not a collection property of entity ComplexRIA");  

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
            throw new Error(propertyName + " does not exist for entity ComplexRIA");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity ComplexRIA");
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
            throw new Error(propertyName + " does not exist for entity ComplexRIA");
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
    public function get isListDeletedRoundRack1javaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isListNewRoundRack1javaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isListNewRolleRack1javaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isListNewDynamicRack1javaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isListExistingRolleRack1javaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isListExistingRoundRack1javaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isListDeletedRolleRack1javaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isShowRoomIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isListExistingDynamicRack1javaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUSerMessageAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isListDeletedDynamicRack1javaAvailable():Boolean
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
    public function get listDeletedRoundRack1javaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get listNewRoundRack1javaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get listNewRolleRack1javaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get listNewDynamicRack1javaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get listExistingRolleRack1javaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get listExistingRoundRack1javaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get listDeletedRolleRack1javaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get showRoomIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get listExistingDynamicRack1javaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get uSerMessageStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get listDeletedDynamicRack1javaStyle():com.adobe.fiber.styles.Style
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
