/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - RoundRack1javaMaterial.as.
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
public class _Super_RoundRack1javaMaterial extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.fortunaglobal.model.RoundRack1javaMaterial") == null)
            {
                flash.net.registerClassAlias("com.fortunaglobal.model.RoundRack1javaMaterial", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.fortunaglobal.model.RoundRack1javaMaterial", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _RoundRack1javaMaterialEntityMetadata;

    /**
     * properties
     */
    private var _internal_roundTray110plateMaterialUrl : String;
    private var _internal_roundTray17plateMaterialUrl : String;
    private var _internal_roundTray12plateMaterialUrl : String;
    private var _internal_roundTray117plateMaterialUrl : String;
    private var _internal_roundTray13plateMaterialUrl : String;
    private var _internal_roundTray16plateMaterialUrl : String;
    private var _internal_roundTray121plateMaterialUrl : String;
    private var _internal_roundTray119plateMaterialUrl : String;
    private var _internal_roundTray115plateMaterialUrl : String;
    private var _internal_roundTray118plateMaterialUrl : String;
    private var _internal_roundTray120plateMaterialUrl : String;
    private var _internal_roundTray114plateMaterialUrl : String;
    private var _internal_roundTray18plateMaterialUrl : String;
    private var _internal_cylinderBitmapFileMaterialUrl : String;
    private var _internal_roundTray113plateMaterialUrl : String;
    private var _internal_status : int;
    private var _internal_roundTray111plateMaterialUrl : String;
    private var _internal_roundTray11plateMaterialUrl : String;
    private var _internal_cubesMaterialListUrl : String;
    private var _internal_roundRack1javaMaterialId : int;
    private var _internal_roundTray15plateMaterialUrl : String;
    private var _internal_roundTray19plateMaterialUrl : String;
    private var _internal_trayplateMaterialUrl : String;
    private var _internal_roundTray112plateMaterialUrl : String;
    private var _internal_roundRack1javaMaterialname : String;
    private var _internal_roundTray116plateMaterialUrl : String;
    private var _internal_roundTray14plateMaterialUrl : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_RoundRack1javaMaterial()
    {
        _model = new _RoundRack1javaMaterialEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get roundTray110plateMaterialUrl() : String
    {
        return _internal_roundTray110plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray17plateMaterialUrl() : String
    {
        return _internal_roundTray17plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray12plateMaterialUrl() : String
    {
        return _internal_roundTray12plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray117plateMaterialUrl() : String
    {
        return _internal_roundTray117plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray13plateMaterialUrl() : String
    {
        return _internal_roundTray13plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray16plateMaterialUrl() : String
    {
        return _internal_roundTray16plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray121plateMaterialUrl() : String
    {
        return _internal_roundTray121plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray119plateMaterialUrl() : String
    {
        return _internal_roundTray119plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray115plateMaterialUrl() : String
    {
        return _internal_roundTray115plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray118plateMaterialUrl() : String
    {
        return _internal_roundTray118plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray120plateMaterialUrl() : String
    {
        return _internal_roundTray120plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray114plateMaterialUrl() : String
    {
        return _internal_roundTray114plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray18plateMaterialUrl() : String
    {
        return _internal_roundTray18plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get cylinderBitmapFileMaterialUrl() : String
    {
        return _internal_cylinderBitmapFileMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray113plateMaterialUrl() : String
    {
        return _internal_roundTray113plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get status() : int
    {
        return _internal_status;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray111plateMaterialUrl() : String
    {
        return _internal_roundTray111plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray11plateMaterialUrl() : String
    {
        return _internal_roundTray11plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get cubesMaterialListUrl() : String
    {
        return _internal_cubesMaterialListUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundRack1javaMaterialId() : int
    {
        return _internal_roundRack1javaMaterialId;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray15plateMaterialUrl() : String
    {
        return _internal_roundTray15plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray19plateMaterialUrl() : String
    {
        return _internal_roundTray19plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get trayplateMaterialUrl() : String
    {
        return _internal_trayplateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray112plateMaterialUrl() : String
    {
        return _internal_roundTray112plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundRack1javaMaterialname() : String
    {
        return _internal_roundRack1javaMaterialname;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray116plateMaterialUrl() : String
    {
        return _internal_roundTray116plateMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get roundTray14plateMaterialUrl() : String
    {
        return _internal_roundTray14plateMaterialUrl;
    }

    /**
     * data property setters
     */

    public function set roundTray110plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray110plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray110plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray110plateMaterialUrl", oldValue, _internal_roundTray110plateMaterialUrl));
        }
    }

    public function set roundTray17plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray17plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray17plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray17plateMaterialUrl", oldValue, _internal_roundTray17plateMaterialUrl));
        }
    }

    public function set roundTray12plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray12plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray12plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray12plateMaterialUrl", oldValue, _internal_roundTray12plateMaterialUrl));
        }
    }

    public function set roundTray117plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray117plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray117plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray117plateMaterialUrl", oldValue, _internal_roundTray117plateMaterialUrl));
        }
    }

    public function set roundTray13plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray13plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray13plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray13plateMaterialUrl", oldValue, _internal_roundTray13plateMaterialUrl));
        }
    }

    public function set roundTray16plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray16plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray16plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray16plateMaterialUrl", oldValue, _internal_roundTray16plateMaterialUrl));
        }
    }

    public function set roundTray121plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray121plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray121plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray121plateMaterialUrl", oldValue, _internal_roundTray121plateMaterialUrl));
        }
    }

    public function set roundTray119plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray119plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray119plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray119plateMaterialUrl", oldValue, _internal_roundTray119plateMaterialUrl));
        }
    }

    public function set roundTray115plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray115plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray115plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray115plateMaterialUrl", oldValue, _internal_roundTray115plateMaterialUrl));
        }
    }

    public function set roundTray118plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray118plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray118plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray118plateMaterialUrl", oldValue, _internal_roundTray118plateMaterialUrl));
        }
    }

    public function set roundTray120plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray120plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray120plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray120plateMaterialUrl", oldValue, _internal_roundTray120plateMaterialUrl));
        }
    }

    public function set roundTray114plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray114plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray114plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray114plateMaterialUrl", oldValue, _internal_roundTray114plateMaterialUrl));
        }
    }

    public function set roundTray18plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray18plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray18plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray18plateMaterialUrl", oldValue, _internal_roundTray18plateMaterialUrl));
        }
    }

    public function set cylinderBitmapFileMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_cylinderBitmapFileMaterialUrl;
        if (oldValue !== value)
        {
            _internal_cylinderBitmapFileMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cylinderBitmapFileMaterialUrl", oldValue, _internal_cylinderBitmapFileMaterialUrl));
        }
    }

    public function set roundTray113plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray113plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray113plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray113plateMaterialUrl", oldValue, _internal_roundTray113plateMaterialUrl));
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

    public function set roundTray111plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray111plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray111plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray111plateMaterialUrl", oldValue, _internal_roundTray111plateMaterialUrl));
        }
    }

    public function set roundTray11plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray11plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray11plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray11plateMaterialUrl", oldValue, _internal_roundTray11plateMaterialUrl));
        }
    }

    public function set cubesMaterialListUrl(value:String) : void
    {
        var oldValue:String = _internal_cubesMaterialListUrl;
        if (oldValue !== value)
        {
            _internal_cubesMaterialListUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cubesMaterialListUrl", oldValue, _internal_cubesMaterialListUrl));
        }
    }

    public function set roundRack1javaMaterialId(value:int) : void
    {
        var oldValue:int = _internal_roundRack1javaMaterialId;
        if (oldValue !== value)
        {
            _internal_roundRack1javaMaterialId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundRack1javaMaterialId", oldValue, _internal_roundRack1javaMaterialId));
        }
    }

    public function set roundTray15plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray15plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray15plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray15plateMaterialUrl", oldValue, _internal_roundTray15plateMaterialUrl));
        }
    }

    public function set roundTray19plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray19plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray19plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray19plateMaterialUrl", oldValue, _internal_roundTray19plateMaterialUrl));
        }
    }

    public function set trayplateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_trayplateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_trayplateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "trayplateMaterialUrl", oldValue, _internal_trayplateMaterialUrl));
        }
    }

    public function set roundTray112plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray112plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray112plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray112plateMaterialUrl", oldValue, _internal_roundTray112plateMaterialUrl));
        }
    }

    public function set roundRack1javaMaterialname(value:String) : void
    {
        var oldValue:String = _internal_roundRack1javaMaterialname;
        if (oldValue !== value)
        {
            _internal_roundRack1javaMaterialname = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundRack1javaMaterialname", oldValue, _internal_roundRack1javaMaterialname));
        }
    }

    public function set roundTray116plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray116plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray116plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray116plateMaterialUrl", oldValue, _internal_roundTray116plateMaterialUrl));
        }
    }

    public function set roundTray14plateMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_roundTray14plateMaterialUrl;
        if (oldValue !== value)
        {
            _internal_roundTray14plateMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roundTray14plateMaterialUrl", oldValue, _internal_roundTray14plateMaterialUrl));
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
    public function get _model() : _RoundRack1javaMaterialEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _RoundRack1javaMaterialEntityMetadata) : void
    {
        var oldValue : _RoundRack1javaMaterialEntityMetadata = model_internal::_dminternal_model;
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
