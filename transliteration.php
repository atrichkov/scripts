<?php
	function transliterate($string) {
		$utf8Str = mb_convert_encoding($string, 'UTF-8', 'Windows-1251');
		$english = array('a', 'b', 'v', 'g', 'd', 'e', 'j', 'z', 'i', 'i', 'k', 'l', 'm', 'n', 'o', 'p', 'r', 's', 't', 'u', 'f', 'h', 'c', 'sh', 'sht', 'y', 'iu', 'ia');
		$cyrillic = array('а', 'б', 'в','г', 'д', 'е', 'ж', 'з', 'и' ,'й', 'к', 'л', 'м', 'н', 'о', 'п', 'р', 'с', 'т', 'у', 'ф', 'x', 'ц', 'ш', 'щ', 'ъ', 'ю', 'я');
		$result = str_replace($cyrillic, $english, mb_strtolower($utf8Str));

		return $result;
	}