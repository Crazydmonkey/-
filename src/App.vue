<template>
  <div id="app">
    <div id=content>
       <router-view />
    </div>
   
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>
<style>
   #app > div{
     height: 100%;
   }
   
</style>