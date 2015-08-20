
(function () {
 
var hintKey   = liberator.globalVariables.hint_tombloo_key   || 'r';
var hintXPath = liberator.globalVariables.hint_tombloo_xpath || '//img';
 
hints.addMode(
	    hintKey,
	        'Share by Tombloo',
		    function (elem) {
		            var tombloo = Cc['@tombfix.github.io/tombfix-service;1'] || Cc['@brasil.to/tombloo-service;1'];
		            var tomblooService = tombloo.getService().wrappedJSObject.Tombloo.Service;
		     
		            var d = window.content.document;
		            var w = window.content.wrappedJSObject;
		            var context = {
			                document: d,
			                window:   w,
			                title:    "hogehoge",
			                target:   elem,
			            };
		            for (let p in w.location) {
			                context[p] = w.location[p];
			            }
		     
		            var extractors = tomblooService.check(context);
		    //        console.log(extractors);
		                    tomblooService.share(context, extractors[0], false);
		    //                //        liberator.echo('tumblr posted a Photo');
		    //                 
		    //                 //        liberator.modules.commandline.input(
		    //                 //            'Extractor: ',
		    //                 //            function (string) {
		    //                 //                var extractor;
		    //                 //                for (let i = 0; i < extractors.length; i++) {
		    //                 //                    if (extractors[i].name == string) {
		    //                 //                        extractor = extractors[i];
		    //                 //                        break;
		    //                 //                    }
		    //                 //                }
		    //                 //                if (!extractor) return;
		    //                 //
		    //                 //                tomblooService.share(context, extractor, true);
		    //                 //            },
		    //                 //            {
		    //                 //                completer: function (context) {
		    //                 //                    context.title = ['Tombloo Extractors'];
		    //                 //                    context.completions = extractors.map(
		    //                 //                        function (_) [ _.name, _.name ]
		    //                 //                    );
		    //                 //                }
		    //                 //            }
		    //                 //        );
		                         },
		                             function () hintXPath
		                             );
		                              
		                              })();
