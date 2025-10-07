/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - ComplexRIA.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.DynamicRack1java;
import valueObjects.RolleRack1java;
import valueObjects.RoundRack1java;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_ComplexRIA extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.fortunaglobal.model.ComplexRIA") == null)
            {
                flash.net.registerClassAlias("com.fortunaglobal.model.ComplexRIA", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.fortunaglobal.model.ComplexRIA", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.RoundRack1java.initRemoteClassAliasSingleChild();
        valueObjects.RoundRack1javaMaterial.initRemoteClassAliasSingleChild();
        valueObjects.RolleRack1java.initRemoteClassAliasSingleChild();
        valueObjects.RolleRack1javaMaterial.initRemoteClassAliasSingleChild();
        valueObjects.DynamicRack1java.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _ComplexRIAEntityMetadata;

    /**
     * properties
     */
    private var _internal_listDeletedRoundRack1java : ArrayCollection;
    model_internal var _internal_listDeletedRoundRack1java_leaf:valueObjects.RoundRack1java;
    private var _internal_listNewRoundRack1java : ArrayCollection;
    model_internal var _internal_listNewRoundRack1java_leaf:valueObjects.RoundRack1java;
    private var _internal_listNewRolleRack1java : ArrayCollection;
    model_internal var _internal_listNewRolleRack1java_leaf:valueObjects.RolleRack1java;
    private var _internal_listNewDynamicRack1java : ArrayCollection;
    model_internal var _internal_listNewDynamicRack1java_leaf:valueObjects.DynamicRack1java;
    private var _internal_listExistingRolleRack1java : ArrayCollection;
    model_internal var _internal_listExistingRolleRack1java_leaf:valueObjects.RolleRack1java;
    private var _internal_listExistingRoundRack1java : ArrayCollection;
    model_internal var _internal_listExistingRoundRack1java_leaf:valueObjects.RoundRack1java;
    private var _internal_listDeletedRolleRack1java : ArrayCollection;
    model_internal var _internal_listDeletedRolleRack1java_leaf:valueObjects.RolleRack1java;
    private var _internal_showRoomId : int;
    private var _internal_listExistingDynamicRack1java : ArrayCollection;
    model_internal var _internal_listExistingDynamicRack1java_leaf:valueObjects.DynamicRack1java;
    private var _internal_uSerMessage : String;
    private var _internal_listDeletedDynamicRack1java : ArrayCollection;
    model_internal var _internal_listDeletedDynamicRack1java_leaf:valueObjects.DynamicRack1java;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_ComplexRIA()
    {
        _model = new _ComplexRIAEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get listDeletedRoundRack1java() : ArrayCollection
    {
        return _internal_listDeletedRoundRack1java;
    }

    [Bindable(event="propertyChange")]
    public function get listNewRoundRack1java() : ArrayCollection
    {
        return _internal_listNewRoundRack1java;
    }

    [Bindable(event="propertyChange")]
    public function get listNewRolleRack1java() : ArrayCollection
    {
        return _internal_listNewRolleRack1java;
    }

    [Bindable(event="propertyChange")]
    public function get listNewDynamicRack1java() : ArrayCollection
    {
        return _internal_listNewDynamicRack1java;
    }

    [Bindable(event="propertyChange")]
    public function get listExistingRolleRack1java() : ArrayCollection
    {
        return _internal_listExistingRolleRack1java;
    }

    [Bindable(event="propertyChange")]
    public function get listExistingRoundRack1java() : ArrayCollection
    {
        return _internal_listExistingRoundRack1java;
    }

    [Bindable(event="propertyChange")]
    public function get listDeletedRolleRack1java() : ArrayCollection
    {
        return _internal_listDeletedRolleRack1java;
    }

    [Bindable(event="propertyChange")]
    public function get showRoomId() : int
    {
        return _internal_showRoomId;
    }

    [Bindable(event="propertyChange")]
    public function get listExistingDynamicRack1java() : ArrayCollection
    {
        return _internal_listExistingDynamicRack1java;
    }

    [Bindable(event="propertyChange")]
    public function get uSerMessage() : String
    {
        return _internal_uSerMessage;
    }

    [Bindable(event="propertyChange")]
    public function get listDeletedDynamicRack1java() : ArrayCollection
    {
        return _internal_listDeletedDynamicRack1java;
    }

    /**
     * data property setters
     */

    public function set listDeletedRoundRack1java(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_listDeletedRoundRack1java;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_listDeletedRoundRack1java = value;
            }
            else if (value is Array)
            {
                _internal_listDeletedRoundRack1java = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of listDeletedRoundRack1java must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listDeletedRoundRack1java", oldValue, _internal_listDeletedRoundRack1java));
        }
    }

    public function set listNewRoundRack1java(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_listNewRoundRack1java;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_listNewRoundRack1java = value;
            }
            else if (value is Array)
            {
                _internal_listNewRoundRack1java = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of listNewRoundRack1java must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listNewRoundRack1java", oldValue, _internal_listNewRoundRack1java));
        }
    }

    public function set listNewRolleRack1java(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_listNewRolleRack1java;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_listNewRolleRack1java = value;
            }
            else if (value is Array)
            {
                _internal_listNewRolleRack1java = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of listNewRolleRack1java must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listNewRolleRack1java", oldValue, _internal_listNewRolleRack1java));
        }
    }

    public function set listNewDynamicRack1java(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_listNewDynamicRack1java;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_listNewDynamicRack1java = value;
            }
            else if (value is Array)
            {
                _internal_listNewDynamicRack1java = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of listNewDynamicRack1java must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listNewDynamicRack1java", oldValue, _internal_listNewDynamicRack1java));
        }
    }

    public function set listExistingRolleRack1java(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_listExistingRolleRack1java;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_listExistingRolleRack1java = value;
            }
            else if (value is Array)
            {
                _internal_listExistingRolleRack1java = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of listExistingRolleRack1java must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listExistingRolleRack1java", oldValue, _internal_listExistingRolleRack1java));
        }
    }

    public function set listExistingRoundRack1java(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_listExistingRoundRack1java;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_listExistingRoundRack1java = value;
            }
            else if (value is Array)
            {
                _internal_listExistingRoundRack1java = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of listExistingRoundRack1java must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listExistingRoundRack1java", oldValue, _internal_listExistingRoundRack1java));
        }
    }

    public function set listDeletedRolleRack1java(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_listDeletedRolleRack1java;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_listDeletedRolleRack1java = value;
            }
            else if (value is Array)
            {
                _internal_listDeletedRolleRack1java = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of listDeletedRolleRack1java must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listDeletedRolleRack1java", oldValue, _internal_listDeletedRolleRack1java));
        }
    }

    public function set showRoomId(value:int) : void
    {
        var oldValue:int = _internal_showRoomId;
        if (oldValue !== value)
        {
            _internal_showRoomId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "showRoomId", oldValue, _internal_showRoomId));
        }
    }

    public function set listExistingDynamicRack1java(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_listExistingDynamicRack1java;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_listExistingDynamicRack1java = value;
            }
            else if (value is Array)
            {
                _internal_listExistingDynamicRack1java = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of listExistingDynamicRack1java must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listExistingDynamicRack1java", oldValue, _internal_listExistingDynamicRack1java));
        }
    }

    public function set uSerMessage(value:String) : void
    {
        var oldValue:String = _internal_uSerMessage;
        if (oldValue !== value)
        {
            _internal_uSerMessage = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "uSerMessage", oldValue, _internal_uSerMessage));
        }
    }

    public function set listDeletedDynamicRack1java(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_listDeletedDynamicRack1java;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_listDeletedDynamicRack1java = value;
            }
            else if (value is Array)
            {
                _internal_listDeletedDynamicRack1java = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of listDeletedDynamicRack1java must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listDeletedDynamicRack1java", oldValue, _internal_listDeletedDynamicRack1java));
        }
    }

    /**
     * Data property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _ComplexRIAEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ComplexRIAEntityMetadata) : void
    {
        var oldValue : _ComplexRIAEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }


}

}
