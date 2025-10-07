
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
internal class _RolleRack1javaMaterialEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("rolleTray4x43plateMaterialList4Url", "rolleTray4x47plateMaterialList6Url", "rolleTray4x42plateMaterialList1Url", "rolleTray4x46plateMaterialList2Url", "rolleTray4x45plateMaterialList12Url", "rolleTray4x43plateMaterialList13Url", "rolleTray4x48plateMaterialList12Url", "rolleTray4x410plateMaterialList9Url", "rolleTray4x410plateMaterialList16Url", "rolleTray4x42plateMaterialList12Url", "rolleTray4x41plateMaterialList2Url", "rolleTray4x47plateMaterialList12Url", "rolleTray4x45plateMaterialList4Url", "rolleTray4x49plateMaterialList3Url", "rolleTray4x45plateMaterialList9Url", "rolleTray4x45plateMaterialList7Url", "rolleTray4x48plateMaterialList7Url", "rolleTray4x48plateMaterialList14Url", "rolleTray4x411plateMaterialList16Url", "rolleTray4x45plateMaterialList5Url", "rolleTray4x42plateMaterialList8Url", "rolleTray4x410plateMaterialList14Url", "rolleTray4x46plateMaterialList11Url", "rolleTray4x410plateMaterialList5Url", "rolleTray4x47plateMaterialList10Url", "panelcubesMaterialListUrl", "rolleTray4x410plateMaterialList3Url", "rolleTray4x411plateMaterialList1Url", "rolleTray4x49plateMaterialList11Url", "rolleTray4x44plateMaterialList9Url", "rolleTray4x44plateMaterialList15Url", "rolleTray4x42plateMaterialList6Url", "rolleTray4x43plateMaterialList9Url", "rolleTray4x410plateMaterialList12Url", "rolleTray4x41plateMaterialList13Url", "rolleTray4x410plateMaterialList7Url", "rolleTray4x45plateMaterialList16Url", "rolleTray4x410plateMaterialList8Url", "rolleTray4x48plateMaterialList10Url", "rolleTray4x411plateMaterialList10Url", "rolleTray4x42plateMaterialList13Url", "rolleTray4x46plateMaterialList3Url", "rolleTray4x46plateMaterialList7Url", "rolleTray4x44plateMaterialList14Url", "rolleTray4x43plateMaterialList5Url", "rolleTray4x45plateMaterialList14Url", "rolleTray4x42plateMaterialList2Url", "rolleTray4x410plateMaterialList1Url", "rolleTray4x45plateMaterialList6Url", "rolleTray4x47plateMaterialList14Url", "rolleTray4x44plateMaterialList10Url", "rolleTray4x411plateMaterialList14Url", "rolleTray4x44plateMaterialList5Url", "rolleTray4x42plateMaterialList11Url", "rolleTray4x43plateMaterialList8Url", "rolleTray4x410plateMaterialList2Url", "rolleTray4x43plateMaterialList12Url", "rolleTray4x41plateMaterialList8Url", "rolleTray4x43plateMaterialList16Url", "rolleTray4x411plateMaterialList4Url", "rolleTray4x46plateMaterialList6Url", "rolleTray4x46plateMaterialList12Url", "rolleTray4x41plateMaterialList11Url", "rolleTray4x48plateMaterialList15Url", "rolleTray4x48plateMaterialList4Url", "rolleTray4x47plateMaterialList9Url", "rolleRack1javaMaterialId", "hangerBar1BitmapFileMaterialUrl", "rolleTray4x49plateMaterialList2Url", "rolleTray4x410plateMaterialList4Url", "rolleTray4x46plateMaterialList16Url", "rolleTray4x41plateMaterialList4Url", "rolleTray4x48plateMaterialList16Url", "rolleTray4x410plateMaterialList6Url", "rolleTray4x49plateMaterialList9Url", "rolleTray4x45plateMaterialList3Url", "rolleTray4x45plateMaterialList8Url", "rolleTray4x42plateMaterialList10Url", "rolleTray4x42plateMaterialList9Url", "rolleTray4x45plateMaterialList15Url", "rolleTray4x49plateMaterialList16Url", "hangerBar2BitmapFileMaterialUrl", "rolleTray4x45plateMaterialList11Url", "rolleTray4x47plateMaterialList5Url", "rolleTray4x46plateMaterialList1Url", "rolleTray4x43plateMaterialList6Url", "rolleTray4x48plateMaterialList1Url", "rolleTray4x47plateMaterialList8Url", "rolleTray4x49plateMaterialList6Url", "rolleTray4x43plateMaterialList11Url", "rolleTray4x41plateMaterialList9Url", "rolleTray4x46plateMaterialList9Url", "rolleTray4x47plateMaterialList7Url", "rolleTray4x49plateMaterialList14Url", "rolleTray4x44plateMaterialList13Url", "rolleTray4x41plateMaterialList10Url", "rolleTray4x410plateMaterialList13Url", "rolleTray4x49plateMaterialList12Url", "rolleTray4x410plateMaterialList11Url", "rolleTray4x44plateMaterialList3Url", "status", "footcubesMaterialListUrl", "rolleTray4x411plateMaterialList7Url", "rolleTray4x46plateMaterialList5Url", "rolleTray4x41plateMaterialList14Url", "rolleTray4x47plateMaterialList1Url", "rolleTray4x411plateMaterialList8Url", "rolleTray4x48plateMaterialList11Url", "rolleTray4x42plateMaterialList15Url", "rolleTray4x43plateMaterialList14Url", "rolleTray4x41plateMaterialList15Url", "rolleTray4x42plateMaterialList14Url", "rolleTray4x49plateMaterialList5Url", "rolleTray4x41plateMaterialList12Url", "rolleTray4x42plateMaterialList16Url", "rolleTray4x411plateMaterialList3Url", "rolleTray4x410plateMaterialList10Url", "rolleTray4x41plateMaterialList1Url", "rolleTray4x46plateMaterialList15Url", "rolleTray4x411plateMaterialList12Url", "rolleTray4x44plateMaterialList6Url", "rolleTray4x49plateMaterialList10Url", "rolleTray4x48plateMaterialList6Url", "rolleTray4x411plateMaterialList5Url", "rolleRack1javaMaterialname", "rolleTray4x48plateMaterialList13Url", "rolleTray4x49plateMaterialList1Url", "rolleTray4x411plateMaterialList6Url", "rolleTray4x44plateMaterialList7Url", "rolleTray4x410plateMaterialList15Url", "rolleTray4x41plateMaterialList6Url", "rolleTray4x47plateMaterialList16Url", "rolleTray4x46plateMaterialList8Url", "rolleTray4x45plateMaterialList1Url", "rolleTray4x48plateMaterialList8Url", "rolleTray4x411plateMaterialList13Url", "rolleTray4x44plateMaterialList2Url", "rolleTray4x42plateMaterialList4Url", "rolleTray4x411plateMaterialList9Url", "rolleTray4x42plateMaterialList5Url", "rolleTray4x411plateMaterialList2Url", "rolleTray4x43plateMaterialList7Url", "rolleTray4x411plateMaterialList15Url", "rolleTray4x42plateMaterialList3Url", "rolleTray4x47plateMaterialList15Url", "rolleTray4x49plateMaterialList13Url", "rolleTray4x41plateMaterialList3Url", "rolleTray4x49plateMaterialList4Url", "rolleTray4x45plateMaterialList10Url", "rolleTray4x47plateMaterialList3Url", "rolleTray4x44plateMaterialList4Url", "rolleTray4x48plateMaterialList3Url", "rolleTray4x47plateMaterialList4Url", "rolleTray4x45plateMaterialList2Url", "rolleTray4x48plateMaterialList9Url", "rolleTray4x47plateMaterialList13Url", "rolleTray4x41plateMaterialList5Url", "rolleTray4x46plateMaterialList10Url", "rolleTray4x47plateMaterialList2Url", "rolleTray4x43plateMaterialList10Url", "rolleTray4x49plateMaterialList8Url", "rolleTray4x45plateMaterialList13Url", "rolleTray4x44plateMaterialList16Url", "rolleTray4x41plateMaterialList16Url", "rolleTray4x46plateMaterialList4Url", "rolleTray4x44plateMaterialList11Url", "rolleTray4x46plateMaterialList14Url", "rolleTray4x48plateMaterialList2Url", "rolleTray4x44plateMaterialList1Url", "rolleTray4x43plateMaterialList2Url", "rolleTray4x48plateMaterialList5Url", "rolleTray4x44plateMaterialList12Url", "rolleTray4x42plateMaterialList7Url", "rolleTray4x411plateMaterialList11Url", "rolleTray4x49plateMaterialList15Url", "rolleTray4x43plateMaterialList3Url", "rolleTray4x49plateMaterialList7Url", "rolleTray4x41plateMaterialList7Url", "rolleTray4x43plateMaterialList15Url", "rolleTray4x43plateMaterialList1Url", "rolleTray4x47plateMaterialList11Url", "rolleTray4x46plateMaterialList13Url", "rolleTray4x44plateMaterialList8Url");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array();
    model_internal static var allAlwaysAvailableProperties:Array = new Array("rolleTray4x43plateMaterialList4Url", "rolleTray4x47plateMaterialList6Url", "rolleTray4x42plateMaterialList1Url", "rolleTray4x46plateMaterialList2Url", "rolleTray4x45plateMaterialList12Url", "rolleTray4x43plateMaterialList13Url", "rolleTray4x48plateMaterialList12Url", "rolleTray4x410plateMaterialList9Url", "rolleTray4x410plateMaterialList16Url", "rolleTray4x42plateMaterialList12Url", "rolleTray4x41plateMaterialList2Url", "rolleTray4x47plateMaterialList12Url", "rolleTray4x45plateMaterialList4Url", "rolleTray4x49plateMaterialList3Url", "rolleTray4x45plateMaterialList9Url", "rolleTray4x45plateMaterialList7Url", "rolleTray4x48plateMaterialList7Url", "rolleTray4x48plateMaterialList14Url", "rolleTray4x411plateMaterialList16Url", "rolleTray4x45plateMaterialList5Url", "rolleTray4x42plateMaterialList8Url", "rolleTray4x410plateMaterialList14Url", "rolleTray4x46plateMaterialList11Url", "rolleTray4x410plateMaterialList5Url", "rolleTray4x47plateMaterialList10Url", "panelcubesMaterialListUrl", "rolleTray4x410plateMaterialList3Url", "rolleTray4x411plateMaterialList1Url", "rolleTray4x49plateMaterialList11Url", "rolleTray4x44plateMaterialList9Url", "rolleTray4x44plateMaterialList15Url", "rolleTray4x42plateMaterialList6Url", "rolleTray4x43plateMaterialList9Url", "rolleTray4x410plateMaterialList12Url", "rolleTray4x41plateMaterialList13Url", "rolleTray4x410plateMaterialList7Url", "rolleTray4x45plateMaterialList16Url", "rolleTray4x410plateMaterialList8Url", "rolleTray4x48plateMaterialList10Url", "rolleTray4x411plateMaterialList10Url", "rolleTray4x42plateMaterialList13Url", "rolleTray4x46plateMaterialList3Url", "rolleTray4x46plateMaterialList7Url", "rolleTray4x44plateMaterialList14Url", "rolleTray4x43plateMaterialList5Url", "rolleTray4x45plateMaterialList14Url", "rolleTray4x42plateMaterialList2Url", "rolleTray4x410plateMaterialList1Url", "rolleTray4x45plateMaterialList6Url", "rolleTray4x47plateMaterialList14Url", "rolleTray4x44plateMaterialList10Url", "rolleTray4x411plateMaterialList14Url", "rolleTray4x44plateMaterialList5Url", "rolleTray4x42plateMaterialList11Url", "rolleTray4x43plateMaterialList8Url", "rolleTray4x410plateMaterialList2Url", "rolleTray4x43plateMaterialList12Url", "rolleTray4x41plateMaterialList8Url", "rolleTray4x43plateMaterialList16Url", "rolleTray4x411plateMaterialList4Url", "rolleTray4x46plateMaterialList6Url", "rolleTray4x46plateMaterialList12Url", "rolleTray4x41plateMaterialList11Url", "rolleTray4x48plateMaterialList15Url", "rolleTray4x48plateMaterialList4Url", "rolleTray4x47plateMaterialList9Url", "rolleRack1javaMaterialId", "hangerBar1BitmapFileMaterialUrl", "rolleTray4x49plateMaterialList2Url", "rolleTray4x410plateMaterialList4Url", "rolleTray4x46plateMaterialList16Url", "rolleTray4x41plateMaterialList4Url", "rolleTray4x48plateMaterialList16Url", "rolleTray4x410plateMaterialList6Url", "rolleTray4x49plateMaterialList9Url", "rolleTray4x45plateMaterialList3Url", "rolleTray4x45plateMaterialList8Url", "rolleTray4x42plateMaterialList10Url", "rolleTray4x42plateMaterialList9Url", "rolleTray4x45plateMaterialList15Url", "rolleTray4x49plateMaterialList16Url", "hangerBar2BitmapFileMaterialUrl", "rolleTray4x45plateMaterialList11Url", "rolleTray4x47plateMaterialList5Url", "rolleTray4x46plateMaterialList1Url", "rolleTray4x43plateMaterialList6Url", "rolleTray4x48plateMaterialList1Url", "rolleTray4x47plateMaterialList8Url", "rolleTray4x49plateMaterialList6Url", "rolleTray4x43plateMaterialList11Url", "rolleTray4x41plateMaterialList9Url", "rolleTray4x46plateMaterialList9Url", "rolleTray4x47plateMaterialList7Url", "rolleTray4x49plateMaterialList14Url", "rolleTray4x44plateMaterialList13Url", "rolleTray4x41plateMaterialList10Url", "rolleTray4x410plateMaterialList13Url", "rolleTray4x49plateMaterialList12Url", "rolleTray4x410plateMaterialList11Url", "rolleTray4x44plateMaterialList3Url", "status", "footcubesMaterialListUrl", "rolleTray4x411plateMaterialList7Url", "rolleTray4x46plateMaterialList5Url", "rolleTray4x41plateMaterialList14Url", "rolleTray4x47plateMaterialList1Url", "rolleTray4x411plateMaterialList8Url", "rolleTray4x48plateMaterialList11Url", "rolleTray4x42plateMaterialList15Url", "rolleTray4x43plateMaterialList14Url", "rolleTray4x41plateMaterialList15Url", "rolleTray4x42plateMaterialList14Url", "rolleTray4x49plateMaterialList5Url", "rolleTray4x41plateMaterialList12Url", "rolleTray4x42plateMaterialList16Url", "rolleTray4x411plateMaterialList3Url", "rolleTray4x410plateMaterialList10Url", "rolleTray4x41plateMaterialList1Url", "rolleTray4x46plateMaterialList15Url", "rolleTray4x411plateMaterialList12Url", "rolleTray4x44plateMaterialList6Url", "rolleTray4x49plateMaterialList10Url", "rolleTray4x48plateMaterialList6Url", "rolleTray4x411plateMaterialList5Url", "rolleRack1javaMaterialname", "rolleTray4x48plateMaterialList13Url", "rolleTray4x49plateMaterialList1Url", "rolleTray4x411plateMaterialList6Url", "rolleTray4x44plateMaterialList7Url", "rolleTray4x410plateMaterialList15Url", "rolleTray4x41plateMaterialList6Url", "rolleTray4x47plateMaterialList16Url", "rolleTray4x46plateMaterialList8Url", "rolleTray4x45plateMaterialList1Url", "rolleTray4x48plateMaterialList8Url", "rolleTray4x411plateMaterialList13Url", "rolleTray4x44plateMaterialList2Url", "rolleTray4x42plateMaterialList4Url", "rolleTray4x411plateMaterialList9Url", "rolleTray4x42plateMaterialList5Url", "rolleTray4x411plateMaterialList2Url", "rolleTray4x43plateMaterialList7Url", "rolleTray4x411plateMaterialList15Url", "rolleTray4x42plateMaterialList3Url", "rolleTray4x47plateMaterialList15Url", "rolleTray4x49plateMaterialList13Url", "rolleTray4x41plateMaterialList3Url", "rolleTray4x49plateMaterialList4Url", "rolleTray4x45plateMaterialList10Url", "rolleTray4x47plateMaterialList3Url", "rolleTray4x44plateMaterialList4Url", "rolleTray4x48plateMaterialList3Url", "rolleTray4x47plateMaterialList4Url", "rolleTray4x45plateMaterialList2Url", "rolleTray4x48plateMaterialList9Url", "rolleTray4x47plateMaterialList13Url", "rolleTray4x41plateMaterialList5Url", "rolleTray4x46plateMaterialList10Url", "rolleTray4x47plateMaterialList2Url", "rolleTray4x43plateMaterialList10Url", "rolleTray4x49plateMaterialList8Url", "rolleTray4x45plateMaterialList13Url", "rolleTray4x44plateMaterialList16Url", "rolleTray4x41plateMaterialList16Url", "rolleTray4x46plateMaterialList4Url", "rolleTray4x44plateMaterialList11Url", "rolleTray4x46plateMaterialList14Url", "rolleTray4x48plateMaterialList2Url", "rolleTray4x44plateMaterialList1Url", "rolleTray4x43plateMaterialList2Url", "rolleTray4x48plateMaterialList5Url", "rolleTray4x44plateMaterialList12Url", "rolleTray4x42plateMaterialList7Url", "rolleTray4x411plateMaterialList11Url", "rolleTray4x49plateMaterialList15Url", "rolleTray4x43plateMaterialList3Url", "rolleTray4x49plateMaterialList7Url", "rolleTray4x41plateMaterialList7Url", "rolleTray4x43plateMaterialList15Url", "rolleTray4x43plateMaterialList1Url", "rolleTray4x47plateMaterialList11Url", "rolleTray4x46plateMaterialList13Url", "rolleTray4x44plateMaterialList8Url");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("rolleTray4x43plateMaterialList4Url", "rolleTray4x47plateMaterialList6Url", "rolleTray4x42plateMaterialList1Url", "rolleTray4x46plateMaterialList2Url", "rolleTray4x45plateMaterialList12Url", "rolleTray4x43plateMaterialList13Url", "rolleTray4x48plateMaterialList12Url", "rolleTray4x410plateMaterialList9Url", "rolleTray4x410plateMaterialList16Url", "rolleTray4x42plateMaterialList12Url", "rolleTray4x41plateMaterialList2Url", "rolleTray4x47plateMaterialList12Url", "rolleTray4x45plateMaterialList4Url", "rolleTray4x49plateMaterialList3Url", "rolleTray4x45plateMaterialList9Url", "rolleTray4x45plateMaterialList7Url", "rolleTray4x48plateMaterialList7Url", "rolleTray4x48plateMaterialList14Url", "rolleTray4x411plateMaterialList16Url", "rolleTray4x45plateMaterialList5Url", "rolleTray4x42plateMaterialList8Url", "rolleTray4x410plateMaterialList14Url", "rolleTray4x46plateMaterialList11Url", "rolleTray4x410plateMaterialList5Url", "rolleTray4x47plateMaterialList10Url", "panelcubesMaterialListUrl", "rolleTray4x410plateMaterialList3Url", "rolleTray4x411plateMaterialList1Url", "rolleTray4x49plateMaterialList11Url", "rolleTray4x44plateMaterialList9Url", "rolleTray4x44plateMaterialList15Url", "rolleTray4x42plateMaterialList6Url", "rolleTray4x43plateMaterialList9Url", "rolleTray4x410plateMaterialList12Url", "rolleTray4x41plateMaterialList13Url", "rolleTray4x410plateMaterialList7Url", "rolleTray4x45plateMaterialList16Url", "rolleTray4x410plateMaterialList8Url", "rolleTray4x48plateMaterialList10Url", "rolleTray4x411plateMaterialList10Url", "rolleTray4x42plateMaterialList13Url", "rolleTray4x46plateMaterialList3Url", "rolleTray4x46plateMaterialList7Url", "rolleTray4x44plateMaterialList14Url", "rolleTray4x43plateMaterialList5Url", "rolleTray4x45plateMaterialList14Url", "rolleTray4x42plateMaterialList2Url", "rolleTray4x410plateMaterialList1Url", "rolleTray4x45plateMaterialList6Url", "rolleTray4x47plateMaterialList14Url", "rolleTray4x44plateMaterialList10Url", "rolleTray4x411plateMaterialList14Url", "rolleTray4x44plateMaterialList5Url", "rolleTray4x42plateMaterialList11Url", "rolleTray4x43plateMaterialList8Url", "rolleTray4x410plateMaterialList2Url", "rolleTray4x43plateMaterialList12Url", "rolleTray4x41plateMaterialList8Url", "rolleTray4x43plateMaterialList16Url", "rolleTray4x411plateMaterialList4Url", "rolleTray4x46plateMaterialList6Url", "rolleTray4x46plateMaterialList12Url", "rolleTray4x41plateMaterialList11Url", "rolleTray4x48plateMaterialList15Url", "rolleTray4x48plateMaterialList4Url", "rolleTray4x47plateMaterialList9Url", "rolleRack1javaMaterialId", "hangerBar1BitmapFileMaterialUrl", "rolleTray4x49plateMaterialList2Url", "rolleTray4x410plateMaterialList4Url", "rolleTray4x46plateMaterialList16Url", "rolleTray4x41plateMaterialList4Url", "rolleTray4x48plateMaterialList16Url", "rolleTray4x410plateMaterialList6Url", "rolleTray4x49plateMaterialList9Url", "rolleTray4x45plateMaterialList3Url", "rolleTray4x45plateMaterialList8Url", "rolleTray4x42plateMaterialList10Url", "rolleTray4x42plateMaterialList9Url", "rolleTray4x45plateMaterialList15Url", "rolleTray4x49plateMaterialList16Url", "hangerBar2BitmapFileMaterialUrl", "rolleTray4x45plateMaterialList11Url", "rolleTray4x47plateMaterialList5Url", "rolleTray4x46plateMaterialList1Url", "rolleTray4x43plateMaterialList6Url", "rolleTray4x48plateMaterialList1Url", "rolleTray4x47plateMaterialList8Url", "rolleTray4x49plateMaterialList6Url", "rolleTray4x43plateMaterialList11Url", "rolleTray4x41plateMaterialList9Url", "rolleTray4x46plateMaterialList9Url", "rolleTray4x47plateMaterialList7Url", "rolleTray4x49plateMaterialList14Url", "rolleTray4x44plateMaterialList13Url", "rolleTray4x41plateMaterialList10Url", "rolleTray4x410plateMaterialList13Url", "rolleTray4x49plateMaterialList12Url", "rolleTray4x410plateMaterialList11Url", "rolleTray4x44plateMaterialList3Url", "status", "footcubesMaterialListUrl", "rolleTray4x411plateMaterialList7Url", "rolleTray4x46plateMaterialList5Url", "rolleTray4x41plateMaterialList14Url", "rolleTray4x47plateMaterialList1Url", "rolleTray4x411plateMaterialList8Url", "rolleTray4x48plateMaterialList11Url", "rolleTray4x42plateMaterialList15Url", "rolleTray4x43plateMaterialList14Url", "rolleTray4x41plateMaterialList15Url", "rolleTray4x42plateMaterialList14Url", "rolleTray4x49plateMaterialList5Url", "rolleTray4x41plateMaterialList12Url", "rolleTray4x42plateMaterialList16Url", "rolleTray4x411plateMaterialList3Url", "rolleTray4x410plateMaterialList10Url", "rolleTray4x41plateMaterialList1Url", "rolleTray4x46plateMaterialList15Url", "rolleTray4x411plateMaterialList12Url", "rolleTray4x44plateMaterialList6Url", "rolleTray4x49plateMaterialList10Url", "rolleTray4x48plateMaterialList6Url", "rolleTray4x411plateMaterialList5Url", "rolleRack1javaMaterialname", "rolleTray4x48plateMaterialList13Url", "rolleTray4x49plateMaterialList1Url", "rolleTray4x411plateMaterialList6Url", "rolleTray4x44plateMaterialList7Url", "rolleTray4x410plateMaterialList15Url", "rolleTray4x41plateMaterialList6Url", "rolleTray4x47plateMaterialList16Url", "rolleTray4x46plateMaterialList8Url", "rolleTray4x45plateMaterialList1Url", "rolleTray4x48plateMaterialList8Url", "rolleTray4x411plateMaterialList13Url", "rolleTray4x44plateMaterialList2Url", "rolleTray4x42plateMaterialList4Url", "rolleTray4x411plateMaterialList9Url", "rolleTray4x42plateMaterialList5Url", "rolleTray4x411plateMaterialList2Url", "rolleTray4x43plateMaterialList7Url", "rolleTray4x411plateMaterialList15Url", "rolleTray4x42plateMaterialList3Url", "rolleTray4x47plateMaterialList15Url", "rolleTray4x49plateMaterialList13Url", "rolleTray4x41plateMaterialList3Url", "rolleTray4x49plateMaterialList4Url", "rolleTray4x45plateMaterialList10Url", "rolleTray4x47plateMaterialList3Url", "rolleTray4x44plateMaterialList4Url", "rolleTray4x48plateMaterialList3Url", "rolleTray4x47plateMaterialList4Url", "rolleTray4x45plateMaterialList2Url", "rolleTray4x48plateMaterialList9Url", "rolleTray4x47plateMaterialList13Url", "rolleTray4x41plateMaterialList5Url", "rolleTray4x46plateMaterialList10Url", "rolleTray4x47plateMaterialList2Url", "rolleTray4x43plateMaterialList10Url", "rolleTray4x49plateMaterialList8Url", "rolleTray4x45plateMaterialList13Url", "rolleTray4x44plateMaterialList16Url", "rolleTray4x41plateMaterialList16Url", "rolleTray4x46plateMaterialList4Url", "rolleTray4x44plateMaterialList11Url", "rolleTray4x46plateMaterialList14Url", "rolleTray4x48plateMaterialList2Url", "rolleTray4x44plateMaterialList1Url", "rolleTray4x43plateMaterialList2Url", "rolleTray4x48plateMaterialList5Url", "rolleTray4x44plateMaterialList12Url", "rolleTray4x42plateMaterialList7Url", "rolleTray4x411plateMaterialList11Url", "rolleTray4x49plateMaterialList15Url", "rolleTray4x43plateMaterialList3Url", "rolleTray4x49plateMaterialList7Url", "rolleTray4x41plateMaterialList7Url", "rolleTray4x43plateMaterialList15Url", "rolleTray4x43plateMaterialList1Url", "rolleTray4x47plateMaterialList11Url", "rolleTray4x46plateMaterialList13Url", "rolleTray4x44plateMaterialList8Url");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "RolleRack1javaMaterial";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();


    model_internal var _instance:_Super_RolleRack1javaMaterial;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _RolleRack1javaMaterialEntityMetadata(value : _Super_RolleRack1javaMaterial)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList4Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList6Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList1Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList2Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList12Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList13Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList12Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList9Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList16Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList12Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList2Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList12Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList4Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList3Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList9Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList7Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList7Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList14Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList16Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList5Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList8Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList14Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList11Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList5Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList10Url"] = new Array();
            model_internal::dependentsOnMap["panelcubesMaterialListUrl"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList3Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList1Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList11Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList9Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList15Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList6Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList9Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList12Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList13Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList7Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList16Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList8Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList10Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList10Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList13Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList3Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList7Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList14Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList5Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList14Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList2Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList1Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList6Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList14Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList10Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList14Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList5Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList11Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList8Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList2Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList12Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList8Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList16Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList4Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList6Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList12Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList11Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList15Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList4Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList9Url"] = new Array();
            model_internal::dependentsOnMap["rolleRack1javaMaterialId"] = new Array();
            model_internal::dependentsOnMap["hangerBar1BitmapFileMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList2Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList4Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList16Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList4Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList16Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList6Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList9Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList3Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList8Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList10Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList9Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList15Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList16Url"] = new Array();
            model_internal::dependentsOnMap["hangerBar2BitmapFileMaterialUrl"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList11Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList5Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList1Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList6Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList1Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList8Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList6Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList11Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList9Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList9Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList7Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList14Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList13Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList10Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList13Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList12Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList11Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList3Url"] = new Array();
            model_internal::dependentsOnMap["status"] = new Array();
            model_internal::dependentsOnMap["footcubesMaterialListUrl"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList7Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList5Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList14Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList1Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList8Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList11Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList15Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList14Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList15Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList14Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList5Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList12Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList16Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList3Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList10Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList1Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList15Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList12Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList6Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList10Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList6Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList5Url"] = new Array();
            model_internal::dependentsOnMap["rolleRack1javaMaterialname"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList13Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList1Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList6Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList7Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x410plateMaterialList15Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList6Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList16Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList8Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList1Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList8Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList13Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList2Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList4Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList9Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList5Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList2Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList7Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList15Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList3Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList15Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList13Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList3Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList4Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList10Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList3Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList4Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList3Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList4Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList2Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList9Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList13Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList5Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList10Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList2Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList10Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList8Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x45plateMaterialList13Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList16Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList16Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList4Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList11Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList14Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList2Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList1Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList2Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x48plateMaterialList5Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList12Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x42plateMaterialList7Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x411plateMaterialList11Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList15Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList3Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x49plateMaterialList7Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x41plateMaterialList7Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList15Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x43plateMaterialList1Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x47plateMaterialList11Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x46plateMaterialList13Url"] = new Array();
            model_internal::dependentsOnMap["rolleTray4x44plateMaterialList8Url"] = new Array();

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
            throw new Error(propertyName + " is not a data property of entity RolleRack1javaMaterial");  
            
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
            throw new Error(propertyName + " is not a collection property of entity RolleRack1javaMaterial");  

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
            throw new Error(propertyName + " does not exist for entity RolleRack1javaMaterial");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity RolleRack1javaMaterial");
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
            throw new Error(propertyName + " does not exist for entity RolleRack1javaMaterial");
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
    public function get isRolleTray4x43plateMaterialList4UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList6UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList1UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList2UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList12UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList13UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList12UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList9UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList16UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList12UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList2UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList12UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList4UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList3UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList9UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList7UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList7UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList14UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList16UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList5UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList8UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList14UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList11UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList5UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList10UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPanelcubesMaterialListUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList3UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList1UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList11UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList9UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList15UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList6UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList9UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList12UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList13UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList7UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList16UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList8UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList10UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList10UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList13UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList3UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList7UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList14UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList5UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList14UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList2UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList1UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList6UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList14UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList10UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList14UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList5UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList11UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList8UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList2UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList12UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList8UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList16UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList4UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList6UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList12UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList11UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList15UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList4UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList9UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleRack1javaMaterialIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHangerBar1BitmapFileMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList2UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList4UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList16UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList4UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList16UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList6UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList9UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList3UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList8UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList10UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList9UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList15UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList16UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHangerBar2BitmapFileMaterialUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList11UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList5UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList1UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList6UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList1UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList8UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList6UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList11UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList9UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList9UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList7UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList14UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList13UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList10UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList13UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList12UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList11UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList3UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isStatusAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFootcubesMaterialListUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList7UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList5UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList14UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList1UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList8UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList11UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList15UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList14UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList15UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList14UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList5UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList12UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList16UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList3UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList10UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList1UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList15UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList12UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList6UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList10UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList6UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList5UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleRack1javaMaterialnameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList13UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList1UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList6UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList7UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x410plateMaterialList15UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList6UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList16UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList8UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList1UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList8UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList13UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList2UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList4UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList9UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList5UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList2UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList7UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList15UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList3UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList15UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList13UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList3UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList4UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList10UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList3UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList4UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList3UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList4UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList2UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList9UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList13UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList5UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList10UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList2UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList10UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList8UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x45plateMaterialList13UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList16UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList16UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList4UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList11UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList14UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList2UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList1UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList2UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x48plateMaterialList5UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList12UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x42plateMaterialList7UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x411plateMaterialList11UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList15UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList3UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x49plateMaterialList7UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x41plateMaterialList7UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList15UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x43plateMaterialList1UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x47plateMaterialList11UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x46plateMaterialList13UrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRolleTray4x44plateMaterialList8UrlAvailable():Boolean
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
    public function get rolleTray4x43plateMaterialList4UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList6UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList1UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList2UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList12UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList13UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList12UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList9UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList16UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList12UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList2UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList12UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList4UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList3UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList9UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList7UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList7UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList14UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList16UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList5UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList8UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList14UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList11UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList5UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList10UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get panelcubesMaterialListUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList3UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList1UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList11UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList9UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList15UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList6UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList9UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList12UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList13UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList7UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList16UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList8UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList10UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList10UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList13UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList3UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList7UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList14UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList5UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList14UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList2UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList1UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList6UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList14UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList10UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList14UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList5UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList11UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList8UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList2UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList12UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList8UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList16UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList4UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList6UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList12UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList11UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList15UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList4UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList9UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleRack1javaMaterialIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get hangerBar1BitmapFileMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList2UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList4UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList16UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList4UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList16UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList6UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList9UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList3UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList8UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList10UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList9UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList15UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList16UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get hangerBar2BitmapFileMaterialUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList11UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList5UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList1UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList6UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList1UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList8UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList6UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList11UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList9UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList9UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList7UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList14UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList13UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList10UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList13UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList12UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList11UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList3UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get statusStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get footcubesMaterialListUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList7UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList5UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList14UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList1UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList8UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList11UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList15UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList14UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList15UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList14UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList5UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList12UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList16UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList3UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList10UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList1UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList15UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList12UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList6UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList10UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList6UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList5UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleRack1javaMaterialnameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList13UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList1UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList6UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList7UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x410plateMaterialList15UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList6UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList16UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList8UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList1UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList8UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList13UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList2UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList4UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList9UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList5UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList2UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList7UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList15UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList3UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList15UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList13UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList3UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList4UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList10UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList3UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList4UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList3UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList4UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList2UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList9UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList13UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList5UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList10UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList2UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList10UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList8UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x45plateMaterialList13UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList16UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList16UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList4UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList11UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList14UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList2UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList1UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList2UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x48plateMaterialList5UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList12UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x42plateMaterialList7UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x411plateMaterialList11UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList15UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList3UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x49plateMaterialList7UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x41plateMaterialList7UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList15UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x43plateMaterialList1UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x47plateMaterialList11UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x46plateMaterialList13UrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rolleTray4x44plateMaterialList8UrlStyle():com.adobe.fiber.styles.Style
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
