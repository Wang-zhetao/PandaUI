<template>
  <div>
  <Topnav/>
    <div class="banner">
      <h1>pandaUI</h1>
      <h2>一个厉害的UI 框架</h2>
      <p class="actions">
        <a>Github</a>
        <a>开始</a>
      </p>
    </div>
  </div>
</template>

<script lang="ts">
import Topnav from "../components/Topnav.vue";
export default {
  name: "Home",
  components: {Topnav}
}
</script>




