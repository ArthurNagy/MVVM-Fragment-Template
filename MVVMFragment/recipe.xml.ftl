<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>

    <instantiate from="root/res/layout/mvvm_fragment.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    <instantiate from="root/src/app_package/MvvmFragment.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/${className}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/MvvmViewModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewModelName}.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/${viewModelName}.${ktOrJavaExt}" />

</recipe>
