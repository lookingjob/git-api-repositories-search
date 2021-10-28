
<?php

include 'helpers/curl.php';
include 'templates/header.tpl';

$api_url = 'https://api.github.com/search/repositories';

if (!empty($_GET['q'])) {
	$url_to_search = sprintf('%s?%s', $api_url, http_build_query($_GET));	
	$url_to_navigate = $_SERVER['REQUEST_URI'];	
	$content = curl_get_content($url_to_search);
	if ($content) {
		$result = json_decode($content);
		include 'templates/result.tpl';	
	}
} else {
	include 'templates/form.tpl';
}

include 'templates/footer.tpl';
