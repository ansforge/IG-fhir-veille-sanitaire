<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile PlanDefinition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:PlanDefinition/f:action</sch:title>
    <sch:rule context="f:PlanDefinition/f:action">
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:id) &gt;= 1">id: minimum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:description) &gt;= 1">description: minimum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:textEquivalent) &gt;= 1">textEquivalent: minimum cardinality of 'textEquivalent' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:trigger) &gt;= 1">trigger: minimum cardinality of 'trigger' is 1</sch:assert>
      <sch:assert test="count(f:relatedAction) &gt;= 1">relatedAction: minimum cardinality of 'relatedAction' is 1</sch:assert>
      <sch:assert test="count(f:relatedAction) &lt;= 1">relatedAction: maximum cardinality of 'relatedAction' is 1</sch:assert>
      <sch:assert test="count(f:id) &gt;= 1">id: minimum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:description) &gt;= 1">description: minimum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:id) &gt;= 1">id: minimum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:relatedAction) &gt;= 1">relatedAction: minimum cardinality of 'relatedAction' is 1</sch:assert>
      <sch:assert test="count(f:relatedAction) &lt;= 1">relatedAction: maximum cardinality of 'relatedAction' is 1</sch:assert>
      <sch:assert test="count(f:id) &gt;= 1">id: minimum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:relatedAction) &gt;= 1">relatedAction: minimum cardinality of 'relatedAction' is 1</sch:assert>
      <sch:assert test="count(f:relatedAction) &lt;= 1">relatedAction: maximum cardinality of 'relatedAction' is 1</sch:assert>
      <sch:assert test="count(f:id) &gt;= 1">id: minimum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:description) &gt;= 1">description: minimum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:textEquivalent) &gt;= 1">textEquivalent: minimum cardinality of 'textEquivalent' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PlanDefinition/f:action/f:trigger</sch:title>
    <sch:rule context="f:PlanDefinition/f:action/f:trigger">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:name) &lt;= 1">name: maximum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:timing[x]) &lt;= 1">timing[x]: maximum cardinality of 'timing[x]' is 1</sch:assert>
      <sch:assert test="count(f:condition) &lt;= 1">condition: maximum cardinality of 'condition' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
