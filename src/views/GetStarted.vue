<template>
  <article class="markdown-body" v-html="md">
  </article>
</template>

<script>
import md from '../mardown/get-started.md'
export default {
  name: "Intro",
  data(){
    return{
      md
    }
  }
}
</script>

