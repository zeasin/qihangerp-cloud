<template>
  <div class="app-container">
    <el-tabs v-model="activeName" @tab-click="handleClick">
      <el-tab-pane label="仓库发货" name="stockShip">
        <stock-ship></stock-ship>

      </el-tab-pane>
      <el-tab-pane label="供应商代发" name="supplierShip" lazy>
        <supplier-ship></supplier-ship>
      </el-tab-pane>
    </el-tabs>

  </div>
</template>

<script>
import stockShip  from "@/views/shipping/stocking/stockShip.vue";
import supplierShip  from "@/views/shipping/stocking/supplierShip.vue";

export default {
  name: "stocking",
  components:{stockShip,supplierShip},
  data() {
    return {
      activeName: 'stockShip'
    };
  },
  created() {

  },
  mounted() {

  },
  methods: {
    handleClick(tab, event) {
      console.log(tab, event);
    }
  }
};
</script>
