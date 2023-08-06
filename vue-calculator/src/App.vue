<template>
  <div class="calculator">
    <input v-model="expression" class="expression" placeholder="Enter expression">
    <div class="buttons">
      <button v-for="button in buttons" :key="button" @click="appendToExpression(button)">{{ button }}</button>
    </div>
    <button @click="calculate">Calculate</button>
    <div class="result">{{ result }}</div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      expression: "",
      result: "",
      buttons: ["7", "8", "9", "+", "4", "5", "6", "-", "1", "2", "3", "*", "0", ".", "=", "/"]
    };
  },
  methods: {
    appendToExpression(value) {
      this.expression += value;
    },
    calculate() {
      try {
        this.result = eval(this.expression);
      } catch (error) {
        this.result = "Error";
      }
    }
  }
};
</script>

<style scoped>
/* Add component-specific styling if needed */
</style>

