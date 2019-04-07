<template>
  <div class="index">
    <h1>This is the page that loads when logged in</h1>
    <div v-for="contact in contacts">
      <p>Name: {{ contact.first_name}} {{ contact.last_name }}</p>
    </div>
  </div>
</template>