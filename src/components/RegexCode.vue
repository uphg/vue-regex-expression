<template>
  <div class="regex-code">
    <pre><code v-html="html"></code></pre>
  </div>
</template>

<script>
export default {
  name: 'RegexCode',
  props: {
    html: {
      type: [String, Number],
      default: ''
    }
  }
}
</script>

<style lang="scss">
pre {
  margin: 0;
  min-height: 100%;
  padding: 1em;
}
.regex-code {
  max-width: 600px;
  height: 300px;
  margin: 20px auto;
  border: 1px solid #dddddd;
  background-color: #f8f8f8;
  overflow-x: auto;
}

code .code-active {
  background-color: #ffff00;
}
a {
  color: #42b983;
}
</style>
