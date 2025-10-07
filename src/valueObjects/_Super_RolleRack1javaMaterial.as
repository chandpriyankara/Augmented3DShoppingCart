/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - RolleRack1javaMaterial.as.
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
public class _Super_RolleRack1javaMaterial extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.fortunaglobal.model.RolleRack1javaMaterial") == null)
            {
                flash.net.registerClassAlias("com.fortunaglobal.model.RolleRack1javaMaterial", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.fortunaglobal.model.RolleRack1javaMaterial", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _RolleRack1javaMaterialEntityMetadata;

    /**
     * properties
     */
    private var _internal_rolleTray4x43plateMaterialList4Url : String;
    private var _internal_rolleTray4x47plateMaterialList6Url : String;
    private var _internal_rolleTray4x42plateMaterialList1Url : String;
    private var _internal_rolleTray4x46plateMaterialList2Url : String;
    private var _internal_rolleTray4x45plateMaterialList12Url : String;
    private var _internal_rolleTray4x43plateMaterialList13Url : String;
    private var _internal_rolleTray4x48plateMaterialList12Url : String;
    private var _internal_rolleTray4x410plateMaterialList9Url : String;
    private var _internal_rolleTray4x410plateMaterialList16Url : String;
    private var _internal_rolleTray4x42plateMaterialList12Url : String;
    private var _internal_rolleTray4x41plateMaterialList2Url : String;
    private var _internal_rolleTray4x47plateMaterialList12Url : String;
    private var _internal_rolleTray4x45plateMaterialList4Url : String;
    private var _internal_rolleTray4x49plateMaterialList3Url : String;
    private var _internal_rolleTray4x45plateMaterialList9Url : String;
    private var _internal_rolleTray4x45plateMaterialList7Url : String;
    private var _internal_rolleTray4x48plateMaterialList7Url : String;
    private var _internal_rolleTray4x48plateMaterialList14Url : String;
    private var _internal_rolleTray4x411plateMaterialList16Url : String;
    private var _internal_rolleTray4x45plateMaterialList5Url : String;
    private var _internal_rolleTray4x42plateMaterialList8Url : String;
    private var _internal_rolleTray4x410plateMaterialList14Url : String;
    private var _internal_rolleTray4x46plateMaterialList11Url : String;
    private var _internal_rolleTray4x410plateMaterialList5Url : String;
    private var _internal_rolleTray4x47plateMaterialList10Url : String;
    private var _internal_panelcubesMaterialListUrl : String;
    private var _internal_rolleTray4x410plateMaterialList3Url : String;
    private var _internal_rolleTray4x411plateMaterialList1Url : String;
    private var _internal_rolleTray4x49plateMaterialList11Url : String;
    private var _internal_rolleTray4x44plateMaterialList9Url : String;
    private var _internal_rolleTray4x44plateMaterialList15Url : String;
    private var _internal_rolleTray4x42plateMaterialList6Url : String;
    private var _internal_rolleTray4x43plateMaterialList9Url : String;
    private var _internal_rolleTray4x410plateMaterialList12Url : String;
    private var _internal_rolleTray4x41plateMaterialList13Url : String;
    private var _internal_rolleTray4x410plateMaterialList7Url : String;
    private var _internal_rolleTray4x45plateMaterialList16Url : String;
    private var _internal_rolleTray4x410plateMaterialList8Url : String;
    private var _internal_rolleTray4x48plateMaterialList10Url : String;
    private var _internal_rolleTray4x411plateMaterialList10Url : String;
    private var _internal_rolleTray4x42plateMaterialList13Url : String;
    private var _internal_rolleTray4x46plateMaterialList3Url : String;
    private var _internal_rolleTray4x46plateMaterialList7Url : String;
    private var _internal_rolleTray4x44plateMaterialList14Url : String;
    private var _internal_rolleTray4x43plateMaterialList5Url : String;
    private var _internal_rolleTray4x45plateMaterialList14Url : String;
    private var _internal_rolleTray4x42plateMaterialList2Url : String;
    private var _internal_rolleTray4x410plateMaterialList1Url : String;
    private var _internal_rolleTray4x45plateMaterialList6Url : String;
    private var _internal_rolleTray4x47plateMaterialList14Url : String;
    private var _internal_rolleTray4x44plateMaterialList10Url : String;
    private var _internal_rolleTray4x411plateMaterialList14Url : String;
    private var _internal_rolleTray4x44plateMaterialList5Url : String;
    private var _internal_rolleTray4x42plateMaterialList11Url : String;
    private var _internal_rolleTray4x43plateMaterialList8Url : String;
    private var _internal_rolleTray4x410plateMaterialList2Url : String;
    private var _internal_rolleTray4x43plateMaterialList12Url : String;
    private var _internal_rolleTray4x41plateMaterialList8Url : String;
    private var _internal_rolleTray4x43plateMaterialList16Url : String;
    private var _internal_rolleTray4x411plateMaterialList4Url : String;
    private var _internal_rolleTray4x46plateMaterialList6Url : String;
    private var _internal_rolleTray4x46plateMaterialList12Url : String;
    private var _internal_rolleTray4x41plateMaterialList11Url : String;
    private var _internal_rolleTray4x48plateMaterialList15Url : String;
    private var _internal_rolleTray4x48plateMaterialList4Url : String;
    private var _internal_rolleTray4x47plateMaterialList9Url : String;
    private var _internal_rolleRack1javaMaterialId : int;
    private var _internal_hangerBar1BitmapFileMaterialUrl : String;
    private var _internal_rolleTray4x49plateMaterialList2Url : String;
    private var _internal_rolleTray4x410plateMaterialList4Url : String;
    private var _internal_rolleTray4x46plateMaterialList16Url : String;
    private var _internal_rolleTray4x41plateMaterialList4Url : String;
    private var _internal_rolleTray4x48plateMaterialList16Url : String;
    private var _internal_rolleTray4x410plateMaterialList6Url : String;
    private var _internal_rolleTray4x49plateMaterialList9Url : String;
    private var _internal_rolleTray4x45plateMaterialList3Url : String;
    private var _internal_rolleTray4x45plateMaterialList8Url : String;
    private var _internal_rolleTray4x42plateMaterialList10Url : String;
    private var _internal_rolleTray4x42plateMaterialList9Url : String;
    private var _internal_rolleTray4x45plateMaterialList15Url : String;
    private var _internal_rolleTray4x49plateMaterialList16Url : String;
    private var _internal_hangerBar2BitmapFileMaterialUrl : String;
    private var _internal_rolleTray4x45plateMaterialList11Url : String;
    private var _internal_rolleTray4x47plateMaterialList5Url : String;
    private var _internal_rolleTray4x46plateMaterialList1Url : String;
    private var _internal_rolleTray4x43plateMaterialList6Url : String;
    private var _internal_rolleTray4x48plateMaterialList1Url : String;
    private var _internal_rolleTray4x47plateMaterialList8Url : String;
    private var _internal_rolleTray4x49plateMaterialList6Url : String;
    private var _internal_rolleTray4x43plateMaterialList11Url : String;
    private var _internal_rolleTray4x41plateMaterialList9Url : String;
    private var _internal_rolleTray4x46plateMaterialList9Url : String;
    private var _internal_rolleTray4x47plateMaterialList7Url : String;
    private var _internal_rolleTray4x49plateMaterialList14Url : String;
    private var _internal_rolleTray4x44plateMaterialList13Url : String;
    private var _internal_rolleTray4x41plateMaterialList10Url : String;
    private var _internal_rolleTray4x410plateMaterialList13Url : String;
    private var _internal_rolleTray4x49plateMaterialList12Url : String;
    private var _internal_rolleTray4x410plateMaterialList11Url : String;
    private var _internal_rolleTray4x44plateMaterialList3Url : String;
    private var _internal_status : int;
    private var _internal_footcubesMaterialListUrl : String;
    private var _internal_rolleTray4x411plateMaterialList7Url : String;
    private var _internal_rolleTray4x46plateMaterialList5Url : String;
    private var _internal_rolleTray4x41plateMaterialList14Url : String;
    private var _internal_rolleTray4x47plateMaterialList1Url : String;
    private var _internal_rolleTray4x411plateMaterialList8Url : String;
    private var _internal_rolleTray4x48plateMaterialList11Url : String;
    private var _internal_rolleTray4x42plateMaterialList15Url : String;
    private var _internal_rolleTray4x43plateMaterialList14Url : String;
    private var _internal_rolleTray4x41plateMaterialList15Url : String;
    private var _internal_rolleTray4x42plateMaterialList14Url : String;
    private var _internal_rolleTray4x49plateMaterialList5Url : String;
    private var _internal_rolleTray4x41plateMaterialList12Url : String;
    private var _internal_rolleTray4x42plateMaterialList16Url : String;
    private var _internal_rolleTray4x411plateMaterialList3Url : String;
    private var _internal_rolleTray4x410plateMaterialList10Url : String;
    private var _internal_rolleTray4x41plateMaterialList1Url : String;
    private var _internal_rolleTray4x46plateMaterialList15Url : String;
    private var _internal_rolleTray4x411plateMaterialList12Url : String;
    private var _internal_rolleTray4x44plateMaterialList6Url : String;
    private var _internal_rolleTray4x49plateMaterialList10Url : String;
    private var _internal_rolleTray4x48plateMaterialList6Url : String;
    private var _internal_rolleTray4x411plateMaterialList5Url : String;
    private var _internal_rolleRack1javaMaterialname : String;
    private var _internal_rolleTray4x48plateMaterialList13Url : String;
    private var _internal_rolleTray4x49plateMaterialList1Url : String;
    private var _internal_rolleTray4x411plateMaterialList6Url : String;
    private var _internal_rolleTray4x44plateMaterialList7Url : String;
    private var _internal_rolleTray4x410plateMaterialList15Url : String;
    private var _internal_rolleTray4x41plateMaterialList6Url : String;
    private var _internal_rolleTray4x47plateMaterialList16Url : String;
    private var _internal_rolleTray4x46plateMaterialList8Url : String;
    private var _internal_rolleTray4x45plateMaterialList1Url : String;
    private var _internal_rolleTray4x48plateMaterialList8Url : String;
    private var _internal_rolleTray4x411plateMaterialList13Url : String;
    private var _internal_rolleTray4x44plateMaterialList2Url : String;
    private var _internal_rolleTray4x42plateMaterialList4Url : String;
    private var _internal_rolleTray4x411plateMaterialList9Url : String;
    private var _internal_rolleTray4x42plateMaterialList5Url : String;
    private var _internal_rolleTray4x411plateMaterialList2Url : String;
    private var _internal_rolleTray4x43plateMaterialList7Url : String;
    private var _internal_rolleTray4x411plateMaterialList15Url : String;
    private var _internal_rolleTray4x42plateMaterialList3Url : String;
    private var _internal_rolleTray4x47plateMaterialList15Url : String;
    private var _internal_rolleTray4x49plateMaterialList13Url : String;
    private var _internal_rolleTray4x41plateMaterialList3Url : String;
    private var _internal_rolleTray4x49plateMaterialList4Url : String;
    private var _internal_rolleTray4x45plateMaterialList10Url : String;
    private var _internal_rolleTray4x47plateMaterialList3Url : String;
    private var _internal_rolleTray4x44plateMaterialList4Url : String;
    private var _internal_rolleTray4x48plateMaterialList3Url : String;
    private var _internal_rolleTray4x47plateMaterialList4Url : String;
    private var _internal_rolleTray4x45plateMaterialList2Url : String;
    private var _internal_rolleTray4x48plateMaterialList9Url : String;
    private var _internal_rolleTray4x47plateMaterialList13Url : String;
    private var _internal_rolleTray4x41plateMaterialList5Url : String;
    private var _internal_rolleTray4x46plateMaterialList10Url : String;
    private var _internal_rolleTray4x47plateMaterialList2Url : String;
    private var _internal_rolleTray4x43plateMaterialList10Url : String;
    private var _internal_rolleTray4x49plateMaterialList8Url : String;
    private var _internal_rolleTray4x45plateMaterialList13Url : String;
    private var _internal_rolleTray4x44plateMaterialList16Url : String;
    private var _internal_rolleTray4x41plateMaterialList16Url : String;
    private var _internal_rolleTray4x46plateMaterialList4Url : String;
    private var _internal_rolleTray4x44plateMaterialList11Url : String;
    private var _internal_rolleTray4x46plateMaterialList14Url : String;
    private var _internal_rolleTray4x48plateMaterialList2Url : String;
    private var _internal_rolleTray4x44plateMaterialList1Url : String;
    private var _internal_rolleTray4x43plateMaterialList2Url : String;
    private var _internal_rolleTray4x48plateMaterialList5Url : String;
    private var _internal_rolleTray4x44plateMaterialList12Url : String;
    private var _internal_rolleTray4x42plateMaterialList7Url : String;
    private var _internal_rolleTray4x411plateMaterialList11Url : String;
    private var _internal_rolleTray4x49plateMaterialList15Url : String;
    private var _internal_rolleTray4x43plateMaterialList3Url : String;
    private var _internal_rolleTray4x49plateMaterialList7Url : String;
    private var _internal_rolleTray4x41plateMaterialList7Url : String;
    private var _internal_rolleTray4x43plateMaterialList15Url : String;
    private var _internal_rolleTray4x43plateMaterialList1Url : String;
    private var _internal_rolleTray4x47plateMaterialList11Url : String;
    private var _internal_rolleTray4x46plateMaterialList13Url : String;
    private var _internal_rolleTray4x44plateMaterialList8Url : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_RolleRack1javaMaterial()
    {
        _model = new _RolleRack1javaMaterialEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList4Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList4Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList6Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList6Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList1Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList1Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList2Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList2Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList12Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList12Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList13Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList13Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList12Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList12Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList9Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList9Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList16Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList16Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList12Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList12Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList2Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList2Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList12Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList12Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList4Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList4Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList3Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList3Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList9Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList9Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList7Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList7Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList7Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList7Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList14Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList14Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList16Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList16Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList5Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList5Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList8Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList8Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList14Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList14Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList11Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList11Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList5Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList5Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList10Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList10Url;
    }

    [Bindable(event="propertyChange")]
    public function get panelcubesMaterialListUrl() : String
    {
        return _internal_panelcubesMaterialListUrl;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList3Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList3Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList1Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList1Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList11Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList11Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList9Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList9Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList15Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList15Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList6Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList6Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList9Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList9Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList12Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList12Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList13Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList13Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList7Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList7Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList16Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList16Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList8Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList8Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList10Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList10Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList10Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList10Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList13Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList13Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList3Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList3Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList7Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList7Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList14Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList14Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList5Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList5Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList14Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList14Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList2Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList2Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList1Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList1Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList6Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList6Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList14Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList14Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList10Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList10Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList14Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList14Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList5Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList5Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList11Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList11Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList8Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList8Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList2Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList2Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList12Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList12Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList8Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList8Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList16Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList16Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList4Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList4Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList6Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList6Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList12Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList12Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList11Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList11Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList15Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList15Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList4Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList4Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList9Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList9Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleRack1javaMaterialId() : int
    {
        return _internal_rolleRack1javaMaterialId;
    }

    [Bindable(event="propertyChange")]
    public function get hangerBar1BitmapFileMaterialUrl() : String
    {
        return _internal_hangerBar1BitmapFileMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList2Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList2Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList4Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList4Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList16Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList16Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList4Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList4Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList16Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList16Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList6Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList6Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList9Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList9Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList3Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList3Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList8Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList8Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList10Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList10Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList9Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList9Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList15Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList15Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList16Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList16Url;
    }

    [Bindable(event="propertyChange")]
    public function get hangerBar2BitmapFileMaterialUrl() : String
    {
        return _internal_hangerBar2BitmapFileMaterialUrl;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList11Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList11Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList5Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList5Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList1Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList1Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList6Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList6Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList1Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList1Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList8Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList8Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList6Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList6Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList11Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList11Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList9Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList9Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList9Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList9Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList7Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList7Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList14Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList14Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList13Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList13Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList10Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList10Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList13Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList13Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList12Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList12Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList11Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList11Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList3Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList3Url;
    }

    [Bindable(event="propertyChange")]
    public function get status() : int
    {
        return _internal_status;
    }

    [Bindable(event="propertyChange")]
    public function get footcubesMaterialListUrl() : String
    {
        return _internal_footcubesMaterialListUrl;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList7Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList7Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList5Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList5Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList14Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList14Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList1Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList1Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList8Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList8Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList11Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList11Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList15Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList15Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList14Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList14Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList15Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList15Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList14Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList14Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList5Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList5Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList12Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList12Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList16Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList16Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList3Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList3Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList10Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList10Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList1Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList1Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList15Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList15Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList12Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList12Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList6Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList6Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList10Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList10Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList6Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList6Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList5Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList5Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleRack1javaMaterialname() : String
    {
        return _internal_rolleRack1javaMaterialname;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList13Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList13Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList1Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList1Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList6Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList6Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList7Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList7Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x410plateMaterialList15Url() : String
    {
        return _internal_rolleTray4x410plateMaterialList15Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList6Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList6Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList16Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList16Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList8Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList8Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList1Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList1Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList8Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList8Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList13Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList13Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList2Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList2Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList4Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList4Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList9Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList9Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList5Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList5Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList2Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList2Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList7Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList7Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList15Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList15Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList3Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList3Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList15Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList15Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList13Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList13Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList3Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList3Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList4Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList4Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList10Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList10Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList3Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList3Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList4Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList4Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList3Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList3Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList4Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList4Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList2Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList2Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList9Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList9Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList13Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList13Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList5Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList5Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList10Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList10Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList2Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList2Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList10Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList10Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList8Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList8Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x45plateMaterialList13Url() : String
    {
        return _internal_rolleTray4x45plateMaterialList13Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList16Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList16Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList16Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList16Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList4Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList4Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList11Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList11Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList14Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList14Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList2Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList2Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList1Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList1Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList2Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList2Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x48plateMaterialList5Url() : String
    {
        return _internal_rolleTray4x48plateMaterialList5Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList12Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList12Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x42plateMaterialList7Url() : String
    {
        return _internal_rolleTray4x42plateMaterialList7Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x411plateMaterialList11Url() : String
    {
        return _internal_rolleTray4x411plateMaterialList11Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList15Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList15Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList3Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList3Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x49plateMaterialList7Url() : String
    {
        return _internal_rolleTray4x49plateMaterialList7Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x41plateMaterialList7Url() : String
    {
        return _internal_rolleTray4x41plateMaterialList7Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList15Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList15Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x43plateMaterialList1Url() : String
    {
        return _internal_rolleTray4x43plateMaterialList1Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x47plateMaterialList11Url() : String
    {
        return _internal_rolleTray4x47plateMaterialList11Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x46plateMaterialList13Url() : String
    {
        return _internal_rolleTray4x46plateMaterialList13Url;
    }

    [Bindable(event="propertyChange")]
    public function get rolleTray4x44plateMaterialList8Url() : String
    {
        return _internal_rolleTray4x44plateMaterialList8Url;
    }

    /**
     * data property setters
     */

    public function set rolleTray4x43plateMaterialList4Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList4Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList4Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList4Url", oldValue, _internal_rolleTray4x43plateMaterialList4Url));
        }
    }

    public function set rolleTray4x47plateMaterialList6Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList6Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList6Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList6Url", oldValue, _internal_rolleTray4x47plateMaterialList6Url));
        }
    }

    public function set rolleTray4x42plateMaterialList1Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList1Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList1Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList1Url", oldValue, _internal_rolleTray4x42plateMaterialList1Url));
        }
    }

    public function set rolleTray4x46plateMaterialList2Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList2Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList2Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList2Url", oldValue, _internal_rolleTray4x46plateMaterialList2Url));
        }
    }

    public function set rolleTray4x45plateMaterialList12Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList12Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList12Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList12Url", oldValue, _internal_rolleTray4x45plateMaterialList12Url));
        }
    }

    public function set rolleTray4x43plateMaterialList13Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList13Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList13Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList13Url", oldValue, _internal_rolleTray4x43plateMaterialList13Url));
        }
    }

    public function set rolleTray4x48plateMaterialList12Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList12Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList12Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList12Url", oldValue, _internal_rolleTray4x48plateMaterialList12Url));
        }
    }

    public function set rolleTray4x410plateMaterialList9Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList9Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList9Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList9Url", oldValue, _internal_rolleTray4x410plateMaterialList9Url));
        }
    }

    public function set rolleTray4x410plateMaterialList16Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList16Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList16Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList16Url", oldValue, _internal_rolleTray4x410plateMaterialList16Url));
        }
    }

    public function set rolleTray4x42plateMaterialList12Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList12Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList12Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList12Url", oldValue, _internal_rolleTray4x42plateMaterialList12Url));
        }
    }

    public function set rolleTray4x41plateMaterialList2Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList2Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList2Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList2Url", oldValue, _internal_rolleTray4x41plateMaterialList2Url));
        }
    }

    public function set rolleTray4x47plateMaterialList12Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList12Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList12Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList12Url", oldValue, _internal_rolleTray4x47plateMaterialList12Url));
        }
    }

    public function set rolleTray4x45plateMaterialList4Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList4Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList4Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList4Url", oldValue, _internal_rolleTray4x45plateMaterialList4Url));
        }
    }

    public function set rolleTray4x49plateMaterialList3Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList3Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList3Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList3Url", oldValue, _internal_rolleTray4x49plateMaterialList3Url));
        }
    }

    public function set rolleTray4x45plateMaterialList9Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList9Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList9Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList9Url", oldValue, _internal_rolleTray4x45plateMaterialList9Url));
        }
    }

    public function set rolleTray4x45plateMaterialList7Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList7Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList7Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList7Url", oldValue, _internal_rolleTray4x45plateMaterialList7Url));
        }
    }

    public function set rolleTray4x48plateMaterialList7Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList7Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList7Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList7Url", oldValue, _internal_rolleTray4x48plateMaterialList7Url));
        }
    }

    public function set rolleTray4x48plateMaterialList14Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList14Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList14Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList14Url", oldValue, _internal_rolleTray4x48plateMaterialList14Url));
        }
    }

    public function set rolleTray4x411plateMaterialList16Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList16Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList16Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList16Url", oldValue, _internal_rolleTray4x411plateMaterialList16Url));
        }
    }

    public function set rolleTray4x45plateMaterialList5Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList5Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList5Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList5Url", oldValue, _internal_rolleTray4x45plateMaterialList5Url));
        }
    }

    public function set rolleTray4x42plateMaterialList8Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList8Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList8Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList8Url", oldValue, _internal_rolleTray4x42plateMaterialList8Url));
        }
    }

    public function set rolleTray4x410plateMaterialList14Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList14Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList14Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList14Url", oldValue, _internal_rolleTray4x410plateMaterialList14Url));
        }
    }

    public function set rolleTray4x46plateMaterialList11Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList11Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList11Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList11Url", oldValue, _internal_rolleTray4x46plateMaterialList11Url));
        }
    }

    public function set rolleTray4x410plateMaterialList5Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList5Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList5Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList5Url", oldValue, _internal_rolleTray4x410plateMaterialList5Url));
        }
    }

    public function set rolleTray4x47plateMaterialList10Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList10Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList10Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList10Url", oldValue, _internal_rolleTray4x47plateMaterialList10Url));
        }
    }

    public function set panelcubesMaterialListUrl(value:String) : void
    {
        var oldValue:String = _internal_panelcubesMaterialListUrl;
        if (oldValue !== value)
        {
            _internal_panelcubesMaterialListUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "panelcubesMaterialListUrl", oldValue, _internal_panelcubesMaterialListUrl));
        }
    }

    public function set rolleTray4x410plateMaterialList3Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList3Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList3Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList3Url", oldValue, _internal_rolleTray4x410plateMaterialList3Url));
        }
    }

    public function set rolleTray4x411plateMaterialList1Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList1Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList1Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList1Url", oldValue, _internal_rolleTray4x411plateMaterialList1Url));
        }
    }

    public function set rolleTray4x49plateMaterialList11Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList11Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList11Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList11Url", oldValue, _internal_rolleTray4x49plateMaterialList11Url));
        }
    }

    public function set rolleTray4x44plateMaterialList9Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList9Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList9Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList9Url", oldValue, _internal_rolleTray4x44plateMaterialList9Url));
        }
    }

    public function set rolleTray4x44plateMaterialList15Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList15Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList15Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList15Url", oldValue, _internal_rolleTray4x44plateMaterialList15Url));
        }
    }

    public function set rolleTray4x42plateMaterialList6Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList6Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList6Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList6Url", oldValue, _internal_rolleTray4x42plateMaterialList6Url));
        }
    }

    public function set rolleTray4x43plateMaterialList9Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList9Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList9Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList9Url", oldValue, _internal_rolleTray4x43plateMaterialList9Url));
        }
    }

    public function set rolleTray4x410plateMaterialList12Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList12Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList12Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList12Url", oldValue, _internal_rolleTray4x410plateMaterialList12Url));
        }
    }

    public function set rolleTray4x41plateMaterialList13Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList13Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList13Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList13Url", oldValue, _internal_rolleTray4x41plateMaterialList13Url));
        }
    }

    public function set rolleTray4x410plateMaterialList7Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList7Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList7Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList7Url", oldValue, _internal_rolleTray4x410plateMaterialList7Url));
        }
    }

    public function set rolleTray4x45plateMaterialList16Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList16Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList16Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList16Url", oldValue, _internal_rolleTray4x45plateMaterialList16Url));
        }
    }

    public function set rolleTray4x410plateMaterialList8Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList8Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList8Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList8Url", oldValue, _internal_rolleTray4x410plateMaterialList8Url));
        }
    }

    public function set rolleTray4x48plateMaterialList10Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList10Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList10Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList10Url", oldValue, _internal_rolleTray4x48plateMaterialList10Url));
        }
    }

    public function set rolleTray4x411plateMaterialList10Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList10Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList10Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList10Url", oldValue, _internal_rolleTray4x411plateMaterialList10Url));
        }
    }

    public function set rolleTray4x42plateMaterialList13Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList13Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList13Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList13Url", oldValue, _internal_rolleTray4x42plateMaterialList13Url));
        }
    }

    public function set rolleTray4x46plateMaterialList3Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList3Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList3Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList3Url", oldValue, _internal_rolleTray4x46plateMaterialList3Url));
        }
    }

    public function set rolleTray4x46plateMaterialList7Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList7Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList7Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList7Url", oldValue, _internal_rolleTray4x46plateMaterialList7Url));
        }
    }

    public function set rolleTray4x44plateMaterialList14Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList14Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList14Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList14Url", oldValue, _internal_rolleTray4x44plateMaterialList14Url));
        }
    }

    public function set rolleTray4x43plateMaterialList5Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList5Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList5Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList5Url", oldValue, _internal_rolleTray4x43plateMaterialList5Url));
        }
    }

    public function set rolleTray4x45plateMaterialList14Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList14Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList14Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList14Url", oldValue, _internal_rolleTray4x45plateMaterialList14Url));
        }
    }

    public function set rolleTray4x42plateMaterialList2Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList2Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList2Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList2Url", oldValue, _internal_rolleTray4x42plateMaterialList2Url));
        }
    }

    public function set rolleTray4x410plateMaterialList1Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList1Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList1Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList1Url", oldValue, _internal_rolleTray4x410plateMaterialList1Url));
        }
    }

    public function set rolleTray4x45plateMaterialList6Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList6Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList6Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList6Url", oldValue, _internal_rolleTray4x45plateMaterialList6Url));
        }
    }

    public function set rolleTray4x47plateMaterialList14Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList14Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList14Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList14Url", oldValue, _internal_rolleTray4x47plateMaterialList14Url));
        }
    }

    public function set rolleTray4x44plateMaterialList10Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList10Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList10Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList10Url", oldValue, _internal_rolleTray4x44plateMaterialList10Url));
        }
    }

    public function set rolleTray4x411plateMaterialList14Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList14Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList14Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList14Url", oldValue, _internal_rolleTray4x411plateMaterialList14Url));
        }
    }

    public function set rolleTray4x44plateMaterialList5Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList5Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList5Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList5Url", oldValue, _internal_rolleTray4x44plateMaterialList5Url));
        }
    }

    public function set rolleTray4x42plateMaterialList11Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList11Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList11Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList11Url", oldValue, _internal_rolleTray4x42plateMaterialList11Url));
        }
    }

    public function set rolleTray4x43plateMaterialList8Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList8Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList8Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList8Url", oldValue, _internal_rolleTray4x43plateMaterialList8Url));
        }
    }

    public function set rolleTray4x410plateMaterialList2Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList2Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList2Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList2Url", oldValue, _internal_rolleTray4x410plateMaterialList2Url));
        }
    }

    public function set rolleTray4x43plateMaterialList12Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList12Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList12Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList12Url", oldValue, _internal_rolleTray4x43plateMaterialList12Url));
        }
    }

    public function set rolleTray4x41plateMaterialList8Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList8Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList8Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList8Url", oldValue, _internal_rolleTray4x41plateMaterialList8Url));
        }
    }

    public function set rolleTray4x43plateMaterialList16Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList16Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList16Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList16Url", oldValue, _internal_rolleTray4x43plateMaterialList16Url));
        }
    }

    public function set rolleTray4x411plateMaterialList4Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList4Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList4Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList4Url", oldValue, _internal_rolleTray4x411plateMaterialList4Url));
        }
    }

    public function set rolleTray4x46plateMaterialList6Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList6Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList6Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList6Url", oldValue, _internal_rolleTray4x46plateMaterialList6Url));
        }
    }

    public function set rolleTray4x46plateMaterialList12Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList12Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList12Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList12Url", oldValue, _internal_rolleTray4x46plateMaterialList12Url));
        }
    }

    public function set rolleTray4x41plateMaterialList11Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList11Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList11Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList11Url", oldValue, _internal_rolleTray4x41plateMaterialList11Url));
        }
    }

    public function set rolleTray4x48plateMaterialList15Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList15Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList15Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList15Url", oldValue, _internal_rolleTray4x48plateMaterialList15Url));
        }
    }

    public function set rolleTray4x48plateMaterialList4Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList4Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList4Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList4Url", oldValue, _internal_rolleTray4x48plateMaterialList4Url));
        }
    }

    public function set rolleTray4x47plateMaterialList9Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList9Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList9Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList9Url", oldValue, _internal_rolleTray4x47plateMaterialList9Url));
        }
    }

    public function set rolleRack1javaMaterialId(value:int) : void
    {
        var oldValue:int = _internal_rolleRack1javaMaterialId;
        if (oldValue !== value)
        {
            _internal_rolleRack1javaMaterialId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleRack1javaMaterialId", oldValue, _internal_rolleRack1javaMaterialId));
        }
    }

    public function set hangerBar1BitmapFileMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_hangerBar1BitmapFileMaterialUrl;
        if (oldValue !== value)
        {
            _internal_hangerBar1BitmapFileMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hangerBar1BitmapFileMaterialUrl", oldValue, _internal_hangerBar1BitmapFileMaterialUrl));
        }
    }

    public function set rolleTray4x49plateMaterialList2Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList2Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList2Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList2Url", oldValue, _internal_rolleTray4x49plateMaterialList2Url));
        }
    }

    public function set rolleTray4x410plateMaterialList4Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList4Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList4Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList4Url", oldValue, _internal_rolleTray4x410plateMaterialList4Url));
        }
    }

    public function set rolleTray4x46plateMaterialList16Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList16Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList16Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList16Url", oldValue, _internal_rolleTray4x46plateMaterialList16Url));
        }
    }

    public function set rolleTray4x41plateMaterialList4Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList4Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList4Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList4Url", oldValue, _internal_rolleTray4x41plateMaterialList4Url));
        }
    }

    public function set rolleTray4x48plateMaterialList16Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList16Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList16Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList16Url", oldValue, _internal_rolleTray4x48plateMaterialList16Url));
        }
    }

    public function set rolleTray4x410plateMaterialList6Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList6Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList6Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList6Url", oldValue, _internal_rolleTray4x410plateMaterialList6Url));
        }
    }

    public function set rolleTray4x49plateMaterialList9Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList9Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList9Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList9Url", oldValue, _internal_rolleTray4x49plateMaterialList9Url));
        }
    }

    public function set rolleTray4x45plateMaterialList3Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList3Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList3Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList3Url", oldValue, _internal_rolleTray4x45plateMaterialList3Url));
        }
    }

    public function set rolleTray4x45plateMaterialList8Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList8Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList8Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList8Url", oldValue, _internal_rolleTray4x45plateMaterialList8Url));
        }
    }

    public function set rolleTray4x42plateMaterialList10Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList10Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList10Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList10Url", oldValue, _internal_rolleTray4x42plateMaterialList10Url));
        }
    }

    public function set rolleTray4x42plateMaterialList9Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList9Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList9Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList9Url", oldValue, _internal_rolleTray4x42plateMaterialList9Url));
        }
    }

    public function set rolleTray4x45plateMaterialList15Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList15Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList15Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList15Url", oldValue, _internal_rolleTray4x45plateMaterialList15Url));
        }
    }

    public function set rolleTray4x49plateMaterialList16Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList16Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList16Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList16Url", oldValue, _internal_rolleTray4x49plateMaterialList16Url));
        }
    }

    public function set hangerBar2BitmapFileMaterialUrl(value:String) : void
    {
        var oldValue:String = _internal_hangerBar2BitmapFileMaterialUrl;
        if (oldValue !== value)
        {
            _internal_hangerBar2BitmapFileMaterialUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hangerBar2BitmapFileMaterialUrl", oldValue, _internal_hangerBar2BitmapFileMaterialUrl));
        }
    }

    public function set rolleTray4x45plateMaterialList11Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList11Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList11Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList11Url", oldValue, _internal_rolleTray4x45plateMaterialList11Url));
        }
    }

    public function set rolleTray4x47plateMaterialList5Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList5Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList5Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList5Url", oldValue, _internal_rolleTray4x47plateMaterialList5Url));
        }
    }

    public function set rolleTray4x46plateMaterialList1Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList1Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList1Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList1Url", oldValue, _internal_rolleTray4x46plateMaterialList1Url));
        }
    }

    public function set rolleTray4x43plateMaterialList6Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList6Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList6Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList6Url", oldValue, _internal_rolleTray4x43plateMaterialList6Url));
        }
    }

    public function set rolleTray4x48plateMaterialList1Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList1Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList1Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList1Url", oldValue, _internal_rolleTray4x48plateMaterialList1Url));
        }
    }

    public function set rolleTray4x47plateMaterialList8Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList8Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList8Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList8Url", oldValue, _internal_rolleTray4x47plateMaterialList8Url));
        }
    }

    public function set rolleTray4x49plateMaterialList6Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList6Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList6Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList6Url", oldValue, _internal_rolleTray4x49plateMaterialList6Url));
        }
    }

    public function set rolleTray4x43plateMaterialList11Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList11Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList11Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList11Url", oldValue, _internal_rolleTray4x43plateMaterialList11Url));
        }
    }

    public function set rolleTray4x41plateMaterialList9Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList9Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList9Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList9Url", oldValue, _internal_rolleTray4x41plateMaterialList9Url));
        }
    }

    public function set rolleTray4x46plateMaterialList9Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList9Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList9Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList9Url", oldValue, _internal_rolleTray4x46plateMaterialList9Url));
        }
    }

    public function set rolleTray4x47plateMaterialList7Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList7Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList7Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList7Url", oldValue, _internal_rolleTray4x47plateMaterialList7Url));
        }
    }

    public function set rolleTray4x49plateMaterialList14Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList14Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList14Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList14Url", oldValue, _internal_rolleTray4x49plateMaterialList14Url));
        }
    }

    public function set rolleTray4x44plateMaterialList13Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList13Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList13Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList13Url", oldValue, _internal_rolleTray4x44plateMaterialList13Url));
        }
    }

    public function set rolleTray4x41plateMaterialList10Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList10Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList10Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList10Url", oldValue, _internal_rolleTray4x41plateMaterialList10Url));
        }
    }

    public function set rolleTray4x410plateMaterialList13Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList13Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList13Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList13Url", oldValue, _internal_rolleTray4x410plateMaterialList13Url));
        }
    }

    public function set rolleTray4x49plateMaterialList12Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList12Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList12Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList12Url", oldValue, _internal_rolleTray4x49plateMaterialList12Url));
        }
    }

    public function set rolleTray4x410plateMaterialList11Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList11Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList11Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList11Url", oldValue, _internal_rolleTray4x410plateMaterialList11Url));
        }
    }

    public function set rolleTray4x44plateMaterialList3Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList3Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList3Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList3Url", oldValue, _internal_rolleTray4x44plateMaterialList3Url));
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

    public function set footcubesMaterialListUrl(value:String) : void
    {
        var oldValue:String = _internal_footcubesMaterialListUrl;
        if (oldValue !== value)
        {
            _internal_footcubesMaterialListUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "footcubesMaterialListUrl", oldValue, _internal_footcubesMaterialListUrl));
        }
    }

    public function set rolleTray4x411plateMaterialList7Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList7Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList7Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList7Url", oldValue, _internal_rolleTray4x411plateMaterialList7Url));
        }
    }

    public function set rolleTray4x46plateMaterialList5Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList5Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList5Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList5Url", oldValue, _internal_rolleTray4x46plateMaterialList5Url));
        }
    }

    public function set rolleTray4x41plateMaterialList14Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList14Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList14Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList14Url", oldValue, _internal_rolleTray4x41plateMaterialList14Url));
        }
    }

    public function set rolleTray4x47plateMaterialList1Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList1Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList1Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList1Url", oldValue, _internal_rolleTray4x47plateMaterialList1Url));
        }
    }

    public function set rolleTray4x411plateMaterialList8Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList8Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList8Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList8Url", oldValue, _internal_rolleTray4x411plateMaterialList8Url));
        }
    }

    public function set rolleTray4x48plateMaterialList11Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList11Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList11Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList11Url", oldValue, _internal_rolleTray4x48plateMaterialList11Url));
        }
    }

    public function set rolleTray4x42plateMaterialList15Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList15Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList15Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList15Url", oldValue, _internal_rolleTray4x42plateMaterialList15Url));
        }
    }

    public function set rolleTray4x43plateMaterialList14Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList14Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList14Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList14Url", oldValue, _internal_rolleTray4x43plateMaterialList14Url));
        }
    }

    public function set rolleTray4x41plateMaterialList15Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList15Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList15Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList15Url", oldValue, _internal_rolleTray4x41plateMaterialList15Url));
        }
    }

    public function set rolleTray4x42plateMaterialList14Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList14Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList14Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList14Url", oldValue, _internal_rolleTray4x42plateMaterialList14Url));
        }
    }

    public function set rolleTray4x49plateMaterialList5Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList5Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList5Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList5Url", oldValue, _internal_rolleTray4x49plateMaterialList5Url));
        }
    }

    public function set rolleTray4x41plateMaterialList12Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList12Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList12Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList12Url", oldValue, _internal_rolleTray4x41plateMaterialList12Url));
        }
    }

    public function set rolleTray4x42plateMaterialList16Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList16Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList16Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList16Url", oldValue, _internal_rolleTray4x42plateMaterialList16Url));
        }
    }

    public function set rolleTray4x411plateMaterialList3Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList3Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList3Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList3Url", oldValue, _internal_rolleTray4x411plateMaterialList3Url));
        }
    }

    public function set rolleTray4x410plateMaterialList10Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList10Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList10Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList10Url", oldValue, _internal_rolleTray4x410plateMaterialList10Url));
        }
    }

    public function set rolleTray4x41plateMaterialList1Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList1Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList1Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList1Url", oldValue, _internal_rolleTray4x41plateMaterialList1Url));
        }
    }

    public function set rolleTray4x46plateMaterialList15Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList15Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList15Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList15Url", oldValue, _internal_rolleTray4x46plateMaterialList15Url));
        }
    }

    public function set rolleTray4x411plateMaterialList12Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList12Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList12Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList12Url", oldValue, _internal_rolleTray4x411plateMaterialList12Url));
        }
    }

    public function set rolleTray4x44plateMaterialList6Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList6Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList6Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList6Url", oldValue, _internal_rolleTray4x44plateMaterialList6Url));
        }
    }

    public function set rolleTray4x49plateMaterialList10Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList10Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList10Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList10Url", oldValue, _internal_rolleTray4x49plateMaterialList10Url));
        }
    }

    public function set rolleTray4x48plateMaterialList6Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList6Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList6Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList6Url", oldValue, _internal_rolleTray4x48plateMaterialList6Url));
        }
    }

    public function set rolleTray4x411plateMaterialList5Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList5Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList5Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList5Url", oldValue, _internal_rolleTray4x411plateMaterialList5Url));
        }
    }

    public function set rolleRack1javaMaterialname(value:String) : void
    {
        var oldValue:String = _internal_rolleRack1javaMaterialname;
        if (oldValue !== value)
        {
            _internal_rolleRack1javaMaterialname = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleRack1javaMaterialname", oldValue, _internal_rolleRack1javaMaterialname));
        }
    }

    public function set rolleTray4x48plateMaterialList13Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList13Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList13Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList13Url", oldValue, _internal_rolleTray4x48plateMaterialList13Url));
        }
    }

    public function set rolleTray4x49plateMaterialList1Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList1Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList1Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList1Url", oldValue, _internal_rolleTray4x49plateMaterialList1Url));
        }
    }

    public function set rolleTray4x411plateMaterialList6Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList6Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList6Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList6Url", oldValue, _internal_rolleTray4x411plateMaterialList6Url));
        }
    }

    public function set rolleTray4x44plateMaterialList7Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList7Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList7Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList7Url", oldValue, _internal_rolleTray4x44plateMaterialList7Url));
        }
    }

    public function set rolleTray4x410plateMaterialList15Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x410plateMaterialList15Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x410plateMaterialList15Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x410plateMaterialList15Url", oldValue, _internal_rolleTray4x410plateMaterialList15Url));
        }
    }

    public function set rolleTray4x41plateMaterialList6Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList6Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList6Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList6Url", oldValue, _internal_rolleTray4x41plateMaterialList6Url));
        }
    }

    public function set rolleTray4x47plateMaterialList16Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList16Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList16Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList16Url", oldValue, _internal_rolleTray4x47plateMaterialList16Url));
        }
    }

    public function set rolleTray4x46plateMaterialList8Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList8Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList8Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList8Url", oldValue, _internal_rolleTray4x46plateMaterialList8Url));
        }
    }

    public function set rolleTray4x45plateMaterialList1Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList1Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList1Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList1Url", oldValue, _internal_rolleTray4x45plateMaterialList1Url));
        }
    }

    public function set rolleTray4x48plateMaterialList8Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList8Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList8Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList8Url", oldValue, _internal_rolleTray4x48plateMaterialList8Url));
        }
    }

    public function set rolleTray4x411plateMaterialList13Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList13Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList13Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList13Url", oldValue, _internal_rolleTray4x411plateMaterialList13Url));
        }
    }

    public function set rolleTray4x44plateMaterialList2Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList2Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList2Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList2Url", oldValue, _internal_rolleTray4x44plateMaterialList2Url));
        }
    }

    public function set rolleTray4x42plateMaterialList4Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList4Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList4Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList4Url", oldValue, _internal_rolleTray4x42plateMaterialList4Url));
        }
    }

    public function set rolleTray4x411plateMaterialList9Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList9Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList9Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList9Url", oldValue, _internal_rolleTray4x411plateMaterialList9Url));
        }
    }

    public function set rolleTray4x42plateMaterialList5Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList5Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList5Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList5Url", oldValue, _internal_rolleTray4x42plateMaterialList5Url));
        }
    }

    public function set rolleTray4x411plateMaterialList2Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList2Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList2Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList2Url", oldValue, _internal_rolleTray4x411plateMaterialList2Url));
        }
    }

    public function set rolleTray4x43plateMaterialList7Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList7Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList7Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList7Url", oldValue, _internal_rolleTray4x43plateMaterialList7Url));
        }
    }

    public function set rolleTray4x411plateMaterialList15Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList15Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList15Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList15Url", oldValue, _internal_rolleTray4x411plateMaterialList15Url));
        }
    }

    public function set rolleTray4x42plateMaterialList3Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList3Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList3Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList3Url", oldValue, _internal_rolleTray4x42plateMaterialList3Url));
        }
    }

    public function set rolleTray4x47plateMaterialList15Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList15Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList15Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList15Url", oldValue, _internal_rolleTray4x47plateMaterialList15Url));
        }
    }

    public function set rolleTray4x49plateMaterialList13Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList13Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList13Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList13Url", oldValue, _internal_rolleTray4x49plateMaterialList13Url));
        }
    }

    public function set rolleTray4x41plateMaterialList3Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList3Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList3Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList3Url", oldValue, _internal_rolleTray4x41plateMaterialList3Url));
        }
    }

    public function set rolleTray4x49plateMaterialList4Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList4Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList4Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList4Url", oldValue, _internal_rolleTray4x49plateMaterialList4Url));
        }
    }

    public function set rolleTray4x45plateMaterialList10Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList10Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList10Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList10Url", oldValue, _internal_rolleTray4x45plateMaterialList10Url));
        }
    }

    public function set rolleTray4x47plateMaterialList3Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList3Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList3Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList3Url", oldValue, _internal_rolleTray4x47plateMaterialList3Url));
        }
    }

    public function set rolleTray4x44plateMaterialList4Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList4Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList4Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList4Url", oldValue, _internal_rolleTray4x44plateMaterialList4Url));
        }
    }

    public function set rolleTray4x48plateMaterialList3Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList3Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList3Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList3Url", oldValue, _internal_rolleTray4x48plateMaterialList3Url));
        }
    }

    public function set rolleTray4x47plateMaterialList4Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList4Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList4Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList4Url", oldValue, _internal_rolleTray4x47plateMaterialList4Url));
        }
    }

    public function set rolleTray4x45plateMaterialList2Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList2Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList2Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList2Url", oldValue, _internal_rolleTray4x45plateMaterialList2Url));
        }
    }

    public function set rolleTray4x48plateMaterialList9Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList9Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList9Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList9Url", oldValue, _internal_rolleTray4x48plateMaterialList9Url));
        }
    }

    public function set rolleTray4x47plateMaterialList13Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList13Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList13Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList13Url", oldValue, _internal_rolleTray4x47plateMaterialList13Url));
        }
    }

    public function set rolleTray4x41plateMaterialList5Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList5Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList5Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList5Url", oldValue, _internal_rolleTray4x41plateMaterialList5Url));
        }
    }

    public function set rolleTray4x46plateMaterialList10Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList10Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList10Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList10Url", oldValue, _internal_rolleTray4x46plateMaterialList10Url));
        }
    }

    public function set rolleTray4x47plateMaterialList2Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList2Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList2Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList2Url", oldValue, _internal_rolleTray4x47plateMaterialList2Url));
        }
    }

    public function set rolleTray4x43plateMaterialList10Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList10Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList10Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList10Url", oldValue, _internal_rolleTray4x43plateMaterialList10Url));
        }
    }

    public function set rolleTray4x49plateMaterialList8Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList8Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList8Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList8Url", oldValue, _internal_rolleTray4x49plateMaterialList8Url));
        }
    }

    public function set rolleTray4x45plateMaterialList13Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x45plateMaterialList13Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x45plateMaterialList13Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x45plateMaterialList13Url", oldValue, _internal_rolleTray4x45plateMaterialList13Url));
        }
    }

    public function set rolleTray4x44plateMaterialList16Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList16Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList16Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList16Url", oldValue, _internal_rolleTray4x44plateMaterialList16Url));
        }
    }

    public function set rolleTray4x41plateMaterialList16Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList16Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList16Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList16Url", oldValue, _internal_rolleTray4x41plateMaterialList16Url));
        }
    }

    public function set rolleTray4x46plateMaterialList4Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList4Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList4Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList4Url", oldValue, _internal_rolleTray4x46plateMaterialList4Url));
        }
    }

    public function set rolleTray4x44plateMaterialList11Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList11Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList11Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList11Url", oldValue, _internal_rolleTray4x44plateMaterialList11Url));
        }
    }

    public function set rolleTray4x46plateMaterialList14Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList14Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList14Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList14Url", oldValue, _internal_rolleTray4x46plateMaterialList14Url));
        }
    }

    public function set rolleTray4x48plateMaterialList2Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList2Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList2Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList2Url", oldValue, _internal_rolleTray4x48plateMaterialList2Url));
        }
    }

    public function set rolleTray4x44plateMaterialList1Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList1Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList1Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList1Url", oldValue, _internal_rolleTray4x44plateMaterialList1Url));
        }
    }

    public function set rolleTray4x43plateMaterialList2Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList2Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList2Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList2Url", oldValue, _internal_rolleTray4x43plateMaterialList2Url));
        }
    }

    public function set rolleTray4x48plateMaterialList5Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x48plateMaterialList5Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x48plateMaterialList5Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x48plateMaterialList5Url", oldValue, _internal_rolleTray4x48plateMaterialList5Url));
        }
    }

    public function set rolleTray4x44plateMaterialList12Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList12Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList12Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList12Url", oldValue, _internal_rolleTray4x44plateMaterialList12Url));
        }
    }

    public function set rolleTray4x42plateMaterialList7Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x42plateMaterialList7Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x42plateMaterialList7Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x42plateMaterialList7Url", oldValue, _internal_rolleTray4x42plateMaterialList7Url));
        }
    }

    public function set rolleTray4x411plateMaterialList11Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x411plateMaterialList11Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x411plateMaterialList11Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x411plateMaterialList11Url", oldValue, _internal_rolleTray4x411plateMaterialList11Url));
        }
    }

    public function set rolleTray4x49plateMaterialList15Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList15Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList15Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList15Url", oldValue, _internal_rolleTray4x49plateMaterialList15Url));
        }
    }

    public function set rolleTray4x43plateMaterialList3Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList3Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList3Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList3Url", oldValue, _internal_rolleTray4x43plateMaterialList3Url));
        }
    }

    public function set rolleTray4x49plateMaterialList7Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x49plateMaterialList7Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x49plateMaterialList7Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x49plateMaterialList7Url", oldValue, _internal_rolleTray4x49plateMaterialList7Url));
        }
    }

    public function set rolleTray4x41plateMaterialList7Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x41plateMaterialList7Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x41plateMaterialList7Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x41plateMaterialList7Url", oldValue, _internal_rolleTray4x41plateMaterialList7Url));
        }
    }

    public function set rolleTray4x43plateMaterialList15Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList15Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList15Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList15Url", oldValue, _internal_rolleTray4x43plateMaterialList15Url));
        }
    }

    public function set rolleTray4x43plateMaterialList1Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x43plateMaterialList1Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x43plateMaterialList1Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x43plateMaterialList1Url", oldValue, _internal_rolleTray4x43plateMaterialList1Url));
        }
    }

    public function set rolleTray4x47plateMaterialList11Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x47plateMaterialList11Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x47plateMaterialList11Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x47plateMaterialList11Url", oldValue, _internal_rolleTray4x47plateMaterialList11Url));
        }
    }

    public function set rolleTray4x46plateMaterialList13Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x46plateMaterialList13Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x46plateMaterialList13Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x46plateMaterialList13Url", oldValue, _internal_rolleTray4x46plateMaterialList13Url));
        }
    }

    public function set rolleTray4x44plateMaterialList8Url(value:String) : void
    {
        var oldValue:String = _internal_rolleTray4x44plateMaterialList8Url;
        if (oldValue !== value)
        {
            _internal_rolleTray4x44plateMaterialList8Url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rolleTray4x44plateMaterialList8Url", oldValue, _internal_rolleTray4x44plateMaterialList8Url));
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
    public function get _model() : _RolleRack1javaMaterialEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _RolleRack1javaMaterialEntityMetadata) : void
    {
        var oldValue : _RolleRack1javaMaterialEntityMetadata = model_internal::_dminternal_model;
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
