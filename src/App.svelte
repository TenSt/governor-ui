<script>
	export let name;

	let buttonVisible = false;
	let tasks = "";

	function getTasks() {
		let xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() { 
			if (this.readyState == 4 && this.status == 200) {
				tasks = JSON.parse(xhr.responseText);
			}
		}
		xhr.open('GET', '/backend/tasks', true);
		xhr.send();
	}
</script>

<main>
	<h1>{name}!</h1>
	<p>Welcome to the Governor page.</p>
	<button on:click={getTasks}>Get tasks!</button>

	<div>
		<h1>Tasks</h1>
		{#if tasks != ""}
			{#each tasks as task}
				<li>
					Number: {task.number}<br/>
					Request: {task.request}<br/>
					Action: {task.action}<br/>
				</li>
			{/each}
		{/if}
	</div>
</main>

<style>
	main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
		background-color: white;
	}

	div {
		text-align: left;
		padding: 1em;
		max-width: 500px;
		margin: 0 auto;
		background-color: white;
	}

	h1 {
		color: darkslateblue;
		text-transform: uppercase;
		font-size: 4em;
		font-weight: 100;
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>