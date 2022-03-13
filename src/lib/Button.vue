<template>
  <button class="u-button" :class="{[`u-theme-${theme}`]:theme}">
    <slot/>
  </button>
</template>

<script lang="ts">
export default {
  name: "Button",
  inheritAttrs:false,
  props:{
    theme:{
      type:String,
      default:'button',
    },
  },
}
</script>

<style lang="scss">
div{
  $h:32px;
  $border-color:#d9d9d9;
  $color:#333;
  $blue:#40a9ff;
  $radius:4px;
  .u-button{
    box-sizing: border-box;
    height: $h;
    padding: 0 12px;
    cursor: pointer;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    white-space: nowrap;
    background: white;
    color: $color;
    border: 1px solid $border-color;
    box-shadow: 0 1px 0 fade-out(black,0.95);
    & + &{
      margin-right: 8px;
    }
    &:hover,
    &:focus{
      color: $blue;
      border-color: $blue;
    }
    &:focus{
      outline: none;
    }
    &::-moz-focus-inner{
      border: 0;
    }
    &.u-theme-link{
      border-color: transparent;
      box-shadow: none;
      color: $blue;
      &:hover,&:focus{
        color: lighten($blue,10%);
      }
    }
    &.u-theme-text{
      border-color: transparent;
      box-shadow: none;
      color: inherit;
      &:hover,&:focus{
        background: darken(white,5%);
      }
    }
  }
}
</style>