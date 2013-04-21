
<?xml version='1.0'?>
<!DOCTYPE service_bundle SYSTEM '/usr/share/lib/xml/dtd/service_bundle.dtd.1'>
<service_bundle type='manifest' name='export'>
  <service name='smartos/setup' type='service' version='0'>
    <create_default_instance enabled='true'/>
    <single_instance/>
    <dependency name='net-physical' grouping='require_all' restart_on='none' type='service'>
      <service_fmri value='svc:/network/physical'/>
    </dependency>
    <dependency name='filesystem' grouping='require_all' restart_on='none' type='service'>
      <service_fmri value='svc:/system/filesystem/local'/>
    </dependency>
    <exec_method name='start' type='method' exec='/opt/custom/share/svc/base.sh %m' timeout_seconds='0'/>
    <exec_method name='stop' type='method' exec='/opt/custom/share/svc/base.sh %m' timeout_seconds='60'/>
    <property_group name='startd' type='framework'>
      <propval name='duration' type='astring' value='transient'/>
    </property_group>
    <stability value='Unstable'/>
    <template>
      <common_name>
        <loctext xml:lang='C'>SmartOS Baseline Configuration</loctext>
      </common_name>
    </template>
  </service>
</service_bundle>