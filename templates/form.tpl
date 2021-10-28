<form method="get" action="index.php" class="form">

<div class="form-row">
	<label for="q">Search</label>
	<input type="text" name="q" id="q" maxlength="255">
</div>

<div class="form-row">
	<label for="sort">Sort</label>
	<select name="sort" id="sort">
		<option value="">Best match</option>
		<option value="stars">Stars</option>
		<option value="forks">Forks</option>
		<option value="help-wanted-issues">Help wanted issues</option>
		<option value="updated">Updated</option>
	</select>
</div>

<div class="form-row">
	<label for="order">Order by</label>
		<select name="order" id="order">
		<option value="desc">Highest number of matches</option>
		<option value="asc">Lowest number of matches</option>
	</select>
</div>

<div class="form-row">
	<input type="submit" value="Find">
</div>

</form>