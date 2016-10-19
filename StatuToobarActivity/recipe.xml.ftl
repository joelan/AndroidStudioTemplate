<?xml version="1.0"?>
<recipe>

   <#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
       <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+" />
    </#if>

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    
   <instantiate from="root/res/layout/statutoobaractivitylayout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
				   
    <instantiate from="root/src/app_package/SimpleStatuToobarActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
