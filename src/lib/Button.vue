<template>
  <button class="u-button" :class="classes" :disabled="disabled">
    <span v-if="loading" class="u-loadingIndicator"></span>
    <slot/>
  </button>
</template>

<script lang="ts">
import {computed} from "vue";

export default {
  name: "Button",
  inheritAttrs:false,
  props:{
    theme:{
      type:String,
      default:'button',
    },
    size:{
      type:String,
      default: "normal",
    },
    level:{
      type:String,
      default:"normal",
    },
    disabled:{
      type:Boolean,
      default:false
    },
    loading:{
      type:Boolean,
      default:false
    }
  },
  setup(props){
    const {theme,size,level} = props;
    const classes = computed(()=>{
      return{
        [`u-theme-${theme}`]:theme,
        [`u-size-${size}`]:size,
        [`u-level-${level}`]:level,
      };
    });
    return{classes}
  }
}
</script>

<style lang="scss">
div{
  $h:32px;
  $border-color:#d9d9d9;
  $color:#333;
  $blue:#40a9ff;
  $radius:4px;
  $red:red;
  $grey:grey;
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
    transition: background 250ms;
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
    &.u-size-big {
      font-size: 24px;
      height: 48px;
      padding: 0 16px;
  }
  &.u-size-small{
    font-size: 12px;
    height: 20px;
    padding: 0 4px;
  }
    &.u-theme-button{
      &.u-level-main{
        background: $blue;
        border-color: $blue;
        &:hover,
        &:focus{
          background: darken($blue,10%);
          border-color: darken($blue,10%);
        }
      }
      &.u-level-danger{
        background: $red;
        border-color: $red;
        color: white;
        &:hover,
        &:focus{
          background: darken($red,10%);
          border-color: darken($red,10%);
        }
      }
    }
    &.u-theme-link{
      &.u-level-danger{
        color: $red;
        &:hover,
        &:focus{
          color: darken($red,10%);
        }
      }
    }
    &.u-theme-text{
      &.u-level-main{
        &:hover,
        &:focus{
          color: darken($blue,10%);
        }
      }
      &.u-level-danger{
        color: $red;
        &:hover,
        &:focus{
          color: darken($red,10%);
        }
      }
    }
    &.u-theme-button {
      &[disabled] {
        cursor: not-allowed;
        color: $grey;
        &:hover {
          border-color: $grey;
        }
      }
    }
    &.u-theme-link, &.u-theme-text {
      &[disabled] {
        cursor: not-allowed;
        color: $grey;
      }
    }
    > .u-loadingIndicator{
      width: 14px;
      height: 14px;
      display: inline-block;
      margin-right: 4px;
      border-radius: 8px;
      border-color: $blue $blue $blue transparent;
      border-style: solid;
      border-width: 2px;
      animation: u-spin 1s infinite linear;
    }
  }
  @keyframes u-spin {
    0%{transform: rotate(0deg)}
    100%{transform: rotate(360deg)}
  }
}
</style>