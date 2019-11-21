<!DOCTYPE html>
<html lang="en" data-layout-decorate="~{layouts/home-layout}">
  <#if userManagedComponents?has_content && userManagedComponents["head"]??>
  ${userManagedComponents["head"]}
  <#else>
  <head id="head">

    <title data-th-text="${r"#"}{welcome_label}">Welcome - SpringRoo Application</title>

  </head>
  </#if>

  <#if userManagedComponents?has_content && userManagedComponents["body"]??>
    ${userManagedComponents["body"]}
  <#else>
  <body class="home" id="body">

    <header role="banner">
      <!-- Content replaced by layout of the page displayed -->
    </header>

      <!-- CONTAINER -->
      <div class="container bg-container">
        <!-- CONTENT -->
        <!--
          Only the inner content of the following tag "section" is included
          within the template, in the section "content"
        -->
        <section data-layout-fragment="content">
          <div class="container-fluid content">

            <div class="box-center">
              <!-- Project info -->
              <div class="row">
                <div class="hidden-xs col-sm-4 col-sm-offset-1">
                   <img alt="Spring Roo" data-th-src="@{/public/img/springroo-logo.png}"
                  src="../static/public/img/springroo-logo.png" />
                </div>
                <div class="col-sm-6">
                  <h2 data-th-text="${r"#{"}info_homepage_header}">With Roo you can easily build full Java applications in minutes.</h2>
                  <p data-th-text="${r"#{"}info_homepage_paragraph}">Spring Roo is a next-generation rapid application development tool for Java developers.
                  It focuses on higher productivity, stock-standard Java APIs, high usability, avoiding engineering trade-offs and
                  facilitating easy Roo removal.
                  </p>
                  <p class="lead" data-th-text="${r"#{"}info_homepage_thanks}">Thanks for your interest in Spring Roo!</p>
                </div>
              </div>
            </div><!-- box-center -->

            <!-- Features -->
            <div class="row blocks">

              <!-- Doc -->
              <div class="col-sm-6 col-md-3">
                <div class="block-item bgm-teal">
                  <div class="clearfix">
                    <div class="doc">
                      <i class="fa fa-book"></i>
                    </div>
                    <div class="text">
                      <h2><a href="http://docs.spring.io/spring-roo/docs/current/reference/html/" data-th-title="${r"#{"}label_spring_documentation}" title="Spring Roo reference documentation" target="_blank" data-th-text="${r"#{"}label_documentation}">Doc</a></h2>
                      <small data-th-text="${r"#{"}info_spring_documentation}">If you are looking for Reference Documentation you can get it here.</small>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Project page -->
              <div class="col-sm-6 col-md-3">
                <div class="block-item bgm-red">
                  <div class="clearfix">
                    <div class="doc">
                      <i class="fa fa-envira"></i>
                    </div>
                    <div class="text">
                      <h2><a href="http://projects.spring.io/spring-roo/" data-th-title="${r"#{"}label_spring_site}" title="Spring Roo project site" target="_blank" data-th-text="${r"#{"}label_projectpage}">Project Page</a></h2>
                      <small data-th-text="${r"#{"}info_spring_site}">All the info about Spring Roo development.</small>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Support -->
              <div class="col-sm-6 col-md-3">
                <div class="block-item bgm-amber">
                  <div class="clearfix">
                    <div class="doc">
                      <i class="fa fa-stack-overflow"></i>
                    </div>
                    <div class="text">
                      <h2><a href="http://stackoverflow.com/questions/tagged/spring-roo" data-th-title="${r"#{"}label_spring_support}" title="Spring Roo Stackoverflow support" target="_blank" data-th-text="${r"#{"}label_support}">Support</a></h2>
                      <small data-th-text="${r"#{"}label_spring_support}">If you have any question about the project,
                      you can check it.</small>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Source in Github -->
              <div class="col-sm-6 col-md-3">
                <div class="block-item bgm-bluegray">
                  <div class="clearfix">
                    <div class="doc">
                      <i class="fa fa-code"></i>
                    </div>
                    <div class="text">
                      <h2><a href="https://github.com/spring-projects/spring-roo/" data-th-title="${r"#{"}label_spring_code}" title="Spring Roo source code" target="_blank" data-th-text="${r"#{"}label_code}">Code</a></h2>
                      <small data-th-text="${r"#{"}label_spring_sourcecode}">Known, modify and redistribute the source code.</small>
                    </div>
                  </div>
                </div>
              </div>

             </div><!-- /Features -->

             <!-- Social -->
             <div class="row">
              <div class="col-md-12">
                <ul class="pull-right list-inline social-links">
                  
                </ul>
              </div>
             </div>

          </div>
        </section>
        <!-- /CONTENT -->
      </div>
      <!-- /CONTAINER -->

      <footer class="container">
        <!-- Content replaced by layout of the page displayed -->
      </footer>

      <!-- JavaScript
      ================================================== -->
      <!-- Placed at the end of the document so that the pages load faster -->
      <!-- JavaScript loaded by layout of the page displayed -->
      <!--
           Only the inner content of the following tag "javascript" is included
           within the template, in the div "javascript"
          -->
      <div data-layout-fragment="javascript">
      </div>

  </body>
  </#if>

</html>
