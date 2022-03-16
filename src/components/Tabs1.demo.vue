<demo>
  常规使用
</demo>
<template>
  <Tabs>
    <Tab title="导航1">内容1</Tab>
    <Tab title="导航2">内容2</Tab>
  </Tabs>
</template>

<script lang="ts">
import Tabs from "../lib/Tab.vue";
import Tab from "../lib/Tab.vue";
import {ref} from "vue";

export default {
  name: "Tabs1.demo.vue",
  components: {Tabs,Tab},
  setup(){
    const x = ref('导航2')
    return{x}
  }
}
</script>

