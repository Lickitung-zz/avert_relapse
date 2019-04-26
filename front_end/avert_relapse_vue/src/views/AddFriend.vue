<template>
	<div class="newFriend">
	    <h1>This is the add friends page</h1>
	    <h1>This is the add friends page</h1>
	    <h1>This is the add friends page</h1>
	</div>
</template>





<div class="form-group">
<h4>Add friend</h4>
  <form>
    <p>First Name <input type=text v-model="newContactFirstName"></p>
    <p>Last Name <input type=text v-model="newContactLastName"></p>
    <p>Phone Number <input type=text v-model="newContactPhoneNumber"></p>
    <p>Email <input type=text v-model="newContactEmail"></p>
    <button v-on:click="createContact()">Add Friend</button>
  </form>
</div>