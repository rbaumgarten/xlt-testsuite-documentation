<#import "layout/defaultLayout.ftl" as myLayout />

<#function avgPackageSize seq>
<#local c = 0 />
<#if seq?has_content>
<#list seq as item>
  <#local c = c + item.size() />
</#list>
<#local c = c / seq?size />
</#if>
<#return c />
</#function>

<#function avgStepSize seq>
<#local c = 0 />
<#if seq?has_content>
<#list seq as item>
  <#local c = c + item.steps?size />
</#list>
<#local c = c / seq?size />
</#if>
<#return c />
</#function>

<#macro makeCard cardTitle="" cardContent="">
  <div class="col s12 m6 l3">
    <div class="card blue accent-3">
      <div class="card-content white-text center">
        <span class="card-title">${cardTitle}</span>
        <p>${cardContent}</p>
      </div><!-- /.card-content -->
    </div><!-- /.card -->
  </div><!-- /.col -->
</#macro>

<@myLayout.layout pageId="general">
  <div class="section" id="general">
    <div class="section-title">
      <h1>General Information</h1>
    </div><!-- /.section-title -->
    <div class="section-content">
      <div class="suite-name grey lighten-3 z-depth-1">${suite.name}</div>

      <div id="statistics" class="row">
        <@makeCard suite.tests?size "Testcase Scripts" />
        <@makeCard suite.modules?size "Script Modules" />
        <@makeCard suite.javaModules?size "Java Modules" />
        <@makeCard suite.packages?size "Script Packages" />
        <@makeCard avgPackageSize(suite.packages?values)?round "Scripts per Package" />
        <@makeCard avgStepSize(suite.tests)?round "Steps per Test" />
      </div><!-- /.row -->
    </div><!-- /.section-content -->
  </div><!-- /.section -->
    
</@myLayout.layout>
