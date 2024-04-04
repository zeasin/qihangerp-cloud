<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="快递公司" prop="company">
        <el-input
          v-model="queryParams.company"
          placeholder="请输入快递公司"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleAdd"
        >添加</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="dataList" >
<!--      <el-table-column type="selection" width="55" align="center" />-->
      <el-table-column label="id" align="center" prop="logisticsId" />
      <el-table-column label="快递公司" align="center" prop="name" />
       <el-table-column label="编码" align="center" prop="code" />
       <el-table-column label="备注" align="center" prop="remark" />
       <el-table-column label="状态" align="center" prop="status" >
         <template slot-scope="scope">
           <el-tag size="small" v-if="scope.row.status === 0 || !scope.row.status"> 未启用</el-tag>
           <el-tag size="small" v-if="scope.row.status === 1"> 启用</el-tag>
         </template>
       </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            v-if="scope.row.status === 0 || !scope.row.status"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdateStatus(scope.row)"
          >开启</el-button>
          <el-button
            size="mini"
            v-if="scope.row.status === 1"
            type="text"
            icon="el-icon-delete"
            @click="handleUpdateStatus(scope.row)"
          >关闭</el-button>
        </template>
      </el-table-column>

    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />
    <!-- 对话框 -->
    <el-dialog title="添加快递公司" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="快递公司" prop="name">
          <el-input v-model="form.name" placeholder="请输入快递公司" />
        </el-form-item>
        <el-form-item label="快递编码" prop="name">
          <el-input v-model="form.code" placeholder="请输入快递编码" />
        </el-form-item>
        <el-form-item label="状态" prop="status">
          <el-select v-model="form.status" placeholder="请选择状态" clearable @change="handleQuery">
            <el-option label="启用" value="1"></el-option>
            <el-option label="禁用" value="0"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" placeholder="备注" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {MessageBox} from "element-ui";
import {isRelogin} from "@/utils/request";
import {addLogistics, listLogistics} from "@/api/api/logistics";

export default {
  name: "Shop",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      dataList:[],
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        id:null,
        shopId:null
      },
      // 表单参数
      form: {
        type:null
      },
      // 表单校验
      rules: {
        name: [{ required: true, message: "不能为空", trigger: "blur" }],
        code: [{ required: true, message: "不能为空", trigger: "blur" }],
        status: [{ required: true, message: "不能为空", trigger: "blur" }]
      }
    };
  },
  created() {

  },
  mounted() {
    if(this.$route.query.id){
      this.queryParams.id = this.$route.query.id+""
    }
    if(this.$route.query.shopId){
      this.queryParams.shopId = this.$route.query.shopId+""
    }
    this.getList();
  },
  methods: {
    /** 查询店铺列表 */
    getList() {
      this.loading = true;

      listLogistics(this.queryParams).then(response => {
        this.dataList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },

    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    handleAdd() {
        this.open=true
    },
    cancel(){
      this.open=false
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          addLogistics(this.form).then(response => {
            this.$modal.msgSuccess("添加成功");
            this.open = false;
            this.getList();
          });

        }
      });
    },
  }
};
</script>
