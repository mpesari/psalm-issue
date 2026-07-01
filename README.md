```bash
docker build --tag psalm .
docker run --rm -it psalm vendor/bin/psalm
```

```
Running on PHP 8.5.4, Psalm 6.16.1@f1f5de594dc76faf8784e02d3dc4716c91c6f6ac.

JIT acceleration: OFF
You can enable JIT acceleration (experimental) with --force-jit.

Target PHP version: 8.5 (inferred from current PHP version).


Scanning files...

214 / 214...

Analyzing files...

Uncaught InvalidArgumentException: Could not get class storage for imagickpixel in /php/vendor/vimeo/psalm/src/Psalm/Internal/Provider/ClassLikeStorageProvider.php:45
Stack trace:
#0 /php/vendor/vimeo/psalm/src/Psalm/Internal/Type/TypeExpander.php(600): Psalm\Internal\Provider\ClassLikeStorageProvider->get()
#1 /php/vendor/vimeo/psalm/src/Psalm/Internal/Type/TypeExpander.php(170): Psalm\Internal\Type\TypeExpander::expandNamedObject()
#2 /php/vendor/vimeo/psalm/src/Psalm/Internal/Type/TypeExpander.php(76): Psalm\Internal\Type\TypeExpander::expandAtomic()
#3 /php/vendor/vimeo/psalm/src/Psalm/Internal/Analyzer/Statements/Expression/Call/ArgumentAnalyzer.php(326): Psalm\Internal\Type\TypeExpander::expandUnion()
#4 /php/vendor/vimeo/psalm/src/Psalm/Internal/Analyzer/Statements/Expression/Call/ArgumentAnalyzer.php(245): Psalm\Internal\Analyzer\Statements\Expression\Call\ArgumentAnalyzer::checkFunctionLikeTypeMatches()
#5 /php/vendor/vimeo/psalm/src/Psalm/Internal/Analyzer/Statements/Expression/Call/ArgumentsAnalyzer.php(869): Psalm\Internal\Analyzer\Statements\Expression\Call\ArgumentAnalyzer::checkArgumentMatches()
#6 /php/vendor/vimeo/psalm/src/Psalm/Internal/Analyzer/Statements/Expression/CallAnalyzer.php(346): Psalm\Internal\Analyzer\Statements\Expression\Call\ArgumentsAnalyzer::checkArgumentsMatch()
#7 /php/vendor/vimeo/psalm/src/Psalm/Internal/Analyzer/Statements/Expression/Call/Method/ExistingAtomicMethodCallAnalyzer.php(254): Psalm\Internal\Analyzer\Statements\Expression\CallAnalyzer::checkMethodArgs()
#8 /php/vendor/vimeo/psalm/src/Psalm/Internal/Analyzer/Statements/Expression/Call/Method/AtomicMethodCallAnalyzer.php(484): Psalm\Internal\Analyzer\Statements\Expression\Call\Method\ExistingAtomicMethodCallAnalyzer::analyze()
#9 /php/vendor/vimeo/psalm/src/Psalm/Internal/Analyzer/Statements/Expression/Call/MethodCallAnalyzer.php(197): Psalm\Internal\Analyzer\Statements\Expression\Call\Method\AtomicMethodCallAnalyzer::analyze()
#10 /php/vendor/vimeo/psalm/src/Psalm/Internal/Analyzer/Statements/ExpressionAnalyzer.php(213): Psalm\Internal\Analyzer\Statements\Expression\Call\MethodCallAnalyzer::analyze()
#11 /php/vendor/vimeo/psalm/src/Psalm/Internal/Analyzer/Statements/ExpressionAnalyzer.php(92): Psalm\Internal\Analyzer\Statements\ExpressionAnalyzer::handleExpression()
#12 /php/vendor/vimeo/psalm/src/Psalm/Internal/Analyzer/StatementsAnalyzer.php(563): Psalm\Internal\Analyzer\Statements\ExpressionAnalyzer::analyze()
#13 /php/vendor/vimeo/psalm/src/Psalm/Internal/Analyzer/StatementsAnalyzer.php(193): Psalm\Internal\Analyzer\StatementsAnalyzer::analyzeStatement()
#14 /php/vendor/vimeo/psalm/src/Psalm/Internal/Analyzer/FileAnalyzer.php(174): Psalm\Internal\Analyzer\StatementsAnalyzer->analyze()
#15 /php/vendor/vimeo/psalm/src/Psalm/Internal/Codebase/Analyzer.php(1486): Psalm\Internal\Analyzer\FileAnalyzer->analyze()
#16 /php/vendor/vimeo/psalm/src/Psalm/Internal/Codebase/Analyzer.php(438): Psalm\Internal\Codebase\Analyzer::analysisWorker()
#17 /php/vendor/vimeo/psalm/src/Psalm/Internal/Codebase/Analyzer.php(246): Psalm\Internal\Codebase\Analyzer->doAnalysis()
#18 /php/vendor/vimeo/psalm/src/Psalm/Internal/Analyzer/ProjectAnalyzer.php(472): Psalm\Internal\Codebase\Analyzer->analyzeFiles()
#19 /php/vendor/vimeo/psalm/src/Psalm/Internal/Cli/Psalm.php(400): Psalm\Internal\Analyzer\ProjectAnalyzer->check()
#20 /php/vendor/vimeo/psalm/psalm(9): Psalm\Internal\Cli\Psalm::run()
#21 /php/vendor/bin/psalm(119): include('...')
#22 {main}
(Psalm 6.16.1@f1f5de594dc76faf8784e02d3dc4716c91c6f6ac crashed due to an uncaught Throwable)
```
