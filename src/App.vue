<template>
  <div id="app">
    <h2>文本内容</h2>
    <div class="regex-block">
      <textarea
        class="regex-textarea"
        v-model="textarea"
      ></textarea>
    </div>
    <h2>正则规则</h2>
    <div class="regex-block">
      <input
        class="regex-input"
        v-model="regex"
      >
      <button
        class="regex-button"
        @click="clickRegex"
      >点击验证</button>
    </div>
    <h2>正则匹配结果</h2>
    <RegexCode :html="renderHtml" />
  </div>
</template>

<script>
import RegexCode from './components/RegexCode.vue'

export default {
  name: 'App',
  components: {
    RegexCode
  },
  data() {
    return {
      textarea: '3 and 5',
      regex: '[0-9]+',
      renderHtml: ''
    }
  },
  methods: {
    clickRegex() {
      const rule = new RegExp(this.regex, 'g')
      this.renderHtml = this.textarea.replace(rule, (match) => {
        return '<span class="code-active">'+ match +'</span>'
      })
    }
  }
}
</script>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
* {
  box-sizing: border-box;
}
body {
  margin: 0;
}
button {
  cursor: pointer;
}
code, .regex-input, .regex-textarea {
  font-size: 16px;
  font-family: Consolas;
}

.regex-block {
  max-width: 600px;
  margin: 0 auto;
}
.regex-button {
  padding: 4px 15px;
  border: 1px solid #d9d9d9;
  background-color: #fff;
  padding: 7px 11px;
  outline: 0;
  transition: border-color 0.3s, color 0.3s;
}
.regex-button:focus,
.regex-button:hover {
  color: #40a9ff;
  background: #fff;
  border-color: #40a9ff;
}
.regex-textarea {
  width: 100%;
  min-height: 120px;
}
.regex-textarea,
.regex-input {
  border-radius: 2px;
  border: 1px solid #d9d9d9;
  padding: 7px 11px;
  transition: border-color 0.3s, box-shadow 0.3s;
}
.regex-textarea:focus,
.regex-input:focus {
  border-color: #40a9ff;
  outline: 0;
  box-shadow: 0 0 0 2px rgb(24 144 255 / 20%);
}
.regex-textarea:hover,
.regex-input:hover {
  border-color: #40a9ff;
}
.regex-input {
  margin-right: 10px;
}
</style>
