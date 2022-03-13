<template>
  <div>Button 示例</div>
  <h1>示例1</h1>
  <div>
    <Button @click="onclick"
    @focus="onClick"
    @mouseover="onClick">
      你好
    </Button>
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue'
export default {
  name: "ButtonDemo",
  components: {Button},
  setup(){
    const onClick = ()=>{
      console.log('hi')
    }
    return {onClick}
  }
}
</script>

<style lang="scss" scoped>

</style>