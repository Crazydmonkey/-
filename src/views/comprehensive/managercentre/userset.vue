<template>
    <div id="userset">
        <div class="setinput">
            <div style="flex:1">
                <h2 style="margin-left:2em">基本设置</h2>
                 <span style="margin-left:2.4em;font-size:20px;margin-top:1em">昵称</span><br/>
                <el-input size="small" style="width:80%;margin-left:3.8em;margin-top:.5em" v-model="userInfo.name" placeholder="请输入内容"></el-input><br/><br/>
                <span style="margin-left:2.4em;font-size:20px;margin-top:1em" >邮箱</span><br/>
                <el-input size="small" style="width:80%;margin-left:3.8em;margin-top:.5em" v-model="userInfo.email" placeholder="请输入内容"></el-input><br/><br/>
                <span style="margin-left:2.4em;font-size:20px;margin-top:1em">联系电话</span><br/>
                <el-input size="small" style="width:80%;margin-left:3.8em;margin-top:.5em" v-model="userInfo.phone" placeholder="请输入内容" :disabled="true"></el-input><br/>
            </div>
            <div style="flex:1">
                <h2 style="margin-left:2em">安全设置</h2>
                <span style="margin-left:2.4em;font-size:20px;margin-top:1em">账户密码</span><br/>
                <el-input type="password" autocomplete="off" v-model="userInfo.password" size="small" style="width:60%;margin-left:3.8em;margin-top:.5em" placeholder="请输入内容" :disabled="true"></el-input>

                <el-tooltip class="item" effect="dark" content="点击编辑按钮，修改用户密码" placement="top-start">
                <el-button type="primary" icon="el-icon-edit" @click="dialogpPswVisible=true">修改</el-button>
                </el-tooltip>
                <br/><br/>
                <span style="margin-left:2.4em;font-size:20px;margin-top:3em">绑定电话</span><br/>
                <el-input size="small" style="width:60%;margin-left:3.8em;margin-top:.5em" v-model="userInfo.phone" placeholder="请输入内容" :disabled="true"></el-input>
                <el-tooltip class="item" effect="dark" content="点击编辑按钮，修改绑定手机号" placement="top-start">
                <el-button type="primary" icon="el-icon-edit" @click="dialogPhoneVisible=true">修改</el-button>
                </el-tooltip>
               
            </div>
        </div>
        <div class="usericon">
            <div style="flex:1;text-align:center" >
               <img :src="userInfo.avatarurl" class="user-avatar" style="margin-top:3.8em;width:150px;height:150px;border-radius:50%"><br/>
               <!-- <el-upload
                    class="upload-demo"         
                    action="http://localhost:8888/userMess"
                    :on-change="hello"
                    :multiple=false
                    :show-file-list=false
                    :before-upload="handleBeforeUp"
                    :file-list="fileList">
                </el-upload> -->
                <el-button  type="primary" style="margin-top:1em" @click="change">更换头像</el-button><br/>
                <el-tooltip class="item" effect="dark" content="所有信息更改完毕后，请点击确认更改按钮" placement="top-start">
                <el-button  type="warning" style="margin-top:1em;" @click="handleSubmit">确认修改</el-button>
                </el-tooltip>

            </div><br/><br/><br/>
            <div style="flex:1">
               <span style="margin-left:2.4em;font-size:20px;margin-top:1em">备用邮箱</span><br/>
               <el-input size="small" style="width:80%;margin-left:3.8em;margin-top:.5em" v-model="userInfo.standby_email" placeholder="请输入内容"></el-input><br/><br/>
               <span style="margin-left:2.4em;font-size:20px;margin-top:1em">备用电话</span><br/>
               <el-input size="small" style="width:80%;margin-left:3.8em;margin-top:.5em" v-model="userInfo.mibo_phone" placeholder="请输入内容"></el-input><br/><br/>
            </div>
            <!-- {{userInfo}} -->
        </div>
       

    <!-- //更换头像模态框 -->
    <el-dialog title="提示:请选择您想更换的头像" :visible.sync="dialogFormVisible">
                <el-upload
                         action="#"
                         list-type="picture-card"
                         :auto-upload="false"
                         :limit="1"
                         :on-change="hello">
    <i slot="default" class="el-icon-plus"></i>
    <div slot="file" slot-scope="{file}">
      <img
        class="el-upload-list__item-thumbnail"
        :src="file.url" alt=""
      >
      <span class="el-upload-list__item-actions">
        <span
          class="el-upload-list__item-preview"
          @click="handlePictureCardPreview(file)"
        >
          <i class="el-icon-zoom-in"></i>
        </span>
        <span
          v-if="!disabled"
          class="el-upload-list__item-upload"
          @click="handleDownload(file)"
        >
          <i class="el-icon-download"></i>
        </span>
        <span
          v-if="!disabled"
          class="el-upload-list__item-delete"
          @click="handleRemove(file)"
        >
          <i class="el-icon-delete"></i>
        </span>
      </span>
    </div>
</el-upload>
<el-dialog :visible.sync="dialogVisible">
  <img width="100%" :src="dialogImageUrl" alt="">
</el-dialog>
 <div slot="footer" class="dialog-footer">
              <el-button @click="dialogFormVisible = false">取 消</el-button>
              <el-button type="primary" @click="handlerimage">提 交</el-button>
            </div>
</el-dialog>
       <el-dialog title="提示:" :visible.sync="dialogpPswVisible">
            <el-form :model="ruleForm" status-icon :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
            <el-form-item label="新密码" prop="pass">
              <el-input type="password" autocomplete="off" v-model="ruleForm.pass" placeholder="请输入内容"></el-input>
            </el-form-item>
            <el-form-item label="确认密码" prop="checkPass">
               <el-input type="password" autocomplete="off" v-model="ruleForm.checkPass" placeholder="请输入内容"></el-input>
            </el-form-item>
             <el-form-item>
            <el-button @click="resetForm('ruleForm')">重置</el-button>
            </el-form-item>
            </el-form>
            <div slot="footer" class="dialog-footer">
              <el-button @click="dialogpPswVisible = false">取 消</el-button>
              <el-button type="primary" @click="submitForm('ruleForm')">提 交</el-button>
            </div>
        </el-dialog>
         <el-dialog title="提示:" :visible.sync="dialogPhoneVisible">
            <el-form :model="newphone"  label-width="100px" class="demo-ruleForm">
            <el-form-item label="手机号码" prop="">
              <el-input v-model="newphone.phone" placeholder="请输入您想要绑定的手机号码"></el-input>
            </el-form-item>
            </el-form>
            <div slot="footer" class="dialog-footer">
              <el-button @click="dialogPhoneVisible = false">取 消</el-button>
              <el-button type="primary" @click="submitNewPhone">提 交</el-button>
            </div>
        </el-dialog>
    </div>
</template>
<script>
import { mapActions, mapState } from 'vuex';
export default {
    data(){
       var validatePass = (rule, value, callback) => {
        if (value === '') {
          callback(new Error('请输入新密码'));
        } else {
          if (this.ruleForm.checkPass !== '') {
            this.$refs.ruleForm.validateField('checkPass');
          }
          callback();
        }
      };
      var validatePass2 = (rule, value, callback) => {
        if (value === '') {
          callback(new Error('请再次输入新密码'));
        } else if (value !== this.ruleForm.pass) {
          callback(new Error('两次输入密码不一致!'));
        } else {
          callback();
        }
      };
        return {
              dialogpPswVisible:false,
              dialogPhoneVisible:false,
              dialogFormVisible: false,
              //下面两个是关于图片预览的属性
              dialogImageUrl: '',
              dialogVisible: false,
              //关于禁用input组件的属性，密码，手机号 2.
              disabled: false,
              //未使用
              fileList: [],
              file:"",
              newphone:{
                phone:"",
              },
              //关于做表单验证的对象，用户新密码
               ruleForm: {
                   pass: '',
                   checkPass: '',
                },
               rules: {
                  pass: [
                    { validator: validatePass, trigger: 'blur' }
                   ],
                  checkPass: [
                    { validator: validatePass2, trigger: 'blur' }
                   ]
                },
            // circleUrl: "https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png",
            userMess:{
                id:"",
                name:"",
                email:"",
                phone:"",
                password:"",
                mibo_phone:"",
                standby_email:"",
                role_name:"",
                avatarurl:"",
            },
            userFile:{
                file:""
            }
            
        }
    },
    computed:{
        ...mapState('user',['userInfo'])
    },
    methods:{
        handleRemove(file) {
        console.log(file);
      },
      handlePictureCardPreview(file) {
        this.dialogImageUrl = file.url;
        this.dialogVisible = true;
      },
      handleDownload(file) {
        console.log(file);
      },
        ...mapActions('userset',["UpdateUserInfo"]),
    //     handleBeforeUp(file, fileList) {
    //         //console.log(file, fileList);
    //         console.log("123");
    //         const formData = new FormData();
    //         formData.append('file', file);
    //         this.userMess.file=formData;
    //     },
       //点击更换头像触发的方法
        change(){
            this.dialogFormVisible=true
        },
        hello(file,fileList){
        console.log("得到文件对象");
        console.log(file);
        this.file=file.raw;
        },
        //更换头像时，点击提交之后触发的方法
        handlerimage(){
        this.dialogFormVisible = false;
        this.userFile.file=this.file;
        this.file="";
        console.log(this.userFile.file,"file信息");
        },
        //提交新密码方法
        submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            console.log(this.ruleForm.pass,"新密码");
            this.userInfo.password=this.ruleForm.pass;
            this.userMess.password=this.ruleForm.pass;
            this.ruleForm.pass="";
            this.ruleForm.checkPass="";
            alert('新密码更改成功!');
          } else {
            console.log('对不起，提交失败!');
            return false;
          }
        });
      },
      //重置表单方法
      resetForm(formName) {
        this.$refs[formName].resetFields();
      },
      //提交新号码方法
      submitNewPhone(){
        this.dialogPhoneVisible=false;
        console.log(this.newphone.phone,"新号码");
        this.userInfo.phone=this.newphone.phone;
        this.userMess.phone=this.newphone.phone;
        this.newphone.phone="";
        console.log(this.userMess.phone);
      },
      handleSubmit(){
            this.userMess.role_name=this.userInfo.role_name;
            this.userMess.id=this.userInfo.id;
            this.userMess.name=this.userInfo.name;
            this.userMess.email=this.userInfo.email;
            this.userMess.mibo_phone=this.userInfo.mibo_phone;
            this.userMess.standby_email=this.userInfo.standby_email;

            this.userMess.phone=this.userInfo.phone;
            this.userMess.password=this.userInfo.password;
            //第一种情况，未重新提交头像，将原来的地址赋给userMess.avatarul来保证数据库数据不置空。
            //第二种情况，重新提交头像以后点击提交后，将原来的地址赋给userMess，然后后台进行setURL。
            this.userMess.avatarurl=this.userInfo.avatarurl;
            console.log(this.userMess,"最新的用户信息");
            this.UpdateUserInfo({userMess:this.userMess,file:this.userFile.file});
      },
    }
}
</script>
<style scoped>
#userset{
    display: flex;
    justify-content: space-around
}
.setinput{
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    width: 50%;
    min-height: 600px;
    
}
.usericon{
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    width: 50%;
    min-height: 600px;
}
</style>