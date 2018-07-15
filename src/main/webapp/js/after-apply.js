 /*服务类型*/
  $(document).ready(function(){
    $('#returngoods').click(function(){
      $('#return-style').show();
      $('#after-apply-return').show();
      $('#after-apply-exchange').hide();
      $('#after-apply-maintain').hide();
      $('#after-apply-default').show();
      $('#customerExpect').removeClass("afterapply-list-type");
      $('#returngoods').attr("style","border:2px solid #e4393c;padding: 5px 27px;text-decoration: none;display: block;text-align: center;height: 18px;line-height: 18px;color: #666;float: left;margin-left:-30px;margin-right:44px;");
      $('#exchangegoods').attr("style","border:2px solid #ebebeb;padding: 5px 27px;text-decoration: none;display: block;text-align: center;height: 18px;line-height: 18px;color: #666;float: left;margin-left:-30px;margin-right:44px;");
      $('#maintaingoods').attr("style","border:2px solid #ebebeb;padding: 5px 27px;text-decoration: none;display: block;text-align: center;height: 18px;line-height: 18px;color: #666;float: left;margin-left:-30px;margin-right:44px;");
      $("#mainarea[name='mainarea']").attr("style","height:420px;");

    });
  });
  $(document).ready(function(){
    $('#exchangegoods').click(function(){
      $('#return-style').hide();
      $('#after-apply-return').hide();
      $('#after-apply-exchange').show();
      $('#after-apply-maintain').hide();
      $('#after-apply-default').show();
      $('#customerExpect').removeClass("afterapply-list-type");
      $('#exchangegoods').attr("style","border:2px solid #e4393c;padding: 5px 27px;text-decoration: none;display: block;text-align: center;height: 18px;line-height: 18px;color: #666;float: left;margin-left:-30px;margin-right:44px;");
      $('#returngoods').attr("style","border:2px solid #ebebeb;padding: 5px 27px;text-decoration: none;display: block;text-align: center;height: 18px;line-height: 18px;color: #666;float: left;margin-left:-30px;margin-right:44px;");
      $('#maintaingoods').attr("style","border:2px solid #ebebeb;padding: 5px 27px;text-decoration: none;display: block;text-align: center;height: 18px;line-height: 18px;color: #666;float: left;margin-left:-30px;margin-right:44px;");
      $("#mainarea[name='mainarea']").attr("style","height:320px;");
    });
  });
  $(document).ready(function(){
    $('#maintaingoods').click(function(){
      $('#return-style').hide();
      $('#after-apply-return').hide();
      $('#after-apply-exchange').hide();
      $('#after-apply-maintain').show();
      $('#after-apply-default').show();
      $('#customerExpect').removeClass("afterapply-list-type");
      $('#maintaingoods').attr("style","border:2px solid #e4393c;padding: 5px 27px;text-decoration: none;display: block;text-align: center;height: 18px;line-height: 18px;color: #666;float: left;margin-left:-30px;margin-right:44px;");
      $('#exchangegoods').attr("style","border:2px solid #ebebeb;padding: 5px 27px;text-decoration: none;display: block;text-align: center;height: 18px;line-height: 18px;color: #666;float: left;margin-left:-30px;margin-right:44px;");
      $('#returngoods').attr("style","border:2px solid #ebebeb;padding: 5px 27px;text-decoration: none;display: block;text-align: center;height: 18px;line-height: 18px;color: #666;float: left;margin-left:-30px;margin-right:44px;");
      $("#mainarea[name='mainarea']").attr("style","height:350px;");
    });
  });

  /*申请原因*/
function applyremindreturn() {
        var selectValue = $("select[name='applyreason']").val();
        if(selectValue == 0){
            $("#applyreturn-applydescribe1").hide();
            $("#applyreturn-applydescribe2").hide();
            $("#applyreturn-applydescribe3").hide();
            $("#applyreturn-applydescribe4").hide();
            $("#applyreturn-applydescribe5").hide();
            $("#applyreturn-applydescribe6").hide();
        }
        if(selectValue == 1){
            $("#applyreturn-applydescribe1").show();
            $("#applyreturn-applydescribe2").hide();
            $("#applyreturn-applydescribe3").hide();
            $("#applyreturn-applydescribe4").hide();
            $("#applyreturn-applydescribe5").hide();
            $("#applyreturn-applydescribe6").hide();
        }
        if(selectValue == 2){
            $("#applyreturn-applydescribe2").show();
            $("#applyreturn-applydescribe1").hide();
            $("#applyreturn-applydescribe3").hide();
            $("#applyreturn-applydescribe4").hide();
            $("#applyreturn-applydescribe5").hide();
            $("#applyreturn-applydescribe6").hide();
        }
        if(selectValue == 3){
            $("#applyreturn-applydescribe3").show();
            $("#applyreturn-applydescribe2").hide();
            $("#applyreturn-applydescribe1").hide();
            $("#applyreturn-applydescribe4").hide();
            $("#applyreturn-applydescribe5").hide();
            $("#applyreturn-applydescribe6").hide();
        }
        if(selectValue == 4){
            $("#applyreturn-applydescribe4").show();
            $("#applyreturn-applydescribe2").hide();
            $("#applyreturn-applydescribe3").hide();
            $("#applyreturn-applydescribe1").hide();
            $("#applyreturn-applydescribe5").hide();
            $("#applyreturn-applydescribe6").hide();
        }
        if(selectValue == 5){
            $("#applyreturn-applydescribe5").show();
            $("#applyreturn-applydescribe2").hide();
            $("#applyreturn-applydescribe3").hide();
            $("#applyreturn-applydescribe4").hide();
            $("#applyreturn-applydescribe1").hide();
            $("#applyreturn-applydescribe6").hide();
        }
        if(selectValue == 6){
            $("#applyreturn-applydescribe6").show();
            $("#applyreturn-applydescribe1").hide();
            $("#applyreturn-applydescribe3").hide();
            $("#applyreturn-applydescribe4").hide();
            $("#applyreturn-applydescribe5").hide();
            $("#applyreturn-applydescribe1").hide();
        } 
}

function applyremindexchange() {
        var selectValue = $("select[name='applyreason2']").val();
        if(selectValue == 0){
            $("#applyexchange-applydescribe1").hide();
            $("#applyexchange-applydescribe2").hide();
            $("#applyexchange-applydescribe3").hide();
            $("#applyexchange-applydescribe4").hide();
            $("#applyexchange-applydescribe5").hide();
        }
        if(selectValue == 1){
            $("#applyexchange-applydescribe1").show();
            $("#applyexchange-applydescribe2").hide();
            $("#applyexchange-applydescribe3").hide();
            $("#applyexchange-applydescribe4").hide();
            $("#applyexchange-applydescribe5").hide();
        }
        if(selectValue == 2){
            $("#applyexchange-applydescribe1").hide();
            $("#applyexchange-applydescribe2").show();
            $("#applyexchange-applydescribe3").hide();
            $("#applyexchange-applydescribe4").hide();
            $("#applyexchange-applydescribe5").hide();
        }
        if(selectValue == 3){
            $("#applyexchange-applydescribe1").hide();
            $("#applyexchange-applydescribe2").hide();
            $("#applyexchange-applydescribe3").show();
            $("#applyexchange-applydescribe4").hide();
            $("#applyexchange-applydescribe5").hide();
        }
        if(selectValue == 4){
            $("#applyexchange-applydescribe1").hide();
            $("#applyexchange-applydescribe2").hide();
            $("#applyexchange-applydescribe3").hide();
            $("#applyexchange-applydescribe4").show();
            $("#applyexchange-applydescribe5").hide();
        }
        if(selectValue == 5){
            $("#applyexchange-applydescribe1").hide();
            $("#applyexchange-applydescribe2").hide();
            $("#applyexchange-applydescribe3").hide();
            $("#applyexchange-applydescribe4").hide();
            $("#applyexchange-applydescribe5").show();
        } 
}

function applyremindmaintain() {
        var selectValue = $("select[name='applyreason3']").val();
        if(selectValue == 0){
            $("#applymaintain-applydescribe1").hide();
            $("#applymaintain-applydescribe2").hide();
        }
        if(selectValue == 1){
            $("#applymaintain-applydescribe1").show();
            $("#applymaintain-applydescribe2").hide();
        }
        if(selectValue == 2){
            $("#applymaintain-applydescribe2").show();
            $("#applymaintain-applydescribe1").hide();
        } 
}
