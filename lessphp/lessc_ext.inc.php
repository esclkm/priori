<?
if (!class_exists('lessc')) {
	require_once dirname(__FILE__)  . "/lessc.inc.php";
}
//	include_once('lessc.inc.php');
class less extends lessc {
	
	public function compileFile($fname, $outFname = null) {
		if (!is_readable($fname)) {
			throw new Exception('load error: failed to find '.$fname);
		}

		$pi = pathinfo($fname);

		$oldImport = $this->importDir;

		$this->importDir = (array)$this->importDir;
		$this->importDir[] = $pi['dirname'].'/';

		$this->allParsedFiles = array();
		$this->addParsedFile($fname);
		
		$fileless = file_get_contents(dirname(__FILE__)  . "/more.less");
		$fileless .= file_get_contents($fname);
		$out = $this->compile($fileless, $fname);

		$this->importDir = $oldImport;

		if ($outFname !== null) {
			return file_put_contents($outFname, $out);
		}

		return $out;
	}

}
?>