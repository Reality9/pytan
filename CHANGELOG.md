2.0.3 (n/a)
  * Add changelog link to pytan readme
  * Change functional tests to split invalid / valid server tests into individual files

2.0.2 (Aug 18 2015)
  * Logging improvements
  * Test verbosity cleanups

2.0.1 (Aug 11 2015)
  * Added saved action support

2.0.0 (Aug 7 2015)
  * 6.2 and 6.5 support
  * Completely overhauled session support (we now use keep alive, gzip, and other fun things)
  * Completely overhauled Question polling
  * Completely overhauled Action polling
  * New XML cleaning to remove illegal characters that sometimes slip into sensor data from non-US systems
  * And a whole lot of improvements, bug fixes, and performance fixes for large result sets beyond that

1.6.0 (Apr 15 2015)
  * Cleaned up open file handles
  * Added not a windows script to platform filters (Last Login has it)
  * Added retry support to http_post
  * Added stats method to session
  * Made deploy action work for 6.5 AND 6.2
  * Made ActionPoller
  * Fixed saved questions
  * Added peer review changes from AP
  * Added runplugin support
  * Fixed invalid character xml issue
  * Added saved questions json to api/doc gen

1.0.4 (Mar 26 2015)
  * Added better xml cleaning / invalid character handling to session.py
  * Added xml_fix to BaseType.py 
  * Added support for sensor driven data for deploying action/package (this was done by adding support for undefined parameters, and "works" in theory, but in execution has lots of issues due to percent encoded parameters)

1.0.3 (Feb 11 2015)
  * Fixed utf-8 issue in taniumpy
  * Improvements in build process for STATICWINBUILD

1.0.2 (Jan 10 2015)
  * Filter hidden sensors from print_sensors.py
  * Added better param json decoding error handling in print_sensors.py
  * Added support for static building via py2exe
  * Built "ask all questions" workflow
  * Renamed ask all questions to Tanium Sensor Analysis Tool
  * Added username/password/host prompt to all py scripts
  * Added config.bat, run.bat, readme.md for TSAT
  * Added auto zipper for TSAT build

1.0.1 (Dec 8 2014)
  * Added question_asker args to get_ask_kwargs
  * API documentation added via sphinx
  * API examples added to sphinx
  * Command line documentation added via mddoctest
  * Restructured pytan dir into lib dir
    * pytan/api ->> lib/taniumpy
    * pytan ->> lib/pytan
    * pytan/xmltodict.py ->> lib/xmltodict
  * Changed relative imports everywhere to explicit imports via PYTHONPATH (package issues during relative import)
  * Convert all func tests to DDT
  * Build API doc examples/API examples from ddt func test
  * Added complicated query examples
  * Added version to pdf
  * Changed filters to use : between filter choice and value
  * Update sensor help for ask_manual_question.py to describe params
  * Added help to manual stuff
  * Incorporated mdocbuild for bin scripts
  * Built markdown docs for bin scripts
  * Added usage to docs
  * Updated readme

1.0.0 (Dec 1 2014)
  * Support sensors filters/options/params for manual questions
  * Support whole question filters/options for manual questions
  * Integrated auto wsdl generator
  * Unit tests updated
  * Added json for resultset
  * Wrote unittests for dehumanize_* (and everything else)
  * Updated all unit tests to work with new handler
  * Integrated reporting into handler (export_*)
  * Added unittests for export_obj
  * Updated all bin/ scripts to work with new handler
  * Added functests and unittest for deploy action
  * Wrote bin script for deploy
  * Added stop action and bin script
  * Added get action results bin script
  * Added delete support
  * Added create_from_json for each create type
  * Added unittests for create/delete
  * Added whitelisted_urls to unittests for class setup
  * Added bin scripts for delete
  * Added bin scripts for create_from_json
  * Added bin scripts for create

0.6.0 (Nov 8 2014)
  * Re-worked unit tests to be more better-er (data driven)
  * Re-worked COUNT column hiding 
  * Marked parsed question as no params support (add check for [] and throw  error if found)
  * Moved XML dict grabbing stuff from soapwrap into soapresponse
  * Created print_sensors.py
  * Changed get_objects into get_sensors.py/*
  * Added tests for humanize_result_object on sensors single/mult/all
  * Added support for parameters in manual questions, handle escaped commas
  * Added script / method to return all sensor names for discovery of manual question builder

0.5.0 (Nov 5 2014)
  * Added better app_test
  * Moved formatting/data transforms out
  * Added json out
  * Refactored unittests for write_response()
  * Added xml out
  * Added csv out
  * Fixed get_question_object request to map to original request
  * Added manual query
  * Added tests for iwndows
  * Added longer wait time for est_total to be nicer to API
  * Added python wrapper scripts
  * Added windows wrapper scripts
  * Added unix example scripts
  * Tested against 444 vs 443
  * Generalized username/password in test cases

0.0.0 (Oct 10 2014)
  * Initial startup for PyTan