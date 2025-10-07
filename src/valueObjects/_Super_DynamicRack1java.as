/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - DynamicRack1java.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_DynamicRack1java extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.fortunaglobal.model.DynamicRack1java") == null)
            {
                flash.net.registerClassAlias("com.fortunaglobal.model.DynamicRack1java", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.fortunaglobal.model.DynamicRack1java", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _DynamicRack1javaEntityMetadata;

    /**
     * properties
     */
    private var _internal_scale : int;
    private var _internal_materialId : int;
    private var _internal_status : int;
    private var _internal_object3DType : int;
    private var _internal_dynamicRack1java : String;
    private var _internal_showroom : int;
    private var _internal_name : String;
    private var _internal_rotationZ : int;
    private var _internal_object3DId : int;
    private var _internal_z : int;
    private var _internal_rotationX : int;
    private var _internal_y : int;
    private var _internal_x : int;
    private var _internal_rotationY : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_DynamicRack1java()
    {
        _model = new _DynamicRack1javaEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get scale() : int
    {
        return _internal_scale;
    }

    [Bindable(event="propertyChange")]
    public function get materialId() : int
    {
        return _internal_materialId;
    }

    [Bindable(event="propertyChange")]
    public function get status() : int
    {
        return _internal_status;
    }

    [Bindable(event="propertyChange")]
    public function get object3DType() : int
    {
        return _internal_object3DType;
    }

    [Bindable(event="propertyChange")]
    public function get dynamicRack1java() : String
    {
        return _internal_dynamicRack1java;
    }

    [Bindable(event="propertyChange")]
    public function get showroom() : int
    {
        return _internal_showroom;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get rotationZ() : int
    {
        return _internal_rotationZ;
    }

    [Bindable(event="propertyChange")]
    public function get object3DId() : int
    {
        return _internal_object3DId;
    }

    [Bindable(event="propertyChange")]
    public function get z() : int
    {
        return _internal_z;
    }

    [Bindable(event="propertyChange")]
    public function get rotationX() : int
    {
        return _internal_rotationX;
    }

    [Bindable(event="propertyChange")]
    public function get y() : int
    {
        return _internal_y;
    }

    [Bindable(event="propertyChange")]
    public function get x() : int
    {
        return _internal_x;
    }

    [Bindable(event="propertyChange")]
    public function get rotationY() : int
    {
        return _internal_rotationY;
    }

    /**
     * data property setters
     */

    public function set scale(value:int) : void
    {
        var oldValue:int = _internal_scale;
        if (oldValue !== value)
        {
            _internal_scale = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "scale", oldValue, _internal_scale));
        }
    }

    public function set materialId(value:int) : void
    {
        var oldValue:int = _internal_materialId;
        if (oldValue !== value)
        {
            _internal_materialId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "materialId", oldValue, _internal_materialId));
        }
    }

    public function set status(value:int) : void
    {
        var oldValue:int = _internal_status;
        if (oldValue !== value)
        {
            _internal_status = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "status", oldValue, _internal_status));
        }
    }

    public function set object3DType(value:int) : void
    {
        var oldValue:int = _internal_object3DType;
        if (oldValue !== value)
        {
            _internal_object3DType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "object3DType", oldValue, _internal_object3DType));
        }
    }

    public function set dynamicRack1java(value:String) : void
    {
        var oldValue:String = _internal_dynamicRack1java;
        if (oldValue !== value)
        {
            _internal_dynamicRack1java = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dynamicRack1java", oldValue, _internal_dynamicRack1java));
        }
    }

    public function set showroom(value:int) : void
    {
        var oldValue:int = _internal_showroom;
        if (oldValue !== value)
        {
            _internal_showroom = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "showroom", oldValue, _internal_showroom));
        }
    }

    public function set name(value:String) : void
    {
        var oldValue:String = _internal_name;
        if (oldValue !== value)
        {
            _internal_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name", oldValue, _internal_name));
        }
    }

    public function set rotationZ(value:int) : void
    {
        var oldValue:int = _internal_rotationZ;
        if (oldValue !== value)
        {
            _internal_rotationZ = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rotationZ", oldValue, _internal_rotationZ));
        }
    }

    public function set object3DId(value:int) : void
    {
        var oldValue:int = _internal_object3DId;
        if (oldValue !== value)
        {
            _internal_object3DId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "object3DId", oldValue, _internal_object3DId));
        }
    }

    public function set z(value:int) : void
    {
        var oldValue:int = _internal_z;
        if (oldValue !== value)
        {
            _internal_z = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "z", oldValue, _internal_z));
        }
    }

    public function set rotationX(value:int) : void
    {
        var oldValue:int = _internal_rotationX;
        if (oldValue !== value)
        {
            _internal_rotationX = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rotationX", oldValue, _internal_rotationX));
        }
    }

    public function set y(value:int) : void
    {
        var oldValue:int = _internal_y;
        if (oldValue !== value)
        {
            _internal_y = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "y", oldValue, _internal_y));
        }
    }

    public function set x(value:int) : void
    {
        var oldValue:int = _internal_x;
        if (oldValue !== value)
        {
            _internal_x = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "x", oldValue, _internal_x));
        }
    }

    public function set rotationY(value:int) : void
    {
        var oldValue:int = _internal_rotationY;
        if (oldValue !== value)
        {
            _internal_rotationY = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rotationY", oldValue, _internal_rotationY));
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
    public function get _model() : _DynamicRack1javaEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _DynamicRack1javaEntityMetadata) : void
    {
        var oldValue : _DynamicRack1javaEntityMetadata = model_internal::_dminternal_model;
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
