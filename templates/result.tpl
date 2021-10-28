<?php

if ($result->total_count) {
	echo '<h3>Search results</h3>';
	echo '<p>Query: <strong>', $_GET['q'], '</strong><br>';
	echo 'Repos found: <strong>', $result->total_count, '</strong></p>';
	echo '<p><a href="index.php">New search</a></p>';
	echo '<table class="repos">';
	echo '<tr><th>Name</th><th>Size</th><th>Forks</th><th>Followers</th><th>Stars</th></tr>';
	foreach($result->items as $item) {
		echo sprintf('<tr><td><a href="%s">%s</a></td><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>', 
			$item->html_url, 
			$item->full_name,
			$item->size,
			$item->forks_count,
			$item->watchers,
			$item->score
		);
	}
	echo '</table>';
	
	$per_page = count($result->items);
	$total_pages = floor($result->total_count / $per_page);
	$page = !empty($_GET['page']) ? (int)$_GET['page'] : 1;
	
	echo '<p>Page: ', $page, ' of ', $total_pages, '</p>';
	echo '<p>';
	if ($page > 1) {
		echo sprintf('<a href="%s&amp;page=%s">Prev</a>&nbsp;&nbsp;', $url_to_navigate, $page - 1);
	}
	if ($page < $total_pages) {
		echo sprintf('<a href="%s&amp;page=%s">Next</a>', $url_to_navigate, $page + 1);
	}
	echo '</p>'; 
} else {
	echo '<p>No results found</p>';
}