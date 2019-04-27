<template>
  <div class="about">
    <div>
      First Name: <input type="text" v-model="contact.first_name">
      Last Name: <input type="text" v-model="contact.last_name">
      Phone Number: <input type="text" v-model="contact.phone_number">
      Email: <input type="text" v-model="contact.email">
      <button v-on:click="editContact(contact)">Update Contact</button>
    </div>
  </div>
</template>