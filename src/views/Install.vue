<template>
  <article class="markdown-body" v-html="md">
  </article>
</template>

<script>
import md from '../mardown/install.md'
export default {
  name: "Install.vue",
  data(){
    return{
      md
    }
  }
}
</script>

