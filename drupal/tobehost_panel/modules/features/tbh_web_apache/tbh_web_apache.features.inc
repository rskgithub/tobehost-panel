<?php
/**
 * @file
 * tbh_web_apache.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function tbh_web_apache_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "field_validation" && $api == "default_field_validation_rules") {
    return array("version" => "2");
  }
}

/**
 * Implements hook_views_api().
 */
function tbh_web_apache_views_api($module = NULL, $api = NULL) {
  return array("api" => "3.0");
}

/**
 * Implements hook_eck_bundle_info().
 */
function tbh_web_apache_eck_bundle_info() {
  $items = array(
    'tbh_services_tbh_web_apache' => array(
      'machine_name' => 'tbh_services_tbh_web_apache',
      'entity_type' => 'tbh_services',
      'name' => 'tbh_web_apache',
      'label' => 'Web (Apache)',
      'config' => array(
        'managed_properties' => array(
          'uid' => 0,
          'created' => 0,
          'changed' => 0,
        ),
      ),
    ),
  );
  return $items;
}
