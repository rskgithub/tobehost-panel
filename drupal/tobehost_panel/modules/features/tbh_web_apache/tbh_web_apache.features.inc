<?php
/**
 * @file
 * tbh_web_apache.features.inc
 */

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
      'config' => array(),
    ),
  );
  return $items;
}